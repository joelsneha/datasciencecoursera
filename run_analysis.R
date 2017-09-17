########################################
## Analysis Project
########################################

## Create one R script called run_analysis.R that does the following: 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.  
## 3. Uses descriptive activity names to name the activities in the data set 
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

 if (!require("data.table")) { 
   install.packages("data.table") 
 } 
 

 if (!require("reshape2")) { 
   install.packages("reshape2") 
 } 
 

 require("data.table") 
 require("reshape2") 
 

 activitylabels <- read.table("./activity_labels.txt")[,2] 
 features <- read.table("./features.txt")[,2] 
 extractfeatures <- grepl("mean|std", features) 
 

 Xtest <- read.table("./X_test.txt") 
 ytest <- read.table("./y_test.txt") 
 subjecttest <- read.table("./subject_test.txt") 
 

 names(Xtest) = features 
 

 Xtest = Xtest[,extractfeatures] 
 ytest[,2] = activitylabels[y_test[,1]] 
 names(ytest) = c("ActivityID", "ActivityLabel") 
 names(subjecttest) = "subject" 
 

 test_data <- cbind(as.data.table(subject_test), ytest, Xtest) 
 Xtrain <- read.table("./X_train.txt") 
 ytrain <- read.table("./y_train.txt") 
 

 subjecttrain <- read.table("./subject_train.txt") 
 

 names(Xtrain) = features 
 

 Xtrain = Xtrain[,extract_features] 
 ytrain[,2] = activitylabels[ytrain[,1]] 
 names(ytrain) = c("ActivityID", "ActivityLabel") 
 names(subjecttrain) = "subject" 
 

 traindata <- cbind(as.data.table(subjecttrain), ytrain, Xtrain) 
 data = rbind(test_data, traindata) 
 

 idlabels   = c("subject", "ActivityID", "ActivityLabel") 
 datalabels = setdiff(colnames(data), idlabels) 
 meltdata      = melt(data, id = idlabels, measure.vars = datalabels) 


 tidy_data   = dcast(meltdata, subject + ActivityLabel ~ variable, mean) 
 write.table(tidy_data, file = "./tidy_data.txt", row.names=FALSE) 