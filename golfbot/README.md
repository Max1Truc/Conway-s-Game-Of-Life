# Conway's Life in 241 characters of ruby.

## Description

The file `main.rb` processes a grid in JSON from stdin and sends the result to stdout.

There are some bonus files:
  - `gen.rb`: A ruby script which prints a grid in JSON format in stdout
  - `example.grid`: An example grid saved in a file
  - `render.rb`: A ruby script which reads the grid in JSON format from stdin ands draws a beautiful grid in stdout
  - `start.sh`: An example starter script to automatically generate a grid , process it and draw it.

## Usage

To use it as in the challenge rules: `cat example.grid | ruby main.rb`
To beautifully run it: `./start.sh`
