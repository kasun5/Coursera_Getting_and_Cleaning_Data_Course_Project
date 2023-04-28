# Code Book
## Overview
This code book describes the variables, data, and any transformations or work that were performed to clean up the data.

## Data Source
The data for this project were obtained from the Human Activity Recognition Using Smartphones Data Set, which can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data set used for this project was obtained from the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Set Information
The data set includes the following files:

1. 'README.txt': Provides information about the data set and the study.

2. 'features_info.txt': Provides information about the variables in the data set.

3. 'features.txt': List of all features.

4. 'activity_labels.txt': Links the activity ID with their corresponding activity name.

5. 'train/X_train.txt': Training set.

6. 'train/y_train.txt': Training labels.

7. 'test/X_test.txt': Test set.

8. 'test/y_test.txt': Test labels.

Original data are not included in the repositoty

## Variables
The final tidy data set contains the following variables:

1. "Subject": An integer identifying the subject who performed the activity.

2. "Activity": A factor with 6 levels indicating the activity performed by the subject.

3. The remaining variables are measurements of means and standard deviations of the raw signals collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone.

For a complete list and description of the variables, please see the 'features_info.txt' file included in the original data set.

## Transformations
The following transformations were applied to the original data set to create the final tidy data set:

1. The training and test data sets were combined into a single data set.

2. Only the variables containing means and standard deviations of the raw signals were extracted.

3. Descriptive activity names were assigned to the "Activity" variable.

4. Descriptive variable names were assigned to all variables.

5. A new data set was created containing the average of each variable for each activity and each subject.

For more information on the transformations, please see the 'run_analysis.R' script in the Github repository.
