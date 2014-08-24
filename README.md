GettingCleaningData
===================

This is the ReadMe file for the course project of Coursera's Getting and Cleaning Data course.

# Project description

The project requested the students to do the following: 

1. Get some data from the following Url https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Create a script to clean the data
3. Upload the tidy data set to coursera
4. Create a github repository containing: this ReadMe file, the R script and a Code Book for the dataset.

The mentioned script should do the following things

> You should create one R script called run_analysis.R that does the following. 
> 
> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive variable names. 
> 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Tidy dataset

The tidy dataset has been created as required in the assignment. It contains 180 rows (one per participant and activity) and 68 variables (the first two contain the subject and the activity, the remaining 66 of them contain the average values of the mean and std variables of the original file). Note that the values are rounded to 4 decimal digits, to make the values more uniform.

It has been written to a file by using write.table using row.name=FALSE. This implies that the separator is a space, the decimal is a dot and the column names are written in the file.

# R script

The R script begins by loading the library reshape2, as its functionalities *melt* and *dcast* are used in the script.

Then, the script loads into data frames the following data from the given dataset:
* X_test table, containing the values for the test participants
* y_test table, containing the activity labels for test participants
* subject_test table, containing the participant labels for test participants
* X_train table, containing the values for the train participants
* y_train table, containing the activity labels for train participants
* subject_test table, containing the participant labels for train participants

*Note: the R script assumes that, in the working directory, there is a directory called "data" which contains the directory "UCI HAR Dataset", which is the one downloaded from the internet.*

After loading all the data, it creates a big data frame containing all the data. This is done in three steps: first all data from the test (resp. train) set is put in a data frame by column-binding the three test (resp. train) data frames, then the test and train datasets are row-bound together.

Once the dataset has been created, the measurements on the mean and the standard deviation are obtained. I have considered that a mean (resp. standard deviation) measurement is one which contains the mean() (resp. std()) substring in its variable name. The subsetting is done by reading the variable names inside features.txt, obtained those which have as substring either mean() or std() and subsetting the dataframe by those indexes. As the data frame also contains the activity label and the participant label, the indexes have to contain the last two rows (562 and 563).

Next, the variable names are processed to adhere to the standards of a tidy dataset. As given in the course, the names of the variables should be:
> * All lower case when possible
> * Descriptive (Diagnosis versus Dx)
> * Not duplicated
> * Not have underscores or dots or white spaces

In particular, the parenthesis are removed and the name is converted to lower case. The original variable names were not duplicated and did not have underscores, dots or white spaces. I consider that the variables are descriptive enough: if I had to make them more descriptive they would be too long.

Once the variable names have been processed, they are assigned to the columns of the data frame.

The next step is to use descriptive names for activities. I have first processed the activity names so that they are lower case and do not have underscores but whitespaces. Then, I have converted the activity names to factors (as recommended in the course videos) and I have finally assigned activity names instead of labels to the dataset.

Before moving to step 5 of the assignment, I have also converted the subject to a factor, since it is not really an integer value. Indeed, it makes not sense to add two participants, for example.

Finally, I have created the dataset required in step 5. I've done that by using the melt and dcast functions of the reshape2 library. By using the dcast function, I was able to easily get the average of each variable for each subject and activity.

Finally, I have also restricted each numeric value to have 4 decimal digits, to make the data more uniform.

# Code Book

The Code Book is self contained. I have explaining where the data comes from, what processing has been done to such data and, for each variable in the dataset, I have given its properties and a description.



