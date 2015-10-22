# Cleaning Data Course Project Code Book

This document describes the variables, the data, and any transformations or work that were performed to clean up the data supplied by http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Transformations

The run_analysis.R script, downloads the data from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

And then:
 
 * Merges the training and the test sets to create one data set.
 * Extracts only the measurements on the mean and standard deviation for each measurement. 
 * Uses descriptive activity names to name the activities in the data set
 * Appropriately labels the data set with descriptive variable names. 
 * An creates an independent tidy data set with the average of each variable for each activity and each subject.

## Output

The output tidy data contains the following:

 * subject : Unique subject ID, values from 1 - 9
 * activity : The activity being performed by that subject, from values (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING & LAYING)
 * tBodyAcc-mean()-X : For definition, see Feature definitions
 * tBodyAcc-mean()-Y : For definition, see Feature definitions
 * tBodyAcc-mean()-Z : For definition, see Feature definitions
 * tGravityAcc-mean()-X : For definition, see Feature definitions
 * tGravityAcc-mean()-Y : For definition, see Feature definitions
 * tGravityAcc-mean()-Z : For definition, see Feature definitions
 * tBodyAccJerk-mean()-X : For definition, see Feature definitions
 * tBodyAccJerk-mean()-Y : For definition, see Feature definitions
 * tBodyAccJerk-mean()-Z : For definition, see Feature definitions
 * tBodyGyro-mean()-X : For definition, see Feature definitions
 * tBodyGyro-mean()-Y : For definition, see Feature definitions
 * tBodyGyro-mean()-Z : For definition, see Feature definitions
 * tBodyGyroJerk-mean()-X : For definition, see Feature definitions
 * tBodyGyroJerk-mean()-Y : For definition, see Feature definitions
 * tBodyGyroJerk-mean()-Z : For definition, see Feature definitions
 * tBodyAccMag-mean() : For definition, see Feature definitions
 * tGravityAccMag-mean() : For definition, see Feature definitions
 * tBodyAccJerkMag-mean() : For definition, see Feature definitions
 * tBodyGyroMag-mean() : For definition, see Feature definitions
 * tBodyGyroJerkMag-mean() : For definition, see Feature definitions
 * fBodyAcc-mean()-X : For definition, see Feature definitions
 * fBodyAcc-mean()-Y : For definition, see Feature definitions
 * fBodyAcc-mean()-Z : For definition, see Feature definitions
 * fBodyAcc-meanFreq()-X : For definition, see Feature definitions
 * fBodyAcc-meanFreq()-Y : For definition, see Feature definitions
 * fBodyAcc-meanFreq()-Z : For definition, see Feature definitions
 * fBodyAccJerk-mean()-X : For definition, see Feature definitions
 * fBodyAccJerk-mean()-Y : For definition, see Feature definitions
 * fBodyAccJerk-mean()-Z : For definition, see Feature definitions
 * fBodyAccJerk-meanFreq()-X : For definition, see Feature definitions
 * fBodyAccJerk-meanFreq()-Y : For definition, see Feature definitions
 * fBodyAccJerk-meanFreq()-Z : For definition, see Feature definitions
 * fBodyGyro-mean()-X : For definition, see Feature definitions
 * fBodyGyro-mean()-Y : For definition, see Feature definitions
 * fBodyGyro-mean()-Z : For definition, see Feature definitions
 * fBodyGyro-meanFreq()-X : For definition, see Feature definitions
 * fBodyGyro-meanFreq()-Y : For definition, see Feature definitions
 * fBodyGyro-meanFreq()-Z : For definition, see Feature definitions
 * fBodyAccMag-mean() : For definition, see Feature definitions
 * fBodyAccMag-meanFreq() : For definition, see Feature definitions
 * fBodyBodyAccJerkMag-mean() : For definition, see Feature definitions
 * fBodyBodyAccJerkMag-meanFreq() : For definition, see Feature definitions
 * fBodyBodyGyroMag-mean() : For definition, see Feature definitions
 * fBodyBodyGyroMag-meanFreq() : For definition, see Feature definitions
 * fBodyBodyGyroJerkMag-mean() : For definition, see Feature definitions
 * fBodyBodyGyroJerkMag-meanFreq() : For definition, see Feature definitions
 * angle(tBodyAccMean,gravity) : For definition, see Feature definitions
 * angle(tBodyAccJerkMean),gravityMean) : For definition, see Feature definitions
 * angle(tBodyGyroMean,gravityMean) : For definition, see Feature definitions
 * angle(tBodyGyroJerkMean,gravityMean) : For definition, see Feature definitions
 * angle(X,gravityMean) : For definition, see Feature definitions
 * angle(Y,gravityMean) : For definition, see Feature definitions
 * angle(Z,gravityMean) : For definition, see Feature definitions
 * tBodyAcc-std()-X : For definition, see Feature definitions
 * tBodyAcc-std()-Y : For definition, see Feature definitions
 * tBodyAcc-std()-Z : For definition, see Feature definitions
 * tGravityAcc-std()-X : For definition, see Feature definitions
 * tGravityAcc-std()-Y : For definition, see Feature definitions
 * tGravityAcc-std()-Z : For definition, see Feature definitions
 * tBodyAccJerk-std()-X : For definition, see Feature definitions
 * tBodyAccJerk-std()-Y : For definition, see Feature definitions
 * tBodyAccJerk-std()-Z : For definition, see Feature definitions
 * tBodyGyro-std()-X : For definition, see Feature definitions
 * tBodyGyro-std()-Y : For definition, see Feature definitions
 * tBodyGyro-std()-Z : For definition, see Feature definitions
 * tBodyGyroJerk-std()-X : For definition, see Feature definitions
 * tBodyGyroJerk-std()-X : For definition, see Feature definitions
 * tBodyGyroJerk-std()-Y : For definition, see Feature definitions
 * tBodyGyroJerk-std()-Z : For definition, see Feature definitions
 * tBodyAccMag-std() : For definition, see Feature definitions
 * tGravityAccMag-std() : For definition, see Feature definitions
 * tBodyAccJerkMag-std() : For definition, see Feature definitions
 * tBodyGyroMag-std() : For definition, see Feature definitions
 * tBodyGyroJerkMag-std() : For definition, see Feature definitions
 * fBodyAcc-std()-X : For definition, see Feature definitions
 * fBodyAcc-std()-Y : For definition, see Feature definitions
 * fBodyAcc-std()-Z : For definition, see Feature definitions
 * fBodyAccJerk-std()-X : For definition, see Feature definitions
 * fBodyAccJerk-std()-Y : For definition, see Feature definitions
 * fBodyAccJerk-std()-Z : For definition, see Feature definitions
 * fBodyGyro-std()-X : For definition, see Feature definitions
 * fBodyGyro-std()-Y : For definition, see Feature definitions
 * fBodyGyro-std()-Z : For definition, see Feature definitions
 * fBodyAccMag-std() : For definition, see Feature definitions
 * fBodyBodyAccJerkMag-std() : For definition, see Feature definitions
 * fBodyBodyGyroMag-std() : For definition, see Feature definitions
 * fBodyBodyGyroJerkMag-std() : For definition, see Feature definitions

## Feature definitions

The features selected for this tidy data set are averages per subject and activity which come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

 * tBodyAcc-XYZ
 * tGravityAcc-XYZ
 * tBodyAccJerk-XYZ
 * tBodyGyro-XYZ
 * tBodyGyroJerk-XYZ
 * tBodyAccMag
 * tGravityAccMag
 * tBodyAccJerkMag
 * tBodyGyroMag
 * tBodyGyroJerkMag
 * fBodyAcc-XYZ
 * fBodyAccJerk-XYZ
 * fBodyGyro-XYZ
 * fBodyAccMag
 * fBodyAccJerkMag
 * fBodyGyroMag
 * fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

 * mean(): Mean value
 * std(): Standard deviation
 * angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

 * gravityMean
 * tBodyAccMean
 * tBodyAccJerkMean
 * tBodyGyroMean
 * tBodyGyroJerkMean




