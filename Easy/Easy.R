library(imputeTestbench)
data <- nottem
# nottem <- monthly air temperatures at Nottingham
results <- impute_errors(dataIn = data,
                         methods = c("na.locf"),
                         missPercentFrom = 10,
                         missPercentTo = 30,
                         interval = 10,
                         repetition = 1)
print(results)
