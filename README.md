## Getting and Cleaning data assignment

The purpose of this repository is to prepare a tidy data of "Human Activity Recognition Using Smartphones Data Set". A definition of tidy data can be found [here](http://vita.had.co.nz/papers/tidy-data.pdf). We should pay attention to four principles:

  1. Each variable you measure should be in one column
  2. Each different observation of that variable should be in a different row
  3. There should be one table for each "kind" of variable
  4. If you have multiple tables, they should include a column in the table that allows them to be linked

The original data set can be retrieved from the directory "UCI HAR Dataset" or download from [this link] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Data Set

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check this [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for further details about this dataset. 

### Tidy Data Set

The tidy data set was obtained using R tool, version 3.1.3. The script run_analysis.R is the algorithm that generates a file containing the tidy data set. There are 5 steps in the script, which are explained below: 

##### Step 1. Merge the training and the test sets to create one data set.
  The original dataset was partitioned into two sets as explained above. One set generated the training data and the other, the test data. Besides, there were three different files for each set.
  
  1. Train set: X_train.txt, y_train.txt, subject_train.txt
  2. Test set: X_test.txt, y_test.txt, subject_test.txt
      
  * First, the X_train.txt and X_test.txt were read into data frame in R. Then, they were combined using rbind() function, because they have exactly the same columns. The file features.txt provided the column names for this data frame.
  * Then, y_train.txt and y_test.txt were loaded and merged in one column using rbind(). This column has the numbers representing the activity performed in each row of X_train.txt and X_test.txt files and it was named as "Activity". 
  * Following the same idea, subject_train.txt and subject_test.txt were read and merged in a column using rbind(). Those files have the information of the volunteer number that performed each activity. This column was named as "Subject".
  * The last merge was done to combine the three tables in only one data frame using cbind() function, since all of them had the same number of rows. 
  
The figure below represents the data set created in this step.

![alt text](https://github.com/adrianakawai/getting_and_cleaning_data_project/blob/master/figuredataset.png  "figuredataset.png")
      
##### Step 2. Extract only the measurements on the mean and standard deviation for each measurement. 
  Based on the data from step 1, it was selected only the columns whose name had the words "mean()" or "std()". The parse was done using grepl() function.
      
##### Step 3. Use descriptive activity names to name the activities in the data set
  The "Activity" column extracted from y_train.txt and y_test.txt files showed the activities as numbers from 1 to 6. The activity_labels.txt file, containing the association between the activity name and number, was loaded into R. Using factor() function, the number in each row could be associated with the activity name.
      
##### Step 4. Appropriately label the data set with descriptive variable names.
  The column names of data set obtained in step 1 had inappropriate characters, such as "(),-". Function sapply() was used to call the gsub() function for all the column names. The gsub() removed the characters "()" and replaced "-" and "," by underscore. 

##### Step 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
  So far, the table has many rows representing the measures extracted from each activity performed by 30 volunteers. All volunteers have performed all the six activities many times. The goal of this step is to calculate the mean value of all rows with the same volunteer and same activity. Since we have 30 volunteers and 6 activities, the result data set should have 180 rows containing mean values for each measurement. The functions melt() and dcast() were used to make this kind of transformation. [This link] (https://class.coursera.org/getdata-015/forum/thread?thread_id=27) has a detailed explanation about this procedure.

### Codebook

The [codebook](https://github.com/adrianakawai/getting_and_cleaning_data_project/blob/master/Codebook.md) explains all the variables in the tidy data obtained after executing "run_analysis.R" script. 

### Tidy data file

The [resultdataset.txt](https://github.com/adrianakawai/getting_and_cleaning_data_project/blob/master/resultdataset.txt) is the file containing the whole tidy data set.


