#5.1

#1 Question

install.packages("stringr") # installing stringr package as we are using stringr

library(stringr) # loading the package stringr


str_count(tolower("USA States"),pattern = "[aeiou]") # string has been converted to lower case and  counts with patten vowels [aeiou]


# 2 Question 

# vector of vowels
vowels = c("a", "e", "i", "o", "u")

# vector for storing results
num_vowels = vector(mode = "integer", length = 5)

# calculate number of vowels in string
for (j in seq_along(vowels)) {
  num_aux = str_count(tolower("USA States"), vowels[j])
  num_vowels[j] = sum(num_aux)
}

# add vowel names
names(num_vowels) = vowels

# total number of vowels
num_vowels

#visualize the distribution with a barplot:
barplot(num_vowels, main = "Number of vowels in USA States String",
        border = NA, ylim = c(0, 10))
