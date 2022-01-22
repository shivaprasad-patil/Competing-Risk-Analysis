library(cmprsk)
setwd("folder_name") # Set it to the working folder. 
library(readxl)
Competing_Risk <- read_excel("Compteting_risk_analysis.xlsx")  # File with the classification, status and eventtime.
attach(Competing_Risk)

Risk_group=factor(Risk_group, levels=c(0,1), labels= c("Low", "High"))
table(Risk_group, status)
tapply(eventtime, list(Risk_group, status), mean)
source (file.choose())
fit=CumIncidence (eventtime, status, Risk_group, cencode = 0, xlab="Months")
