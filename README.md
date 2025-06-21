# slidingpuzzle
Sliding Puzzle code for Commodore 64

15 Puzzle; sliding puzzle.

"The 15 puzzle (also called Gem Puzzle, Boss Puzzle, Game of Fifteen, Mystic Square and more) is a sliding puzzle. It has 15 square tiles numbered 1 to 15 in a frame that is 4 tile positions high and 4 tile positions wide, with one unoccupied position. Tiles in the same row or column of the open position can be moved by sliding them horizontally or vertically, respectively. The goal of the puzzle is to place the tiles in numerical order (from left to right, top to bottom).
https://en.wikipedia.org/wiki/15_puzzle

I think most of us had this game in a piece of cheap plastic back in the days. You could take out the pieces with a little violence, but putting them back must be in the correct order, or you risk the puzzle will be impossible! :)


You cannot just randomize the numbers at will, since
"half of the starting positions for the puzzle are impossible to resolve, no matter how many moves are made."


I wonder; if "half" the puzzles are possible, then using random starting numbers, what kind of algorithm could reject impossible puzzles faster than going thru the entire thing to find a solution, or not?

Seems there is:
https://www.cs.princeton.edu/courses/archive/spring21/cos226/assignments/8puzzle/specification.php

Goal, to make code to solve any puzzle, of any size.

Files:
 slizepuzzle_game.bas 
 contains a interactive version. Use the keys 1-F to move pieces into position.

more files to come...
