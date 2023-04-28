# Getting and Cleaning Data Course Project

This repository contains the R script and code book for the Getting and Cleaning Data for Coursera course project.

## Data Source
The data used in this project was collected from the accelerometers from the Samsung Galaxy S smartphone. The original data set and a detailed description of the study can be found at the following URL:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files
The following files are included in this repository:

* **README.md**: This file, providing an overview of the project.

* **run_analysis.R**: The R script used to clean and tidy the original data set and generate a new, summarized data set.

* **CodeBook.md**: The code book describing the variables, data, and any transformations or work performed to clean up the data.

## Project Overview
The goal of this project is to demonstrate the ability to collect, work with, and clean a data set in order to prepare tidy data that can be used for later analysis.

The **run_analysis.R** script does the following:

1. Loads the training and test data sets, as well as the activity labels and feature names.

2. Merges the training and test data sets to create a single data set.

3. Extracts only the measurements on the mean and standard deviation for each measurement.

4. Renames the activities in the data set with descriptive names.

5. Appropriately labels the data set with descriptive variable names.

6. Creates a new, summarized data set containing the average of each variable for each activity and each subject.

The resulting tidy data set is written to a new file, **tidy_data.txt**, in the working directory.

For more information on the transformations and work performed in the **run_analysis.R** script, please see the **CodeBook.md** file.

## Usage
To use the **run_analysis.R** script, simply download it and run it in your R environment.

The script requires the following R packages:

* dplyr
