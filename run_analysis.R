## Coursera-Getting-and-Cleaning-Data Class Project

require(plyr)
# we will use this package in section 5



# 1. Merges the training and the test sets to create one data set.

# setwd("~/Desktop/Coursera/ 3 Getting and Cleaning Data/Course Project/UCI HAR Dataset")
# I manually copied all files to be used to the UCI HAR Dataset folder which for this project is my working directory

# First acquire all Train set relevant infromation
trainData <- read.table("X_train.txt")
trainLabel <- read.table("y_train.txt")
table(trainLabel)
trainSubject <- read.table("subject_train.txt")

# Second acquire all Test set relevant information 
testData <- read.table("X_test.txt")
testLabel <- read.table("y_test.txt") 
table(testLabel) 
testSubject <- read.table("subject_test.txt")

# Third Merge the two datsets
MergedData <- rbind(trainData, testData)
MergedLabel <- rbind(trainLabel, testLabel)
MergedSubject <- rbind(trainSubject, testSubject)


# Fourth check that MergedData, MergedLabel and Merged subject have teh correct dimnsions.
# if this is false the script will finish
stopifnot(dim(MergedData)[1] == dim(trainData)[1]+dim(testData)[1], dim(MergedData)[1] == dim(MergedLabel)[1] , dim(MergedData)[1] == dim(MergedSubject)[1])


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

# First Read descriptive features
Features <- read.table("features.txt")

# Identify rows with mean or standard deviation measurments
# It is unclear to me from the assignment if variables such as angle(Z,gravityMean) (561) or fBodyAcc-meanFreq()-X (294) 
# mean/std frequency values should be assigned  - 
# I am working under the assumption that only features of the type tBodyAcc-mean()-X (1) - direct Mean and Std of 
# variables and not procesed measurements such as frequencies should be extracted 

Mean_Std_index <- grep("mean\\(\\)|std\\(\\)", Features$V2)

# If all features with the word mean/Mean/std/Std   in it should be extracted. this would be the command to use  

# Mean_Std_index <- grep("(mean|std|Mean|Std)", Features[, 2]) # length = 86


# Third tidy the row names in Features by replacing lower case to upper case and eliminatte "-" and "()" on Features

Features[,2] = gsub('-mean', 'Mean', Features[,2])
Features[,2] = gsub('-std', 'Std', Features[,2])
Features[,2] = gsub('[-()]', '', Features[,2])


# Fourth Extract Mean and Std Features from data
Mean_Std_Features <- MergedData[,Mean_Std_index]

# Fifth Name the columns of Mean_Std_Features using the extracted rows from Features
names(Mean_Std_Features) <- Features[Mean_Std_index, 2]


# 3. Uses descriptive activity names to name the activities in the data set

# First Read descriptive activities
activities <- read.table("activity_labels.txt")

# Second Replace "_" by " " (aestetic choice)
activities[,2]<-gsub("_"," ",activities[,2]) 

# Third Replace numeric Label by descriptive activity
MergedLabel[, 1] <- activities[MergedLabel[, 1], 2]

# Fourth name MergedLabel column

names(MergedLabel)<-"Activities"

# 4. Appropriately labels the data set with descriptive variable names. 

# First name Subject Column
names(MergedSubject) <- "Subject"

# Second Merge Data to FinalData
FinalData <- cbind(MergedLabel, MergedSubject, Mean_Std_Features)


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject.

# First extract the average for each variable according to activity and Subject
OutputData <- ddply(FinalData,.(Activities, Subject), function(x) colMeans(x[, 3:dim(FinalData)[2]]))
# start at column 3 as col1 is Activities and col 2 is subject

# Second write Table with OutputData
write.table(OutputData, "Output_Data.txt", sep="\t", row.name = FALSE)

