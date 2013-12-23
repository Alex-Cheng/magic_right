= Magic Right

Magic Right is a little tool that allows you to quickly 
update copyright headers. 


== Installation

  copy magic_right.rb to your local machine.
  
== Usage

you can call the tool from the console with default parameters like so

  ruby magic_right

this will update every writable ".cs" file in the working directory (recursively) with the following line :

  Copyright (C) <current year> by Autodesk, Inc. All Rights Reserved.

Notes : 
- existing copyright comments are replaced
- the rest of the file remains unchanged
  
== Acknowledge
This tool is inspired by [magic_encoding](https://github.com/m-ryan/magic_encoding)
