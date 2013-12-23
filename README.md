# Magic Right

Magic Right is a little tool that allows you to quickly 
update copyright headers. 


## Installation

- [Download](https://www.ruby-lang.org/en/downloads/) Ruby installation and install it to your machine.
- Download magic_right.rb to your local machine.

  
## Usage

you can call the tool from the console with default parameters like so

```dos
  ruby /path/to/magic_right.rb
```

this will update every writable ".cs" file in the working directory (recursively) with the following line :

  Copyright (C) <current year> by Autodesk, Inc. All Rights Reserved.

Notes : 
- existing copyright comments are replaced
- the rest of the file remains unchanged

you can also specify the working directory in argument in command-line

```dos
  ruby /path/to/magic_right.rb <specified directory's path>
```
  
## Acknowledge
This tool is inspired by [magic_encoding](https://github.com/m-ryan/magic_encoding)
