# Find_Pattern_Border
A little algorithm to find a pattern in a sentence and return every neighbor of the founded pattern from 1 to n

## ARGS : 
sentence : A string of unlimited size where the user want to search a pattern
pattern : A string of unlimited size (<sentence) which the user want to search in sentence
n : A size for the maximal authorized margin to catch around the pattern.

## How it work
1) Detection of pattern position in sentence
2) Right and Left loop from 1 to n
3) If pattern + margin exist, save it to results
4) return results as a list
