#!/usr/bin/env ruby

#
# Conway's Game Of Life
# Ruby implementation of the Conway's Game Of Life by Max1Truc
# License: MIT
# See: https://github.com/Max1Truc/Conway-s-Game-Of-Life
#

# Mainloop
def main
  gen = first_generation
  loop {
    # Render generation
    render gen

    # Next generation
    gen = next_generation gen

    sleep 0.1
  }
end

# Generate first generation
def first_generation
  Array.new(30).map do
    Array.new(30).map do
      rand(10)==1?1:0
    end
  end
end

def render gen
  system "clear"
  puts "\u2554"+"\u2550"*gen.length*2+"\u2557"
  gen.each do |line|
    print "\u2551"
    line.each do |cell|
      print cell==1?"\u2588"*2:"  "
    end
    puts "\u2551"
  end
  puts "\u255A"+"\u2550"*gen.length*2+"\u255D"
end

def next_generation gen
  # For each cell
  gen.map.with_index do |v, i|
    gen[i].map.with_index do |v, j|
      # Check if it should be alive or not
      alivecellsaround = 0
      for x in -1..1
        for y in -1..1
          if !(x==0 && y==0)
            alivecellsaround += 1 if i+x >= 0 && j+y >= 0 && (gen[i+x] || [])[j+y] == 1
          end
        end
      end

      alivecellsaround == 3 || (v == 1 && alivecellsaround == 2)? 1 : 0
    end
  end
end

if __FILE__ == $0
  main
end
