==================================================================
Summary of Selected Data of Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Based on the work of:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

This code summarizes selected data (specifically those related to mean and standard deviation) from the source data. The following actions are performed:

1) Read the training and test data to create a single data set. At this point it is also appropriate to properly name the variables.
2) Removes duplicate column names from the data set. This is done by simply naming the column by its position, since the data in these columns is not required for further analysis.
3) Add the descriptive activity names to the data set.
4) Extract only the selected measurements, based on the column containing "mean()" or "std()".
5) Tidies the data set such that each measurement is in its own row and each variable is in its own column.
6) Writes the resulting data set to 'summary_tidy_data.txt' which can be read back using > read.table("summary_tidy_data.txt",head=TRUE,sep=" ").

The dataset includes the following files:
=========================================

- 'readme.md'

- 'summary_tidy_data.txt': Summarizes each measurement for each subject and activity

- 'codebook.md': Describes the data in detail

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
