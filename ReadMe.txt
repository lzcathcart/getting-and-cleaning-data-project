Getting and Cleaning Data: Week 4 Project

This particular repo was created based on the following:

1.) Week 4 Project Requirements for John Hopkins "Getting and Cleaning Data" Coursera course 
2.) Data sets were provided by research accomplished by the 
Human Activity Recognition Using Smartphones Data set (Version 1.0)
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 

The data set includes the following files:

1.) ReadMe.txt
2.) CodeBook.txt - describes the variables, data, and how the data was cleaned
3.) run_analysis.R - script that can be in used in R/RStudio to develop tidy data set
4.) tidy.txt - completed tidy set

Creation of a R script called run_analysis.R were based on the below course requirements:

STEP 1: Merges the training and the test sets to create one data set.
STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
STEP 3: Uses descriptive activity names to name the activities in the data set
STEP 4: Appropriately labels the data set with descriptive variable names. 
STEP 5: From the data set in step 4, creates a second, independent tidy data set with the 
    	average of each variable for each activity and each subject.

DATA DESCRIPTION

The data was based off of a group of 30 volunteers that performed six activities
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on their waist. Data was then processed 
via the embedded accelerometer and gyroscope based on each volunteer's activity.

SCRIPT EXPLANATION

The script used a combination of the training data set, test data set, and variables 
from both the activity and features data sets.Please see below for specifics:
 
features.txt: List of all features
activity_labels.txt: Links the class labels with their activity name
X_train.txt: Training set
y_train.txt: Training labels
X_test.txt: Test set
y_test.txt: Test labels

TIDY DATA SET

The tidy data set contains 180 objects/rows and 68 variables/columns. The only variables 
that were kept in the data set were from the mean and standard deviations and then averaged based
on variable, activity, and subject.

RESOURCE
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity 
Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This data set is distributed AS-IS and no responsibility implied or explicit can be addressed to 
the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

For more information about this dataset contact: activityrecognition@smartlab.ws
