#load libraries
library(tidyverse)

#load data files
train_x <- read_csv("ks_training_X.csv")
train_y <- read_csv("ks_training_y.csv")
test_x <- read_csv("ks_test_X.csv")


#join the training y to the training x file
#also turn two of the target variables into factors
train_success <- train_x %>%
  left_join(train_y, by = "id") %>%
  mutate(success = as.factor(success))

summary(train_success)

# EXAMPLE PREDICTIONS FOR Y = SUCCESS

#create a simple model to predict success and generate predictions in the test data
logistic_success <- glm(success~goal, data = train_success, family = "binomial")
probs_success <- predict(logistic_success, newdata = test_x, type = "response")

#make binary classifications (make sure to check for NAs!)
classifications_success <- ifelse(probs_success > .45, "YES", "NO")
classifications_success <- ifelse(is.na(classifications_success), "NO", classifications_success)
summary(classifications_success)


#output your predictions
#they must be in EXACTLY this format
#a .csv file with the naming convention success_groupAAA.csv, where you replace AAA with your group name
#in exactly the same order as they are in the test_x file

# Each row should be a binary YES (is successful) or NO (not successful)

#this code creates a sample output in the correct format
write.table(classifications_success, "success_group0.csv", row.names = FALSE)

# I have evaluated these predictions against the test set
# the success predictions have accuracy = 0.6045278

# You should be able to improve upon these without much effort!
