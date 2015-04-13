
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# 
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Location of all files used for this excercise

# training dataset
trainDataFile <- "./data/UCI HAR Dataset/train/X_train.txt"
trainLabelFile <- "./data/UCI HAR Dataset/train/y_train.txt"
trainSubjectFile <- "./data/UCI HAR Dataset/train/subject_train.txt"

# test dataset
testDataFile <- "./data/UCI HAR Dataset/test/X_test.txt"
testLabelFile <- "./data/UCI HAR Dataset/test/y_test.txt"
testSubjectFile <- "./data/UCI HAR Dataset/test/subject_test.txt"

# global files 
fFeatures <- "./data/UCI HAR Dataset/features.txt"
fActivity <- "./data/UCI HAR Dataset/activity_labels.txt"

# load features and activity description 
features <- read.table(fFeatures)
activity <- read.table(fActivity)

# load training dataset and descriptions
trainData <- read.table(trainDataFile, colClasses=rep("numeric", 561))
trainLabel <- read.table(trainLabelFile)
trainSubjData <- read.table(trainSubjectFile)

# load test dataset and descriptions
testData <- read.table(testDataFile, colClasses=rep("numeric", 561))
testLabel <- read.table(testLabelFile)
testSubjData <- read.table(testSubjectFile)

# apply columm header/names
names(trainData) <- as.character(features$V2)
names(testData) <- as.character(features$V2)

#add lable column to training dataset
trainData <- cbind(SubjectId=trainSubjData$V1, Label=trainLabel$V1, trainData)
#names(trainData) <- c("SubjectId", "Label", as.character(features$V2))

#add lable column to test dataset
testData <- cbind(SubjectId=testSubjData$V1, Label=testLabel$V1, testData)
##names(testData) <- c("SubjectId", "Label", as.character(features$V2))

# join training and test dataset together
merged_data <- rbind(trainData, testData)

#subset and remove all column except mean(), std(), SubjetcId and Label columns
merged_data <- merged_data[,grep("(mean|std)\\(\\)|SubjectId|Label", names(merged_data))]

# Replace Label with descriptive Level names: WALKING, SITTING 
merged_data$Label <- activity[merged_data$Label, c(2)]

# tidy up variable names
names(merged_data) <- gsub("\\(\\)", "", names(merged_data))
names(merged_data) <- gsub("mean", "Mean", names(merged_data))
names(merged_data) <- gsub("std", "Std", names(merged_data))

# write 1st dataset to disk
write.table(merged_data, "merged_data.txt", row.name=FALSE) 



# Create a second, independent tidy data set with the average 
## of each variable for each activity and each subject.

library(plyr)

# Column means for all but the subject and activity columns
limitedColMeans <- function(data, exclude=c(1,2)) { colMeans(data[,-exclude]) }

tidyMeans <- ddply(merged_data, .(SubjectId, Label), limitedColMeans)

names(tidyMeans)[-c(1,2)] <- paste0("Mean", names(tidyMeans)[-c(1,2)])

# Write file
write.table(tidyMeans, "tidyMeans.txt", row.names = FALSE)


