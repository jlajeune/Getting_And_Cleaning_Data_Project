run_analysis <- function(){

#Set Filenames and directories

mainf = "UCI HAR Dataset" #Main Folder

########################################################################
#STEP 1: Merge the training and the test sets to create one data set.
########################################################################

#Load label and Feature Files
activity_labels = read.table(paste(mainf,"/activity_labels.txt",sep=""),col.names=c("id","activity"))
feature_labels = read.table(paste(mainf,"/features.txt",sep=""),col.names=c("id","feature"))

#Load and Combine training/test sets for X,Y, and subject

#X Data Sets
x_train = read.table(paste(mainf,"/train/X_train.txt",sep=""),col.names=feature_labels$feature)
x_test = read.table(paste(mainf,"/test/X_test.txt",sep=""),col.names=feature_labels$feature)
x_total = rbind(x_train,x_test)

#Clean Up the column names, where there are multiple periods from unallowed characters
colnames(x_total) = gsub("\\.\\.","\\.",gsub("\\.\\.\\.","\\.",colnames(x_total)))

#Y Data Sets
y_train = read.table(paste(mainf,"/train/Y_train.txt",sep=""),col.names=c("activity_id"))
y_test = read.table(paste(mainf,"/test/Y_test.txt",sep=""),col.names=c("activity_id"))
y_total = rbind(y_train,y_test)

#Subject Data Sets
subject_train = read.table(paste(mainf,"/train/subject_train.txt",sep=""),col.names=c("subject_id"))
subject_test = read.table(paste(mainf,"/test/subject_test.txt",sep=""),col.names=c("subject_id"))
subject_total = rbind(subject_train,subject_test)

##Combine X,Y, and subject data sets
combined_partial = cbind(subject_total,y_total,x_total)

###  (STEP 3 Performed a Bit Early [Before Step 2], seems to make sense to 
###   do it here so there's one full table to work from)
########################################################################
#STEP 3: Extract only the measurements on the mean and standard 
#        deviation for each measurement.
########################################################################


#Use sqldf to join tables and display activity names from the activity_labels file
library(sqldf)
combined_full = sqldf("
                       select
                           activity_labels.activity,
                           combined_partial.*
                       from
                           combined_partial
                              inner join activity_labels
                                 on combined_partial.activity_id = activity_labels.id;
                      "
                      )

#Back to Step 2...

########################################################################
#STEP 2: Extract only the measurements on the mean and standard 
#        deviation for each measurement.
########################################################################

#Use grepl to find which colnames have "mean" or "std" in them
mean_std_ind = grepl("mean|std",colnames(combined_full))

#Find "meanFreq" variables to exclude, which were caught by the "mean"
meanFreq_ind = grepl("meanFreq",colnames(combined_full))

#Final Index Set, excluding "meanFreq" incidents
mean_std_ind_filtered = mean_std_ind - meanFreq_ind

#Set to Logical
mean_std_ind_filtered = sapply(as.data.frame(mean_std_ind_filtered),as.logical)

#Get Data from combined_full with colnames containing "mean" or "std"
combined_subset_mean_std = combined_full[,mean_std_ind_filtered]

#Add Back in the first two columns from the combined_full data set, so
#that the subject number and activity info are still available
combined_tidy = cbind(combined_full[,c(1,2)],combined_subset_mean_std)

#Rename Array to samsung_tidy
samsung_tidy = combined_tidy

#STEP 3 ALREADY COMPLETED EARLIER
########################################################################
#STEP 4: Extract only the measurements on the mean and standard 
#        deviation for each measurement.
########################################################################
#STEP 4 ALREADY COMPLETED-
# The variable names were already set from the features file, and activity and subject_id were duly created
#

########################################################################
#STEP 5: From the data set in step 4, creates a second, independent 
#        tidy data set with the average of each variable for each 
#        activity and each subject.
########################################################################

#Load plyr library
library(plyr)

#Get Average of Each Column, Grouped by activity and subject_id
samsung_average_tidy = ddply(combined_tidy,c("activity","subject_id"),numcolwise(mean))

#Add "Avg_" to the beginning of each variable name to show they're averages
samsung_average_colnames = colnames(samsung_average_tidy)
colnames(samsung_average_tidy) = c(samsung_average_colnames[1:2],paste("avg_",samsung_average_colnames[3:68],sep=""))

#Write Output File "step5.txt
write.table(samsung_average_tidy, "step5.txt", row.name = FALSE)
}
