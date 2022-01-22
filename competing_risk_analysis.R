library(cmprsk)
setwd("folder_name") # Set it to the working folder. 
library(readxl)
CR <- read_excel("Compteting_risk_analysis.xlsx")  # File with the classification, status and eventtime.
attach(CR)

Gene1=factor(Gene1, levels=c(0,1), labels= c("Low", "High"))
table(Gene1, status)
tapply(eventtime, list(Gene1, status), mean)
source (file.choose())
fit=CumIncidence (eventtime, status, Gene1, cencode = 0, xlab="Months")
