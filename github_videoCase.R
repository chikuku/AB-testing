# change to your directiory
#setwd('your/path/')
#install.packages("readxl")

library(readxl)
# load the data from 3 sheets
df_randomCk <- read_excel("Data(2).xlsx", sheet="Random Check")
df_corProduct <- read_excel("Data(2).xlsx", sheet="CP Analysis data")
df_focProduct <- read_excel("Data(2).xlsx", sheet="FP Analysis data")

# Part 1: Check the Randomization of control & treatment group using a t-test
control_price <- df_randomCk$ProdPrice[df_randomCk$Vid == 0]
treatment_price <- df_randomCk$ProdPrice[df_randomCk$Vid == 1]
t_test <- t.test(control_price,treatment_price)
print(t_test)