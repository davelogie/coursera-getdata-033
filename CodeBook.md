DATA DICTIONARY

Subject		Numeric	1 or 2 digits
   The subject who performed the activities being measured, 1 thru 30

ActivityText	Text	
   The method of performing the activity
	One of
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

variable	Text
   The measurement being reported on
	One of
		tBodyAcc-mean()-X
		tBodyAcc-mean()-Y
		tBodyAcc-mean()-Z
		tGravityAcc-mean()-X
		tGravityAcc-mean()-Y
		tGravityAcc-mean()-Z
		tBodyAccJerk-mean()-X
		tBodyAccJerk-mean()-Y
		tBodyAccJerk-mean()-Z
		tBodyGyro-mean()-X
		tBodyGyro-mean()-Y
		tBodyGyro-mean()-Z
		tBodyGyroJerk-mean()-X
		tBodyGyroJerk-mean()-Y
		tBodyGyroJerk-mean()-Z
		tBodyAccMag-mean()
		tGravityAccMag-mean()
		tBodyAccJerkMag-mean()
		tBodyGyroMag-mean()
		tBodyGyroJerkMag-mean()
		fBodyAcc-mean()-X
		fBodyAcc-mean()-Y
		fBodyAcc-mean()-Z
		fBodyAccJerk-mean()-X
		fBodyAccJerk-mean()-Y
		fBodyAccJerk-mean()-Z
		fBodyGyro-mean()-X
		fBodyGyro-mean()-Y
		fBodyGyro-mean()-Z
		fBodyAccMag-mean()
		fBodyBodyAccJerkMag-mean()
		fBodyBodyGyroMag-mean()
		fBodyBodyGyroJerkMag-mean()
		tBodyAcc-std()-X
		tBodyAcc-std()-Y
		tBodyAcc-std()-Z
		tGravityAcc-std()-X
		tGravityAcc-std()-Y
		tGravityAcc-std()-Z
		tBodyAccJerk-std()-X
		tBodyAccJerk-std()-Y
		tBodyAccJerk-std()-Z
		tBodyGyro-std()-X
		tBodyGyro-std()-Y
		tBodyGyro-std()-Z
		tBodyGyroJerk-std()-X
		tBodyGyroJerk-std()-Y
		tBodyGyroJerk-std()-Z
		tBodyAccMag-std()
		tGravityAccMag-std()
		tBodyAccJerkMag-std()
		tBodyGyroMag-std()
		tBodyGyroJerkMag-std()
		fBodyAcc-std()-X
		fBodyAcc-std()-Y
		fBodyAcc-std()-Z
		fBodyAccJerk-std()-X
		fBodyAccJerk-std()-Y
		fBodyAccJerk-std()-Z
		fBodyGyro-std()-X
		fBodyGyro-std()-Y
		fBodyGyro-std()-Z
		fBodyAccMag-std()
		fBodyBodyAccJerkMag-std()
		fBodyBodyGyroMag-std()
		fBodyBodyGyroJerkMag-std()

mean(value)	Numeric	-1 < x < 1
   The mean of the measurement being reported on for this subject and activity
