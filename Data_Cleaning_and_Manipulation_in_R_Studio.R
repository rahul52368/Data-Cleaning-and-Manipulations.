install.package(“MASS”, dependencies = T, repos = ‘https://cran.r-project.org/index.html’ )
library(‘MASS’) 


	data(survey)
	View(survey)

	Is.na(data$column name)        # It will return you “T” at all places where it finds an NA value and “F” where it will find non “NA”.

	Data[Column name==""] <- NA    # It will change all blank values to “NA” and then we can easily remove “NAs”. 

	sum(is.na(data$column name)#) or 
	table(is,na(data$column name)#),

	colsums(is.na(data))  # It will give you the count of all missing values in each columns.         
        
	na.omit(data)) # or,
	data[complete.cases(data), ] # it will keep only those rows that have no missing values.


	hist(data$column_name)

	Summary(data) # it will give us all the details(statistical) about your dataset.
        
	Data[column name == “”] -> mean
	Data[column name == “”] -> median
	Data[column name == “”] -> mode


	Boxplot(data[column name])

	Boxplot(survey$ Wr.Hnd)

####User defined function:
	rm.outliers <- function(data, na.rm = TRUE, ...) {
  qnt <- quantile(data, probs=c(.25, .75), na.rm = na.rm, ...)
  value <- 1.5 * IQR(data, na.rm = na.rm)
  data2 <- data
  data2[data < (qnt[1] - value)] <- NA
  data2[data > (qnt[2] + value)] <- NA
  data2
}

install.packages('outliers') #outliers package for ouyliers
library(outliers)# Activation of package

	x11(height = 40, width = 40)# will pop up a new window where graph will appear,
	par(mfrow = c(3,2))# Matrix to represent graph’s order,
	boxplot(survey$Wr.Hnd)
	boxplot(survey$NW.Hnd)
	boxplot(survey$Pulse)
	boxplot(survey$Height)
	boxplot(survey$Age)# five boxplots, as shown in picture below

##Let’s apply our above function to replace outliers,
	rm.outliers(survey$Wr.Hnd)
	rm.outliers (survey$NW.Hnd)
	rm.outliers (survey$Pulse)
	rm.outliers (survey$Height)
	rm.outliers (survey$Age)










        












