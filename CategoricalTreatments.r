

one_hot_encode = function(outcome, vars, df){
# Load the package vtreat
library(vtreat)
library(magrittr)

# Create the treatment plan
treatplan <- designTreatmentsZ(df, vars, verbose = FALSE)
# Prepare the training data
temp.treat <- prepare(treatplan, df) 
# join  treatment dat with  original data
temp.clean <- cbind(df[,!(names(df) %in% vars)], temp.treat)
temp.clean
}

label_encode = function(vars){
as.factor(vars)
}

label_encode_xgboost = function(vars){
as.numeric(vars)
}
