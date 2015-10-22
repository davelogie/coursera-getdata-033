## You should create one R script called run_analysis.R that does the following. 
##
## 1.   Merges the training and the test sets to create one data set.
## 2.   Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3.   Uses descriptive activity names to name the activities in the data set
## 4.   Appropriately labels the data set with descriptive variable names. 
##
## From the data set in step 4, creates a second, independent tidy data set with the average of each variable
## for each activity and each subject.
##
##
##
##
library(reshape2)
library(dplyr)

## Read each of the reference data files

## activity_labels - text description of y_test and y_train
activity_labels <- read.csv("activity_labels.txt",head=FALSE,sep=" ")

## features        - text description of 561 different measurements
features <- read.csv("features.txt",head=FALSE,sep=" ")

## Read each of the test data files

## subject_test    - which subject performed the activity (2947 observations)
subject_test <- read.csv("test/subject_test.txt",head=FALSE,sep=" ")

## x_test          - 561 different measurements for this activity
x_test <- read.csv("test/X_test.txt",head=FALSE,sep="")

## y_test          - how they performed the activity (2947 observations)
y_test <- read.csv("test/Y_test.txt",head=FALSE,sep="")

## Read each of the train data files

## subject_train    - which subject performed the activity (7352 observations)
subject_train <- read.csv("train/subject_train.txt",head=FALSE,sep=" ")

## x_train          - 561 different measurements for this activity
x_train <- read.csv("train/X_train.txt",head=FALSE,sep="")

## y_train          - how they performed the activity (7352 observations)
y_train <- read.csv("train/Y_train.txt",head=FALSE,sep="")


## 1. Merge the training and the test sets to create one data set

## 1(a) x data

x_all <- rbind(x_test,x_train)

## 4. Appropriately label the data set with descriptive variable names.
names(x_all) <- features$V2

## 1(b) y data
y_all <- rbind(y_test,y_train)

## 4. Appropriately label the data set with descriptive variable names.
names(y_all) <- "Activity"

## 1(c) subject data
subject_all <- rbind(subject_test,subject_train)

## 4. Appropriately label the data set with descriptive variable names.
names(subject_all) <- "Subject"

## 1(d) merge it all together
untidy_data <- data.frame()
untidy_data <- cbind(subject_all,y_all,x_all)

## Remove duplicate column names in preparation for step 2
for (i in 305:346) {
    names(untidy_data)[i] <- as.character(i)
}

for (i in 384:425) {
    names(untidy_data)[i] <- as.character(i)
}

for (i in 463:504) {
    names(untidy_data)[i] <- as.character(i)
}

## 3. Use descriptive activity names to name the activities in the data set

for (i in 1:nrow(untidy_data)) {
      untidy_data$ActivityText[i] <- as.character(activity_labels$V2[untidy_data$Activity[i]])
}

## 2. Extract only the measurements on the mean and standard deviation for each measurement.
selected_untidy_data <- select(untidy_data, Subject,Activity,ActivityText, contains("Mean()"), contains("Std()"))

## Create a second, independent tidy data set with the average of each variable for each activity and each subject
tidy_data <- melt(selected_untidy_data, id=c("Subject","Activity","ActivityText"))
summary_tidy_data <- summarise(group_by(tidy_data,Subject,ActivityText,variable),mean(value))
write.table(summary_tidy_data,file=summary_tidy_data.txt,row.name=FALSE)
## To read the file use > read.table("summary_tidy_data.txt",head=TRUE,sep=" ")