#Getting And Cleaning Data Project Codebook
##UCI Human Activity Recognition Dataset


###Overview

The data described in this codebook was originally obtained from a study at UCI looking at the recognition of human activity using Samsung smartphones. The experiment was performed with 30 volunteers and data was recorded from accelerometers and gyroscopes in the smartphones. Recorded data from the accelerometers and gyroscopes were normalized to a range of -1 to 1. This data can be found here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

The script "run_analysis.R" pulls together this data into a tidy data package. Parameters from the initial package are filtered out and the training & test data sets are pulled together. For a full description of the analysis, please refer to the "Readme.md" file. The contents of the resulting dataset can be seen below. Note that the output of the "run_analysis" script, "step5.txt", contains the average of each of the parameters below, grouped by activity and subject id.

<sub><sub> UCI Citation: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.</sub> </sub>

###Data Dictionary

```
Parameter Name:	activity
Description:    Type of Physical Activity
Type:           String
Allowed Values: Standing, Sitting, Laying, Walking, Walking Upstairs, or Walking Downstairs
Units:          None
```

```	
Parameter Name:	fBodyAcc.mean.X
Description:    Frequency Domain Body Acceleration Window Mean - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```
Parameter Name:	fBodyAcc.mean.Y
Description:    Frequency Domain Body Acceleration Window Mean - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```
Parameter Name:	fBodyAcc.mean.Z
Description:    Frequency Domain Body Acceleration Window Mean - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyAcc.std.X
Description:    Frequency Domain Body Acceleration Window Standard Deviation - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyAcc.std.Y
Description:    Frequency Domain Body Acceleration Window Standard Deviation - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyAcc.std.Z
Description:    Frequency Domain Body Acceleration Window Standard Deviation - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
	
Parameter Name:	fBodyAccJerk.mean.X
Description:    Frequency Domain Body Jerk Window Mean - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyAccJerk.mean.Y
Description:    Frequency Domain Body Jerk Window Mean - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyAccJerk.mean.Z
Description:    Frequency Domain Body Jerk Window Mean - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyAccJerk.std.X
Description:    Frequency Domain Body Jerk Window Standard Deviation - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyAccJerk.std.Y
Description:    Frequency Domain Body Jerk Window Standard Deviation - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyAccJerk.std.Z
Description:    Frequency Domain Body Jerk Window Standard Deviation - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyAccMag.mean.
Description:    Frequency Domain Body Acceleration Magnitude Mean
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
	
Parameter Name:	fBodyAccMag.std.
Description:    Frequency Domain Body Acceleration Magnitude Standard Deviation
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyBodyAccJerkMag.mean.
Description:    Frequency Domain Body Jerk Magnitude Mean
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyBodyAccJerkMag.std.
Description:    Frequency Domain Body Jerk Magnitude Standard Deviation
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyBodyGyroJerkMag.mean.
Description:    Frequency Domain Body Gyroscope Jerk Magnitude Mean
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyBodyGyroJerkMag.std.
Description:    Frequency Domain Body Gyroscope Jerk Magnitude Standard Deviation
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyBodyGyroMag.mean.
Description:    Frequency Domain Body Gyroscope Acceleration Magnitude Mean
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyBodyGyroMag.std.
Description:    Frequency Domain Body Gyroscope Acceleration Magnitude Standard Deviation
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyGyro.mean.X
Description:    Frequency Domain Body Gyroscope Acceleration Window Mean - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyGyro.mean.Y
Description:    Frequency Domain Body Gyroscope Acceleration Window Mean - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyGyro.mean.Z
Description:    Frequency Domain Body Gyroscope Acceleration Window Mean - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyGyro.std.X
Description:    Frequency Domain Body Gyroscope Acceleration Window Standard Deviation - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyGyro.std.Y
Description:    Frequency Domain Body Gyroscope Acceleration Window Standard Deviation - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	fBodyGyro.std.Z
Description:    Frequency Domain Body Gyroscope Acceleration Window Standard Deviation - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	subject_id
Description:    Subject Number
Type:                        	Integer
Allowed Values:  	Integers 1 through 30
Units:          None
```

