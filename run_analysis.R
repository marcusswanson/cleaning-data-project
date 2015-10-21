run_analysis <- function() 
        {
        ##install.packages("dplyr")
        ##install.packages("readr")
        library(dplyr)
        library(readr)
        
        ## Change the working directory if its my local setup, otherwise use the current
        if(file.exists("C:\\coursera\\cleaning-data-course\\course-project"))
                setwd("C:\\coursera\\cleaning-data-course\\course-project")
        
        ## Create the data folder
        if(!file.exists("data")) {
                dir.create("data")
        }
        
        ## Download the zip file for the course
        if(!file.exists("./data/project.zip")) {
                print("downloading project.zip...")
                fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
                download.file(fileUrl, destfile = "./data/project.zip", mode = "wb")
                list.files("./data")
                print("downloaded project.zip.")
        }
        
        if(!file.exists("./data/zipcontents")) {
                unzip("./data/project.zip", exdir="./data/zipcontents")
        }
        
        ## According to the README.txt
        ##  Each file contains a vector 561 items
        ## The heading of each is contained in the features.txt file
        ##
        ## - 'train/X_train.txt': Training set.
        ## - 'test/X_test.txt': Test set.
        ##
        
        ## 1 - Merges the training and the test sets to create one data set, adding the activity to each row from the y data
        headerData <- read.fwf("./data/zipcontents/UCI HAR Dataset/features.txt", widths=40)$V1
        activityLabels <- read.fwf("./data/zipcontents/UCI HAR Dataset/activity_labels.txt", widths=20)$V1
        
        ## Remove the number and white space from the activity labels
        activityLabels <- gsub("\\d", "", activityLabels)
        activityLabels <- gsub(" ", "", activityLabels)
        
        xTrainData <- read_fwf("./data/zipcontents/UCI HAR Dataset/train/X_train.txt", col_positions = fwf_widths(rep(c(16),each=561)))
        yTrainData <- read_fwf("./data/zipcontents/UCI HAR Dataset/train/y_train.txt", col_positions = fwf_widths(c(1)))
        trainSubjects <- read_fwf("./data/zipcontents/UCI HAR Dataset/train/subject_train.txt", col_positions = fwf_widths(c(1)))
        
        names(xTrainData) <- headerData
        names(yTrainData) <- "activityNumeric"
        names(trainSubjects) <- "subject"
        
        trainData <- cbind(trainSubjects, yTrainData, xTrainData)

        xTestData <- read_fwf("./data/zipcontents/UCI HAR Dataset/test/X_test.txt", col_positions = fwf_widths(rep(c(16),each=561)))
        yTestData <- read_fwf("./data/zipcontents/UCI HAR Dataset/test/y_test.txt", col_positions = fwf_widths(c(1)))
        testSubjects <- read_fwf("./data/zipcontents/UCI HAR Dataset/test/subject_test.txt", col_positions = fwf_widths(c(1)))
        
        names(xTestData) <- headerData
        names(yTestData) <- "activityNumeric"
        names(testSubjects) <- "subject"

        testData <- cbind(testSubjects, yTestData, xTestData)

        combined <- rbind(testData, trainData)
        
        ## 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
        combined <- select(combined,contains("mean"), contains("std"),contains("activityNumeric"),contains("subject"))
        
        ## 3 - Uses descriptive activity names to name the activities in the data set
        ## Should probably use the mutate function here mutate(combined, activity = factor(combined$activityNumeric, levels = c(1:6), labels = activityLabels))
        combined$activity <- factor(combined$activityNumeric, levels = c(1:6), labels = activityLabels)
        combined <- subset(combined, select = -c(activityNumeric) )
        
        ## 4 - Appropriately labels the data set with descriptive variable names. 
        ## Remove numerics, white spacing
        names(combined) <- gsub("\\d", "", names(combined))
        names(combined) <- gsub(" ", "", names(combined))
        
        ## 5 - From the data set in step 4, creates a second independent tidy data set with the average of each variable for each activity and each subject.
        subjectAndActivity <- append(combined["subject"], combined["activity"])
        tidyData <- aggregate(combined[,1:86], subjectAndActivity, function(x) mean(x,na.rm=T))
        return(tidyData)
}