This is a summary dataset conatianing mean of each variable group by Subject and Activity from the orginal Time and Frequency domain mean measurements taken from mobile acceloromete r and gyroscope.


## Transformation Steps (see [run_analysis.R](./run_analysis.R))
  * Original test and training data along with subject and activity data were merged into a new dataset.
  * All variables in the dataset were labeled/re-labed
  * All other variables except mean mesaurements for X, Y, Z axis were removed
  * Clean dataset is then sumarised by Subject and Acitvity for each variables to creat new tiday dataset.


### Variables

| Variable| Description
| --:|---  
| Subject | Subject Id 
| Activity  |  are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
| | **All variables below are the mean of a measurement for each subject and activity above.** 
| MeanTBodyAcc-Mean-X |  Time domain body accelaration mean along X, Y and Z axis respectively. 
| MeanTBodyAcc-Mean-Y   |  
| MeanTBodyAcc-Mean-Z |   
| MeanTBodyAcc-Std-X  | Time domain body accelaration standard deviation along  X, Y and Z axis respectively.  
| MeanTBodyAcc-Std-Y |   
| MeanTBodyAcc-Std-Z   |   
| MeanTGravityAcc-Mean-X |  time domain gravity accelaration mean along  X, Y and Z axis respectively. 
| MeanTGravityAcc-Mean-Y  |   
| MeanTGravityAcc-Mean-Z |   
| MeanTGravityAcc-Std-X   | Time domain gravity accelaration standard deviation along X, Y, Z repectivly.
| MeanTGravityAcc-Std-Y |  
| MeanTGravityAcc-Std-Z   |  
| MeanTBodyAccJerk-Mean-X |  Time domain gravity accelaration jerk mean along X,Y and Z axis repectively.
| MeanTBodyAccJerk-Mean-Y   |  
| MeanTBodyAccJerk-Mean-Z |  
| MeanTBodyAccJerk-Std-X  |  Time domain gravity accelaration jerk standar deviation along X,Y and Z axis repectively.
| MeanTBodyAccJerk-Std-Y |  
| MeanTBodyAccJerk-Std-Z  |  
| MeanTBodyGyro-Mean-X |  Time domain body gyroscope mean along X,Y and Z axis respectively.
| MeanTBodyGyro-Mean-Y  |  
| MeanTBodyGyro-Mean-Z |  
| MeanTBodyGyro-Std-X   | Time domain body gyroscope standard deviation along X,Y and Z axis respectively. 
| MeanTBodyGyro-Std-Y |  
| MeanTBodyGyro-Std-Z   |  
| MeanTBodyGyroJerk-Mean-X |  Time domain body gyroscope jerk mean along X,Y and Z axis
| MeanTBodyGyroJerk-Mean-Y  |  
| MeanTBodyGyroJerk-Mean-Z |  
| MeanTBodyGyroJerk-Std-X   |  Time domain body gyroscope jerk standard deviation along X,Y and Z axis respectivly
| MeanTBodyGyroJerk-Std-Y |  
| MeanTBodyGyroJerk-Std-Z   |  
| MeanTBodyAccMag-Mean |  Time domain body accelaration magnitude mean 
| MeanTBodyAccMag-Std   |  Time domain body accelaration magnitude standa deviation 
| MeanTGravityAccMag-Mean |  Time domain gravity accelaration magnitude mean
| MeanTGravityAccMag-Std  |  Time domain gravity accelaration magnitude standard deviation
| MeanTBodyAccJerkMag-Mean | Time domain accelaration jerk magnitude mean 
| MeanTBodyAccJerkMag-Std   |  Time domain accelaration jerk magnitude standard deviation 
| MeanTBodyGyroMag-Mean | Time domain body gyroscope magnitude mean 
| MeanTBodyGyroMag-Std  |  Time domain body gyroscope magnitude standard deviation 
| MeanTBodyGyroJerkMag-Mean |  Time domain body gyroscope jerk magnitude mean
| MeanTBodyGyroJerkMag-Std  |  Time domain body gyroscope jerk magnitude standard deviation
| MeanFBodyAcc-Mean-X |  Frequency domain body accelaration mean along X,Y and Z respctively.
| MeanFBodyAcc-Mean-Y   |  
| MeanFBodyAcc-Mean-Z |  
| MeanFBodyAcc-Std-X  |  Frequency domain body accelaration STD along X,Y and Z respctively.
| MeanFBodyAcc-Std-Y |  
| MeanFBodyAcc-Std-Z  |  
| MeanFBodyAccJerk-Mean-X |  Frequency domain body accelaration jerk mean along X,Y and Z respctively.
| MeanFBodyAccJerk-Mean-Y   |  
| MeanFBodyAccJerk-Mean-Z |  
| MeanFBodyAccJerk-Std-X  |  Frequency domain body accelaration jerk STD along X,Y and Z respctively.
| MeanFBodyAccJerk-Std-Y |  
| MeanFBodyAccJerk-Std-Z  |  
| MeanFBodyGyro-Mean-X |  Frequency domain body gyroscope mean along X,Y and Z respctively.
| MeanFBodyGyro-Mean-Y  |  
| MeanFBodyGyro-Mean-Z |  
| MeanFBodyGyro-Std-X   |  Frequency domain body gyroscope STD along X,Y and Z respctively.
| MeanFBodyGyro-Std-Y |  
| MeanFBodyGyro-Std-Z   |  
| MeanFBodyAccMag-Mean |   Frequency domain body accelaration magnitued mean
| MeanFBodyAccMag-Std   |  Frequency domain body accelaration magnitued STD
| MeanFBodyBodyAccJerkMag-Mean |  Frequency domain body accelaration jerk magnitued mean
| MeanFBodyBodyAccJerkMag-Std   |  Frequency domain body accelaration jerk magnitued STD
| MeanFBodyBodyGyroMag-Mean |  Frequency domain body gyroscope magnitued mean
| MeanFBodyBodyGyroMag-Std  |  Frequency domain body gyroscope magnitued STD
| MeanFBodyBodyGyroJerkMag-Mean |  Frequency domain body gyroscope jerk magnitued mean
| MeanFBodyBodyGyroJerkMag-Std  |  Frequency domain body gyroscope jerk magnitued Std

