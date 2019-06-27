#!/bin/bash

grid=$(ruby gen.rb)

while :
do
  echo $grid | ruby render.rb
  grid=$(echo $grid | ruby main.rb)
done
