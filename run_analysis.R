## The purpose of script is to create tidy dataset from 'UCI HAR Dataset' downloaded 
## from the link below.
##   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##
## Extract the ZIP file to ./data inside th getwd() directory.
##
## This script expects data files to be availabel under './data/UCI HAR Dataset' directory.



# Location of all files used for tiday dataset
# =======================================

# training dataset
trainDataFile <- "./data/UCI HAR Dataset/train/X_train.txt"
trainLabelFile <- "./data/UCI HAR Dataset/train/y_train.txt"
trainSubjectFile <- "./data/UCI HAR Dataset/train/subject_train.txt"

# test dataset
testDataFile <- "./data/UCI HAR Dataset/test/X_test.txt"
testLabelFile <- "./data/UCI HAR Dataset/test/y_test.txt"
testSubjectFile <- "./data/UCI HAR Dataset/test/subject_test.txt"

# global files 
featuresFile <- "./data/UCI HAR Dataset/features.txt"
activityFile <- "./data/UCI HAR Dataset/activity_labels.txt"
# =======================================


# load training dataset and descriptions
trainData <- read.table(trainDataFile, colClasses=rep("numeric", 561))
trainLabel <- read.table(trainLabelFile)
trainSubjData <- read.table(trainSubjectFile)

# load test dataset and descriptions
testData <- read.table(testDataFile, colClasses=rep("numeric", 561))
testLabel <- read.table(testLabelFile)
testSubjData <- read.table(testSubjectFile)


# load features and activity description 
features <- read.table(featuresFile)
activity <- read.table(activityFile)


# name all variables
names(trainData) <- as.character(features$V2)
names(testData) <- as.character(features$V2)

#join subject and activity columns to training and test dataset
trainData <- cbind(Subject=trainSubjData$V1, Activity=trainLabel$V1, trainData)
testData <- cbind(Subject=testSubjData$V1, Activity=testLabel$V1, testData)

# merge both datasets together
merged_data <- rbind(trainData, testData)

# subset and remove all column except mean(), std(), subject and activity columns
merged_data <- merged_data[,grep("(mean|std)\\(\\)|Subject|Activity", names(merged_data))]

# Replace activity id with descriptive activity name such as WALKING, SITTING 
merged_data$Activity <- activity[merged_data$Activity, c(2)]

# tidy up variable names
names(merged_data) <- gsub("\\(\\)", "", names(merged_data))
names(merged_data) <- gsub("mean", "Mean", names(merged_data))
names(merged_data) <- gsub("std", "Std", names(merged_data))

# write 1st dataset to disk
#write.table(merged_data, "merged_data.txt", row.name=FALSE) 


# Create a second, independent tidy data set with the average 
# of each variable for each activity and each subject.
# ======================================================
library(plyr)

merged_means <- ddply(merged_data, 
                      .(Subject, Activity),  
                      function(dat, exclude=c(1,2)) colMeans(dat[,-exclude])
                      )

names(merged_means)[-c(1,2)] <- paste0("Mean", names(merged_means)[-c(1,2)])
names(merged_means)[-c(1,2)] <- gsub("Meant", "MeanT", names(merged_means)[-c(1,2)])
names(merged_means)[-c(1,2)] <- gsub("Meanf", "MeanF", names(merged_means)[-c(1,2)])

# Write file
write.table(merged_means, "merged_means.txt", row.names = FALSE)

# ======================================================
