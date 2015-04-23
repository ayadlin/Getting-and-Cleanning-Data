CodeBook for Output_Data
=============================
Original Data was obtained from  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

As per the README file form the original dataset:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope,  
3-axial linear acceleration and 3-axial angular velocity measurements were captured at a constant rate of 50Hz. 
The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned 
into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in 
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, 
which has gravitational and body motion components, was separated using a Butterworth low-pass filter into 
body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore 
a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating
variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record Output_Data provided:
======================================
 
** A 180 by 68-feature matrix with MEAN and STANDARD DEVIATION of all varaibles in the time and frequency domains.
      - The feature matrix identifies:
  * The activity label under whihc the varaibles were measured. (column 1)
      - The 6 activity labesl are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
  * An identifier of the subject who carried out the experiment. (column 2) 
      - Identification number from 1 to 30 for 30 subjects.
  * The MEAN and STANDARD DEVIATION on both the time (t) and frequncy (f) domains for 66 varaibleas meassuring::
    - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
    - Triaxial Angular velocity from the gyroscope.
      - The 66 meassured variables are displayed in columns 3 to 68:
      - to read the variable you need to know:
        - the first letter t/f represents if the measurement was done on the frequency or time domain
        - the 2/3 word combination represents the type of meassurment. For exmaple BodyAcc in column 3 is estimated body accelartion
        - the last word specifies if the measurments is the mean or std of the variable. For example Mean in column 3
        - the last letter (were present, X, Y Z) represent the axis across whihc the meassurment was done. For example X in column 3
        - so column 3 i mean estimated body acceleration across the X axis.
      The total list of variables measuured (columns 3-68) are:
        - tBodyAccMeanX	
        - tBodyAccMeanY	
        - tBodyAccMeanZ	
        - tBodyAccStdX	
        - tBodyAccStdY	
        - tBodyAccStdZ	
        - tGravityAccMeanX	
        - tGravityAccMeanY	
        - tGravityAccMeanZ	
        - tGravityAccStdX	
        - tGravityAccStdY
        - tGravityAccStdZ	
        - tBodyAccJerkMeanX	
        - tBodyAccJerkMeanY	
        - tBodyAccJerkMeanZ	
        - tBodyAccJerkStdX	
        - tBodyAccJerkStdY	
        - tBodyAccJerkStdZ	
        - tBodyGyroMeanX	
        - tBodyGyroMeanY	
        - tBodyGyroMeanZ	
        - tBodyGyroStdX	
        - tBodyGyroStdY	
        - tBodyGyroStdZ	
        - tBodyGyroJerkMeanX	
        - tBodyGyroJerkMeanY	
        - tBodyGyroJerkMeanZ	
        - tBodyGyroJerkStdX	
        - tBodyGyroJerkStdY	
        - tBodyGyroJerkStdZ	
        - tBodyAccMagMean	
        - tBodyAccMagStd	
        - tGravityAccMagMean	
        - tGravityAccMagStd	
        - tBodyAccJerkMagMean	
        - tBodyAccJerkMagStd	
        - tBodyGyroMagMean	
        - tBodyGyroMagStd	
        - tBodyGyroJerkMagMean	
        - tBodyGyroJerkMagStd	
        - fBodyAccMeanX	
        - fBodyAccMeanY	
        - fBodyAccMeanZ	
        - fBodyAccStdX	
        - fBodyAccStdY	
        - fBodyAccStdZ	
        - fBodyAccJerkMeanX	
        - fBodyAccJerkMeanY	
        - fBodyAccJerkMeanZ	
        - fBodyAccJerkStdX	
        - fBodyAccJerkStdY	
        - fBodyAccJerkStdZ	
        - fBodyGyroMeanX	
        - fBodyGyroMeanY	
        - fBodyGyroMeanZ	
        - fBodyGyroStdX	
        - fBodyGyroStdY
        - fBodyGyroStdZ	
        - fBodyAccMagMean	
        - fBodyAccMagStd	
        - fBodyBodyAccJerkMagMean	
        - fBodyBodyAccJerkMagStd	
        - fBodyBodyGyroMagMean	
        - fBodyBodyGyroMagStd	
        - fBodyBodyGyroJerkMagMean	
        - fBodyBodyGyroJerkMagStd
    
    * in each row of the matrix the first 2 columns provide the subject/activity combination for which the measuremnts were taken
      and the reminder columns provide the average values for each variable given the row subject/activity combination
  
  * To know how the values were calculated from the original data please refer to README.md in this same directory/repo


