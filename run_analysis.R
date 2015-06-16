
## -----------------------------------Item 1 begin-----------------------------------------------
## 1. Merges the training and the test sets to create one data set

## Read train and test data set files (measures)
traindataset <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
testdataset <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)

## Read column labels from features.txt file
## The second column V2 has the names of variables
labels <- read.table("./UCI HAR Dataset/features.txt")

## Check if the number of columns(variables) is the same in both data sets
## before merging them
if (ncol(traindataset) == ncol(testdataset))
{
    mergedata <- rbind(traindataset, testdataset)
    ## Set column names to merged data set, according to names in V2 column of labels
    names(mergedata) <- labels$V2
} else
{
    stop("Could not merge: Number of variables does not match!")
}

## ************************************************************************************

## Read the subject who performed the activity for each row in data set (train/test)
## Numbers from 1 to 30 representing 30 volunteers
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)

## Check if the number of columns(variables) is the same in both subject sets
## before merging them
if (ncol(subject_train) == ncol(subject_test))
{
    mergesubjects <- rbind(subject_train, subject_test)
    names(mergesubjects) <- c("Subject")
} else
{
    stop("Could not merge: Number of variables does not match!")
}

## ************************************************************************************

## Read train and test activity numbers (1 to 6)
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)

## Check if the number of columns(variables) is the same in both activity sets
## before merging them
if (ncol(activity_train) == ncol(activity_test))
{
    mergeactivities <- rbind(activity_train, activity_test)
    names(mergeactivities) <- c("Activity")
} else
{
    stop("Could not merge: Number of variables does not match!")
}

## ************************************************************************************

## merge all the tables in dataset1 if the number of observations is the same
if (nrow(mergedata) == nrow(mergesubjects) && nrow(mergesubjects) == nrow(mergeactivities))
{
    dataset1 <- cbind(mergesubjects, mergeactivities, mergedata)
    View(dataset1)
} else
{
    stop("Could not merge: Number of observations does not match!")
}

## -----------------------------------Item 1 end-------------------------------------------------

## -----------------------------------Item 2 begin-----------------------------------------------
## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 

## Check which columns are measurements related to mean and standard deviation
## mean_std_columns returns a vector of TRUE or FALSE
## It´s TRUE, when the column name has the string "mean()" or "std(),
## otherwise, it´s FALSE
mean_std_columns <- grepl("-mean\\(\\)|-std\\(\\)", labels$V2)

## Extract the columns of merged data where the vector mean_std_columns is TRUE
mean_std_data <- mergedata[, which(mean_std_columns == TRUE)]

## Include subjects and activities variables
dataset2 <-  cbind(mergesubjects, mergeactivities, mean_std_data)

## Open window view showing table with only meansurements related to mean and standard 
## deviation, plust Subject and Activities columns
View(dataset2)

## -----------------------------------Item 2 end-------------------------------------------------

## -----------------------------------Item 3 begin-----------------------------------------------
## 3.Uses descriptive activity names to name the activities in the data set

## Read table with activity names and corresponding numbers
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)

## Change the column Activity of final merged data set to show activity names instead 
## of numbers
dataset2$Activity <- as.character(factor(dataset2$Activity, labels = activitylabels$V2))
dataset3 <- dataset2

## Open window view showing the column Activity with names, not numbers
View(dataset3)

## -----------------------------------Item 3 end-------------------------------------------------

## -----------------------------------Item 4 begin-----------------------------------------------
## 4.Appropriately labels the data set with descriptive variable names.

## Read all the column names of data set obtained in step 3
variablenames <- names(dataset3)

## Remove the characters "(" and ")"
## Replace the characters "-" and "," by "_"
removecharacters <- function(f)
{
    f <- gsub("\\(|\\)", "", f)
    f <- gsub("\\-|\\,", "_", f)
}

## Apply the characters changes in the vector variablenames
variablenames <- sapply(variablenames, removecharacters)
dataset4 <- dataset3

## Set the columns names according to variablenames
colnames(dataset4) <- variablenames

## Open window view showing the column names changed
View(dataset4)
## -----------------------------------Item 4 end-------------------------------------------------

## -----------------------------------Item 5 begin-----------------------------------------------
## 5.From the data set in step 4, creates a second, independent tidy data set with the average 
## of each variable for each activity and each subject.

## library used for melt function
library(reshape2)

## Melt the whole table in Subject, Activity, variable and value columns
meltdata <- melt(dataset4, id.vars=c("Subject", "Activity"))

## For the same pair Subject+Activity, calculate the mean of each measure
## Since there are 30 subjects and 6 activities, if all the subjects performed
## all activities at least once, the table would have 30x6 rows
dataset5 <- dcast(meltdata, Subject+Activity ~variable, mean)

## Open window view showing the final tidy data set
View(dataset5)

## write the tidy data set in a file
write.table(dataset5, "resultdataset.txt", sep=",", row.names=FALSE)

## -----------------------------------Item 5 end-------------------------------------------------
