## CodeBook for run analysis



This document describes the code about run_analysis.R.

First few lines are comment about the function does in high level

## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.  
## 3. Uses descriptive activity names to name the activities in the data set 
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

Installs packages data.table and reshape2 only if required

require is used for both data.table and reshape2 to avoid errors instead library

1)
Reads files activity_lables.txt and features.txt only second column then search for "mean|std" in assigned features data

Also

Reads files X_test.txt, y_test.txt and subject_test.txt

2)
Reads files X_train.txt, y_train.txt and subject_train.txt after assign names

3) 
Manipulating data
Merges test data and trainning data 
Indentifies the mean and std columns 

4)
Writing final output file as tidy_data.csv