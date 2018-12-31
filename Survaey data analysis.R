getwd()
install.packages('MASS')
library('MASS')
View(survey)
df = survey
write.csv(df,'rahul.csv')
getwd()
survey$Sex[is.na(survey$Sex)] <- "Female" 
summary(survey$Sex)
is.na(survey$Sex)
View(survey)
summary(survey)
colSums(is.na(survey))
?med
med(survey$Wr.Hnd)

survey$Wr.Hnd[is.na(survey$Wr.Hnd)] <- med 
summary(survey$Wr.Hnd)
install.packages('stats')
?stats
library('stats')
?med
library("MASS")

# Plot of data with outliers.
par(mfrow=c(3, 2))





