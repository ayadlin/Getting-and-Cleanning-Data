# Getting-and-Cleanning-Data Class Project

The goal of the project is to take Samsung data and create a table with mean and standard deviation of various meassurments for 30 subject across 6 activities. In order to do this I have created my version of the script run_analysis.R

The script assumes that all necesary data from Samsung has been downloaded and all necesary files have been copied to the working directory. The working directory contains the script.

If you don't have the samsung data please download and unzip from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Place the following txt files in your working directory:

activity_labels.txt
features.txt
subject_test.txt
subject_train.txt
X_test.txt
X_train.txt
y_test.txt
y_train.txt

Place run_analysis.R in your working directory

To run the script in RStudio  you can use 
source("run_analysis.R")
or
open "run_analysis.R" script in RStudio.
click source on save
click save

the program requires the use of plyr library - as the command ddply is use to create the final output table on step 5 below

As specficied in the assignment run_analysis.R perform the following tasks:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output of the program is a text file called Output_Data.txt
Output_Data.txt contains 68 columns: 2 desriptive variables (Activities, Subject) and 66 quantitaive variables (mean and std of measurments) and 180 rows (30 activities x 6 measurments)


