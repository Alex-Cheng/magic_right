# Magic Right

Magic Right is a little tool that allows you to quickly 
update copyright headers. 


## Installation

- [Download](https://www.ruby-lang.org/en/downloads/) Ruby installation and install it to your machine.
- Download magic_right.rb to your local machine.

  
## Usage

Start command-line window with Ruby. 

![ScreenShot](https://raw.github.com/Alex-Cheng/magic_right/master/snapshot.png)

You can call the tool from the command-line window with default parameters like so

```dos
  cd /path/to/your/working_directory
  ruby /path/to/magic_right.rb
```

This will update every writable ".cs" file in the working directory (recursively) with the following line :

  Copyright (C) #{Year} by Autodesk, Inc. All Rights Reserved.

Notes : 
- Existing copyright comments are replaced
- The rest of the file remains unchanged

You can also specify the working directory in argument in command-line

```dos
  ruby /path/to/magic_right.rb </path/to/your/working_directory>
```
  
## Acknowledge
This tool is inspired by [magic_encoding](https://github.com/m-ryan/magic_encoding)
