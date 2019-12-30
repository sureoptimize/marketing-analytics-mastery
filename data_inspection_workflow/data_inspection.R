# ***************************************************************************
# Approach to Inspecting Data 
#
# The following function can be used to inspect new data before analysis.
# This code accompanies the article, "A Workflow for Inspecting Data":
#
# https://marketinganalyticsmastery.com/a-workflow-for-inspecting-data/
#
# ***************************************************************************

library(car)
library(psych)

inspect_data <- function(data) {
  
  print("DATA INSPECTION WORKFLOW")
  cat("\n\n")
  print("STEP 1. Check data has expected number of rows and columns:")
  print("-------------------------------------------------------")
  print(dim(data))
  cat("\n\n")
  print("STEP 2. Check no header rows at top and blank rows at bottom:")
  print("-------------------------------------------------------")
  print(head(data))
  print(tail(data))
  cat("\n\n")
  print("STEP 3. Check random rows to spot-check data:")
  print("-------------------------------------------------------")
  print(car::some(data, 10))
  cat("\n\n")
  print("STEP 4. Check variable data types (especially factor type):")
  print("-------------------------------------------------------")
  print(str(data))
  cat("\n\n")
  print("STEP 5. Check for unexpected values (especially min and max):")
  print("-------------------------------------------------------")
  print(summary(data))
  cat("\n\n")
  print("STEP 6. Check observation counts, trimmed mean and skew:")
  print("-------------------------------------------------------")
  print(psych::describe(data))
  cat("\n\n")
}

# Test the function (the data passed must be a data frame)
inspect_data(cars)
