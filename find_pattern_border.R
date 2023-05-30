
find_patern_border <- function(sentence, pattern, n=10){
  # Find start/end position of the pattern in sentence
  pos=data.frame(stri_locate_all(pattern=pattern, sentence, fixed=TRUE))
  # Create empty list to store results
  list_combination = c()
  # Left loop
  for(i_left_border in c(1:n)){
    # Right loop
    for(j_right_border in c(1:n)){
      new_combination = substr(sentence, pos$start-i_left_border, pos$end+j_right_border)
      # Add new combination to the pool of combination
      list_combination = c(list_combination, new_combination)
    }
  }
  return(list_combination)
}

# TEST
sentence = "dkqsjfkljdjkdljkdkljJFKLJSKLDJAIAT4G36540OPJKDKDdazidjiozjdklqsjdjdioqjdzklcJIOZJIOJAIODJIOZJPKJZ"
pattern = "AT4G36540"
list_combination = find_patern_border(sentence, pattern, n=5)

