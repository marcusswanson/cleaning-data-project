# cleaning-data-project code book

The run_analysis script, dowloads the data from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

And then:
 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
An creates an independent tidy data set with the average of each variable for each activity and each subject.

The output tidy data contains the following:

subject : Unique subject ID, values from 1 - 9
activity : The activity being performed by that subject, from values (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING & LAYING)
tBodyAcc-mean()-X : For definition, see below
tBodyAcc-mean()-Y : For definition, see below
tBodyAcc-mean()-Z : For definition, see below
tGravityAcc-mean()-X : For definition, see below
tGravityAcc-mean()-Y : For definition, see below
tGravityAcc-mean()-Z : For definition, see below
tBodyAccJerk-mean()-X : For definition, see below
tBodyAccJerk-mean()-Y : For definition, see below
tBodyAccJerk-mean()-Z : For definition, see below
tBodyGyro-mean()-X : For definition, see below
tBodyGyro-mean()-Y : For definition, see below
tBodyGyro-mean()-Z : For definition, see below
tBodyGyroJerk-mean()-X : For definition, see below
tBodyGyroJerk-mean()-Y : For definition, see below
tBodyGyroJerk-mean()-Z : For definition, see below
tBodyAccMag-mean() : For definition, see below
tGravityAccMag-mean() : For definition, see below
tBodyAccJerkMag-mean() : For definition, see below
tBodyGyroMag-mean() : For definition, see below
tBodyGyroJerkMag-mean() : For definition, see below
fBodyAcc-mean()-X : For definition, see below
fBodyAcc-mean()-Y : For definition, see below
fBodyAcc-mean()-Z : For definition, see below
fBodyAcc-meanFreq()-X : For definition, see below
fBodyAcc-meanFreq()-Y : For definition, see below
fBodyAcc-meanFreq()-Z : For definition, see below
fBodyAccJerk-mean()-X : For definition, see below
fBodyAccJerk-mean()-Y : For definition, see below
fBodyAccJerk-mean()-Z : For definition, see below
fBodyAccJerk-meanFreq()-X : For definition, see below
fBodyAccJerk-meanFreq()-Y : For definition, see below
fBodyAccJerk-meanFreq()-Z : For definition, see below
fBodyGyro-mean()-X : For definition, see below
fBodyGyro-mean()-Y : For definition, see below
fBodyGyro-mean()-Z : For definition, see below
fBodyGyro-meanFreq()-X : For definition, see below
fBodyGyro-meanFreq()-Y : For definition, see below
fBodyGyro-meanFreq()-Z : For definition, see below
fBodyAccMag-mean() : For definition, see below
fBodyAccMag-meanFreq() : For definition, see below
fBodyBodyAccJerkMag-mean() : For definition, see below
fBodyBodyAccJerkMag-meanFreq() : For definition, see below
fBodyBodyGyroMag-mean() : For definition, see below
fBodyBodyGyroMag-meanFreq() : For definition, see below
fBodyBodyGyroJerkMag-mean() : For definition, see below
fBodyBodyGyroJerkMag-meanFreq() : For definition, see below
angle(tBodyAccMean,gravity) : For definition, see below
angle(tBodyAccJerkMean),gravityMean) : For definition, see below
angle(tBodyGyroMean,gravityMean) : For definition, see below
angle(tBodyGyroJerkMean,gravityMean) : For definition, see below
angle(X,gravityMean) : For definition, see below
angle(Y,gravityMean) : For definition, see below
angle(Z,gravityMean) : For definition, see below
tBodyAcc-std()-X : For definition, see below
tBodyAcc-std()-Y : For definition, see below
tBodyAcc-std()-Z : For definition, see below
tGravityAcc-std()-X : For definition, see below
tGravityAcc-std()-Y : For definition, see below
tGravityAcc-std()-Z : For definition, see below
tBodyAccJerk-std()-X : For definition, see below
tBodyAccJerk-std()-Y : For definition, see below
tBodyAccJerk-std()-Z : For definition, see below
tBodyGyro-std()-X : For definition, see below
tBodyGyro-std()-Y : For definition, see below
tBodyGyro-std()-Z : For definition, see below
tBodyGyroJerk-std()-X : For definition, see below
tBodyGyroJerk-std()-X : For definition, see below
tBodyGyroJerk-std()-Y : For definition, see below
tBodyGyroJerk-std()-Z : For definition, see below
tBodyAccMag-std() : For definition, see below
tGravityAccMag-std() : For definition, see below
tBodyAccJerkMag-std() : For definition, see below
tBodyGyroMag-std() : For definition, see below
tBodyGyroJerkMag-std() : For definition, see below
fBodyAcc-std()-X : For definition, see below
fBodyAcc-std()-Y : For definition, see below
fBodyAcc-std()-Z : For definition, see below
fBodyAccJerk-std()-X : For definition, see below
fBodyAccJerk-std()-Y : For definition, see below
fBodyAccJerk-std()-Z : For definition, see below
fBodyGyro-std()-X : For definition, see below
fBodyGyro-std()-Y : For definition, see below
fBodyGyro-std()-Z : For definition, see below
fBodyAccMag-std() : For definition, see below
fBodyBodyAccJerkMag-std() : For definition, see below
fBodyBodyGyroMag-std() : For definition, see below
fBodyBodyGyroJerkMag-std() : For definition, see below

Feature definitions:

The features selected for this tidy data set are averages per subject and activity which come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean




