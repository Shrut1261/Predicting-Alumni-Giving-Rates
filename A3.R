# Load necessary libraries
library(readxl)  
library(dplyr)   
library(ggplot2)  
library(lmtest)  

# Read the data set
your_dataset <- read_excel("C:/Users/pshru/OneDrive/Desktop/R/Mini Project 2 - AlumniGiving(1).xlsx")

#  Explore the data - Descriptive Statistics
str(your_dataset)
summary(your_dataset)

# Hypothesis for % of Classes Under 20
hypothesis_under20 <- "We hypothesize that as the % of Classes Under 20 increases, the Alumni Giving Rate will decrease."

# Hypothesis for Student-Faculty Ratio
hypothesis_ratio <- "We hypothesize that as the Student-Faculty Ratio increases, the Alumni Giving Rate will decrease."

# Directional Hypothesis

# Create a linear regression model
model <- lm(`Alumni Giving Rate` ~ `Graduation Rate`, data = your_dataset)

# Print the summary of the model
summary(model)

# Create a multiple linear regression model
multiple_model <- lm(`Alumni Giving Rate` ~ `Graduation Rate` + `% of Classes Under 20` + `Student-Faculty Ratio`, data = your_dataset)

# Print the summary of the model
summary(multiple_model)

# Assuming 'multiple_model' is your multiple linear regression model
# Predict Alumni Giving Rate using the model
predicted_alumni_giving <- predict(multiple_model, your_dataset)

# Create a new data frame with University names and predicted alumni giving rates
predicted_data <- data.frame(University = your_dataset$University, Predicted_Alumni_Giving = predicted_alumni_giving)

# Combine predicted and observed alumni giving rates
comparison_data <- cbind(your_dataset, predicted_data)

# Calculate residuals
comparison_data$Residuals <- comparison_data$`Alumni Giving Rate` - comparison_data$Predicted_Alumni_Giving

# Identify universities with higher-than-expected alumni giving rates
high_giving_universities <- comparison_data[comparison_data$Residuals > 0, ]

# Print the results
print(high_giving_universities[, c("University", "Residuals")])