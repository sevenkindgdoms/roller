# Answer the following questions. Sex can either be 'Male or Female' and 
# nationality can either be 'Westerosi' or 'Dornish'. This should be the
# extent of coding necessary to achieve the desired results.

name <- 'Leyton II Hightower'
sex <- 'Male'
nationality <- 'Westerosi'

# ==============================================================================

# load the data
table <- read.csv(file = "traits.csv", stringsAsFactors = FALSE)

good_traits <- table$positive
neutral_traits <- table$neutral
negative_traits <- table$negative

# roll the information
good <- sample(1:234, 1)
neutral <- sample(1:112, 1)
negative <- sample (1:292, 1)
attractiveness <- sum(sample(1:6,3,replace=TRUE))
sexuality <- sum(sample(1:6,3,replace=TRUE))
strength <- sum(sample(1:6,3,replace=TRUE))

# reassign the roll information with text
good <- good_traits[good]
neutral <- neutral_traits[neutral]
negative <- negative_traits[negative]
attractiveness <- switch(attractiveness, NA, NA, 'Grotesque','Hideous','Hideous','Ugly', 'Ugly','Homely', 'Plain','Plain','Plain', 'Plain','Pretty','Comely', 'Comely','Gorgeous','Gorgeous', 'Stunning')
if (sex == 'Male') {
  strength <- switch(strength, NA, NA, 'Pathetic','Frail','Frail','Scrawny', 'Scrawny','Weak', 'Average','Average','Average', 'Average','Muscular','Strong', 'Strong','Powerful','Powerful', 'Monstrous')
} else {
  strength <- switch(strength, NA, NA, 'Pathetic', 'Pathetic','Frail','Frail','Scrawny', 'Weak','Weak', 'Average','Average','Average', 'Average','Muscular','Muscular', 'Strong','Strong','Powerful')
}
if (nationality == 'Westerosi') {
  sexuality <- switch(sexuality, NA, NA, 'Gay', 'Gay', 'Bisexual', 'Straight', 'Straight', 'Straight', 'Straight', 'Straight', 'Straight', 'Straight', 'Straight', 'Straight', 'Straight','Bisexual', 'Gay', 'Gay')
} else {
  sexuality <- switch(sexuality, NA, NA, 'Gay', 'Gay', 'Bisexual', 'Bisexual', 'Straight', 'Straight', 'Straight', 'Straight', 'Straight', 'Straight', 'Straight', 'Straight', 'Bisexual','Bisexual', 'Gay', 'Gay')
}

# now run the following to know what everything is!

cat('Name:', name, '\n', 
    'Sex:', sex, '\n',
    'Nationality:', nationality, '\n', 
    'Attractiveness:', attractiveness, '\n',
    'Sexuality:', sexuality, '\n', 
    'Strength:', strength, '\n', 
    'Characteristic (+):', good, '\n', 
    'Characteristic (n):', neutral, '\n', 
    'Characteristic (-):', negative, '\n')