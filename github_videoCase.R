# change to your directiory
#setwd('your/path/')
#install.packages("readxl")

library(readxl)
# load the data from 3 sheets
df_randomCk <- read_excel("Data_clean.xlsx", sheet="Random Check")
df_corProduct <- read_excel("Data_clean.xlsx", sheet="CP Analysis data")
df_focProduct <- read_excel("Data_clean.xlsx", sheet="FP Analysis data")

#### Part 1: Check the Randomization of control & treatment group using a t-test ####
control_price <- df_randomCk$ProdPrice[df_randomCk$Vid == 0]
treatment_price <- df_randomCk$ProdPrice[df_randomCk$Vid == 1]
t_test <- t.test(control_price,treatment_price)
print(t_test)

#### Part 2: Videos adding value Causal Impact Evaluation ####
# Also, we can comapre videos with other promotion results in the summary
# 2-1 For focal products
# Exclude PostVidWk because VidWk, PreVidWk, and PostVidWk variables are mutually 
# exclusive dummy variables
model_fp <- lm(Sales ~ Vid + VidWk + PreVidWk+
                 ProdCat+ ProdPrice + PriceDiscWk + 
                 EmailWk + CatalogWk + HomePgWk + CatPgWk, data = df_focProduct)
summary(model_fp)
# 2-2 For coordinating products
# Exclude PostVidWk because VidWk, PreVidWk, and PostVidWk variables are mutually 
# exclusive dummy variables
model_cor <- lm(CpSales ~ VidWk + PreVidWk+
                  FpPriceDiscWk +	FpEmailWk +	FpCatalogWk	+
                  FpHomePgWk	+ FpCatPgWk +	CpPriceDiscWk +	
                  CpEmailWk +	CpCatalogWk	+ CpHomePgWk	+
                  CpCatPgWk, data = df_corProduct)
summary(model_cor)

#### Part 3: Evaluating the Impact of Video and Integrated Marketing Strategies####
# 3-1 For focal products
# Exclude PostVidWk, PreVidWk because VidWk, PreVidWk, and PostVidWk variables are mutually 
# exclusive dummy variables
model_fp <- lm(Sales ~ VidWk *(
                 ProdCat+ ProdPrice + PriceDiscWk + 
                 EmailWk + CatalogWk + HomePgWk + CatPgWk), data = df_focProduct)
summary(model_fp)
# 3-2 For coordinating products
# Exclude PostVidWk because VidWk, PreVidWk, and PostVidWk variables are mutually 
# exclusive dummy variables
model_cor <- lm(CpSales ~ VidWk *(PreVidWk+
                  FpPriceDiscWk +	FpEmailWk +	FpCatalogWk	+
                  FpHomePgWk	+ FpCatPgWk +	CpPriceDiscWk +	
                  CpEmailWk +	CpCatalogWk	+ CpHomePgWk	+
                  CpCatPgWk), data = df_corProduct)
summary(model_cor)

