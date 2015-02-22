# Getting And Cleaning Data Project
Project for Coursera Course - Getting and Cleaning Data


 Description:         This R script loads Acceleratometer Samsung Smartphone Data from UCI HAR Dataset
                      and merges the training and test data sets together. It also assigns variable
                      names, before pulling out columns only related to standard deviation and means.
                      This script also joins the activity ID to the activity label for each row of
                      data using the sqldf library. After tidying this data set, the script then 
                      averages each column but grouped by activity and subject ID. These averaged 
                      datasets are then exported to a TXT file.

 Use:                 There are no input arguments to the "run_analysis" function.
                      The script assumes that the UCI HAR Dataset folder is in the
                      working directory.

 Written:             JAL, 2/22/2015