```	
Parameter Name:	tBodyAcc.mean.X
Description:    Time Domain Body Acceleration Window Mean - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAcc.mean.Y
Description:    Time Domain Body Acceleration Window Mean - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAcc.mean.Z
Description:    Time Domain Body Acceleration Window Mean - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAcc.std.X
Description:    Time Domain Body Acceleration Window Standard Deviation - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAcc.std.Y
Description:    Time Domain Body Acceleration Window Standard Deviation - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAcc.std.Z
Description:    Time Domain Body Acceleration Window Standard Deviation - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAccJerk.mean.X
Description:    Time Domain Body Jerk Window Mean - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAccJerk.mean.Y
Description:    Time Domain Body Jerk Window Mean - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAccJerk.mean.Z
Description:    Time Domain Body Jerk Window Mean - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAccJerk.std.X
Description:    Time Domain Body Jerk Window Standard Deviation - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAccJerk.std.Y
Description:    Time Domain Body Jerk Window Standard Deviation - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAccJerk.std.Z
Description:    Time Domain Body Jerk Window Standard Deviation - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAccJerkMag.mean.
Description:    Time Domain Body Jerk Magnitude Mean
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAccJerkMag.std.
Description:    Time Domain Body Jerk Magnitude Standard Deviation
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAccMag.mean.
Description:    Time Domain Body Acceleration Magnitude Mean
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyAccMag.std.
Description:    Time Domain Body Acceleration Magnitude Standard Deviation
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyro.mean.X
Description:    Time Domain Body Gyroscope Acceleration Window Mean - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyro.mean.Y
Description:    Time Domain Body Gyroscope Acceleration Window Mean - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyro.mean.Z
Description:    Time Domain Body Gyroscope Acceleration Window Mean - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyro.std.X
Description:    Time Domain Body Gyroscope Acceleration Window Standard Deviation - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyro.std.Y
Description:    Time Domain Body Gyroscope Acceleration Window Standard Deviation - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyro.std.Z
Description:    Time Domain Body Gyroscope Acceleration Window Standard Deviation - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyroJerk.mean.X
Description:    Time Domain Body Gyroscope Jerk Window Mean - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyroJerk.mean.Y
Description:    Time Domain Body Gyroscope Jerk Window Mean - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyroJerk.mean.Z
Description:    Time Domain Body Gyroscope Jerk Window Mean - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyroJerk.std.X
Description:    Time Domain Body Gyroscope Jerk Window Standard Deviation - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyroJerk.std.Y
Description:    Time Domain Body Gyroscope Jerk Window Standard Deviation - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyroJerk.std.Z
Description:    Time Domain Body Gyroscope Jerk Window Standard Deviation - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyroJerkMag.mean.
Description:    Time Domain Body Gyroscope Jerk Magnitude Mean
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyroJerkMag.std.
Description:    Time Domain Body Gyroscope Jerk Magnitude Standard Deviation
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyroMag.mean.
Description:    Time Domain Body Gyroscope Acceleration Magnitude Mean
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tBodyGyroMag.std.
Description:    Time Domain Body Gyroscope Acceleration Magnitude Standard Deviation
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tGravityAcc.mean.X
Description:    Time Domain Gravity Acceleration Window Mean - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tGravityAcc.mean.Y
Description:    Time Domain Gravity Acceleration Window Mean - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tGravityAcc.mean.Z
Description:    Time Domain Gravity Acceleration Window Mean - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tGravityAcc.std.X
Description:    Time Domain Gravity Acceleration Window Standard Deviation - X Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tGravityAcc.std.Y
Description:    Time Domain Gravity Acceleration Window Standard Deviation - Y Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tGravityAcc.std.Z
Description:    Time Domain Gravity Acceleration Window Standard Deviation - Z Direction
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tGravityAccMag.mean.
Description:    Time Domain Gravity Acceleration Magnitude Mean
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```

```	
Parameter Name:	tGravityAccMag.std.
Description:    Time Domain Gravity Acceleration Magnitude Standard Deviation
Type:           Float
Allowed Values: Normalized , [-1 to 1]
Units:          None
```
