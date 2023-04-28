
# Load required libraries
library(dplyr)
library(tidyr)

# Set the working directory to the folder where the data is saved
setwd("Getting_and_Cleaning_Data_Course_Project")

# 1. Merges the training and the test sets to create one data set.
# Read text file
X_test = read.table("UCI HAR Dataset/test/X_test.txt")
y_test = read.table('UCI HAR Dataset/test/y_test.txt')
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

X_train = read.table('UCI HAR Dataset/train/X_train.txt')
y_train = read.table('UCI HAR Dataset/train/y_train.txt')
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Read features and activity info
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Merge the training and test datasets
X_data <- rbind(X_train, X_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement
# Use regular expressions to select only the columns containing mean() or std() in the column names
X_mean_std = X_data[grep("mean\\(\\)|std\\(\\)", features[, 2])]
colnames(X_mean_std) = grep("mean\\(\\)|std\\(\\)", features[, 2], value = TRUE)

# 3. Uses descriptive activity names to name the activities in the data set
y_data$V1 = factor(y_data$V1 , levels = activity_labels[,1], labels = activity_labels[,2])

# 4. Appropriately labels the data set with descriptive variable names. 
# Set column names for y_data, X_mean_std and subject_data
colnames(y_data) <- "Activity"
colnames(subject_data) <- "Subject_id"
names(X_mean_std) <- gsub("-mean()", "Mean", names(X_mean_std), ignore.case = TRUE)
names(X_mean_std) <- gsub("-std()", "STD", names(X_mean_std), ignore.case = TRUE)

# C bind all data
allData <- cbind(subject_data, X_mean_std, y_data)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

tidy_data <- allData %>%
            group_by(Subject_id, Activity) %>%
            summarise(across(.cols = everything(), .fns = mean))


# Write the tidy dataset to a file
write.table(tidy_data, "tidy_dataset.txt", row.names = FALSE)
