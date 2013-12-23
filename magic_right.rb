# -*- encoding : utf-8 -*-

# A simple tool for updating source header. The code is derived from magic_encoding<https://github.com/m-ryan/magic_encoding>

module MagicRight

  # Options :
  # 1 : Path
  def self.process(options = [])

    # defaults
    directory = (options[0] || Dir.pwd).gsub(/\\/, '/')

    copyright = " * Copyright (C) #{Time.now.year} by Autodesk, Inc. All Rights Reserved."

	extensions = {
        'cs' => '{text}',
	}

    scanCount = 0
	updateCount = 0
    updated_src = []
	extensions.each do |ext, comment_style|
        rbfiles = File.join(directory ,'**', '*.'+ext)
        Dir.glob(rbfiles).each do |filename|
            scanCount += 1
            if File.writable?(filename)
                content = File.read(filename)

                # only replace the first occurance.
                updated = content.gsub(/^\s*\*\s*Copyright \(C\)\s*[\d-]+.+All Rights Reserved\./, copyright)
                if updated != content
                    File.open(filename, 'w') do |out|
                        updateCount += 1                    
                        updated_src << filename
                        out << updated
                    end
                end
            end
        end
	end

    if updateCount > 0
        puts "Scaned #{scanCount} source files. Magic coptyright set for #{updateCount} source files. Details are listed as following:"
        puts updated_src
    else
        puts "Scaned #{scanCount} source files. No files need update."
    end
  end

end

MagicRight.process ARGV