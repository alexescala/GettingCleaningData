# Summary

This tidy dataset was obtained by cleaning the dataset available in:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The following was extracted from the documentation of that dataset:

> The data set contains data from experiments carried out with a group of 30 volunteers within an age bracket of 19 to -48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz.
>
> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
> 
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, > fBodyAccJerk-> XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain > signals). 
> 
> The set of variables that were estimated from these signals are: 
> 
> mean(): Mean value  
> std(): Standard deviation  
> mad(): Median absolute deviation   
> max(): Largest value in array  
> min(): Smallest value in array  
> sma(): Signal magnitude area  
> energy(): Energy measure. Sum of the squares divided by the number of values.   
> iqr(): Interquartile range   
> entropy(): Signal entropy  
> arCoeff(): Autorregresion coefficients with Burg order equal to 4  
> correlation(): correlation coefficient between two signals  
> maxInds(): index of the frequency component with largest magnitude  
> meanFreq(): Weighted  Average of the frequency components to obtain a mean frequency  
> skewness(): skewness of the frequency domain signal   
> kurtosis(): kurtosis of the frequency domain signal   
> bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
> angle(): Angle between to vectors.  

## Cleaning the dataset

The previous dataset was cleaned as follows:

1. The set of variables which were kept were: mean() and std() for each of the signals.
2. The activity of each measurement is given as the name of the name of the activity instead of the index of the activity and a separate file with a list of activities.
3. The names of the variables have been slightly renamed to adhere to the rules of a tidy dataset.
4. The value that appears in the dataset is the average over the variables for a given participant and activity.

# Code Book

The structure of the following Code Book is:
 Variable name  
 Variable type  
 Range of values  
 Variable field width (number of columns needed to describe the longest value of the variable)  
 Variable definition  

 subject   
 factor  
 30 levels: 1, 2,...,30  
 field width = 2  
 The identifier of the subject for which the measurement was taken  

 activity  
 factor  
 6 levels: laying, sitting, standing, walking, walking downstairs, walking upstairs  
 field width = 18  
 The name of the activity which was doing the subject when the measurement was taken  

 tbodyacc-mean-x  
 numeric      
 [-1,1]      
 field width = 7       
 Average of the mean value of the (time-domain) body component of the accelerometer measurement in the x axis, for the given subject and activity      

 tbodyacc-mean-y  
 numeric      
 [-1,1]      
 field width = 7       
 Average of the mean value of the (time-domain) body component of the accelerometer measurement in the y axis, for the given subject and activity      

 tbodyacc-mean-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (time-domain) body component of the accelerometer measurement in the z axis, for the given subject and activity    

 tbodyacc-std-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) body component of the accelerometer measurement in the x axis, for the given subject and activity    

 tbodyacc-std-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) body component of the accelerometer measurement in the y axis, for the given subject and activity    

 tbodyacc-std-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) body component of the accelerometer measurement in the z axis, for the given subject and activity    

 tgravityacc-mean-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (time-domain) gravity component of the accelerometer measurement in the x axis, for the given subject and activity    

 tgravityacc-mean-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (time-domain) gravity component of the accelerometer measurement in the y axis, for the given subject and activity    

 tgravityacc-mean-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (time-domain) gravity component of the accelerometer measurement in the z axis, for the given subject and activity    

 tgravityacc-std-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) gravity component of the accelerometer measurement in the x axis, for the given subject and activity    

 tgravityacc-std-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) gravity component of the accelerometer measurement in the y axis, for the given subject and activity    

 tgravityacc-std-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) gravity component of the accelerometer measurement in the z axis, for the given subject and activity    

 tbodyaccjerk-mean-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the time-derived (time-domain) body component of the accelerometer measurement in the x axis, for the given subject and activity    

 tbodyaccjerk-mean-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the time-derived (time-domain) body component of the accelerometer measurement in the y axis, for the given subject and activity    

 tbodyaccjerk-mean-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the time-derived (time-domain) body component of the accelerometer measurement in the z axis, for the given subject and activity    

 tbodyaccjerk-std-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the time-derived (time-domain) body component of the accelerometer measurement in the x axis, for the given subject and activity    

 tbodyaccjerk-std-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the time-derived (time-domain) body component of the accelerometer measurement in the y axis, for the given subject and activity    

 tbodyaccjerk-std-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the time-derived (time-domain) body component of the accelerometer measurement in the z axis, for the given subject and activity    

 tbodygyro-mean-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (time-domain) gyroscope measurement in the x axis, for the given subject and activity    

 tbodygyro-mean-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (time-domain) gyroscope measurement in the y axis, for the given subject and activity    

 tbodygyro-mean-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (time-domain) gyroscope measurement in the z axis, for the given subject and activity    

 tbodygyro-std-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) gyroscope measurement in the x axis, for the given subject and activity    

 tbodygyro-std-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) gyroscope measurement in the y axis, for the given subject and activity    

 tbodygyro-std-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) gyroscope measurement in the z axis, for the given subject and activity    

 tbodygyrojerk-mean-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the time-derived (time-domain) gyroscope measurement in the x axis, for the given subject and activity    

 tbodygyrojerk-mean-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the time-derived (time-domain) gyroscope measurement in the y axis, for the given subject and activity    

 tbodygyrojerk-mean-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the time-derived (time-domain) gyroscope measurement in the z axis, for the given subject and activity    

 tbodygyrojerk-std-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the time-derived (time-domain) gyroscope measurement in the x axis, for the given subject and activity    

 tbodygyrojerk-std-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the time-derived (time-domain) gyroscope measurement in the y axis, for the given subject and activity    

 tbodygyrojerk-std-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the time-derived (time-domain) gyroscope measurement in the z axis, for the given subject and activity    
  
 tbodyaccmag-mean  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (time-domain) magnitude (using the Euclidean norm) of the body component of the accelerometer measurement, for the given subject and activity  

 tbodyaccmag-std  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) magnitude (using the Euclidean norm) of the body component of the accelerometer measurement, for the given subject and activity  

 tgravityaccmag-mean  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (time-domain) magnitude (using the Euclidean norm) of the gravity component of the accelerometer measurement, for the given subject and activity  

 tgravityaccmag-mean  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) magnitude (using the Euclidean norm) of the gravity component of the accelerometer measurement, for the given subject and activity
  
 tbodyaccjerkmag-mean  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the time-derived (time-domain) magnitude (using the Euclidean norm) of the accelerometer measurement, for the given subject and activity    

 tbodyaccjerkmag-std  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the time-derived (time-domain) magnitude (using the Euclidean norm) of the accelerometer measurement, for the given subject and activity  

 tbodygyromag-mean  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (time-domain) magnitude (using the Euclidean norm) of the gyroscope measurement, for the given subject and activity     

 tbodygyromag-std  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (time-domain) magnitude (using the Euclidean norm) of the gyroscope measurement, for the given subject and activity    
 
 tbodygyrojerkmag-mean  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the time-derived (time-domain) magnitude (using the Euclidean norm) of the gyroscope measurement, for the given subject and activity    

 tbodygyrojerkmag-std  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the time-derived (time-domain) magnitude (using the Euclidean norm) of the gyroscope measurement, for the given subject and activity    

 fbodyacc-mean-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) body component of the accelerometer measurement in the x axis, for the given subject and activity    

 fbodyacc-mean-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) body component of the accelerometer measurement in the y axis, for the given subject and activity    

 fbodyacc-mean-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) body component of the accelerometer measurement in the z axis, for the given subject and activity    

 fbodyacc-std-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) body component of the accelerometer measurement in the x axis, for the given subject and activity    
 fbodyacc-std-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) body component of the accelerometer measurement in the y axis, for the given subject and activity    
 fbodyacc-std-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) body component of the accelerometer measurement in the z axis, for the given subject and activity    
 fbodyaccjerk-mean-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) time-derived body component of the accelerometer measurement in the x axis, for the given subject and activity  

 fbodyaccjerk-mean-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) time-derived body component of the accelerometer measurement in the y axis, for the given subject and activity  

 fbodyaccjerk-mean-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) time-derived body component of the accelerometer measurement in the z axis, for the given subject and activity

 fbodyaccjerk-std-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) time-derived body component of the accelerometer measurement in the x axis, for the given subject and activity

 fbodyaccjerk-std-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) time-derived body component of the accelerometer measurement in the y axis, for the given subject and activity

 fbodyaccjerk-std-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) time-derived body component of the accelerometer measurement in the z axis, for the given subject and activity

 fbodygyro-mean-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) gyroscope measurement in the x axis, for the given subject and activity    

 fbodygyro-mean-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) gyroscope measurement in the y axis, for the given subject and activity    

 fbodygyro-mean-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) gyroscope measurement in the z axis, for the given subject and activity    

 fbodygyro-std-x  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) gyroscope measurement in the x axis, for the given subject and activity    

 fbodygyro-std-y  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) gyroscope measurement in the y axis, for the given subject and activity    

 fbodygyro-std-z  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) gyroscope measurement in the z axis, for the given subject and activity    

 fbodyaccmag-mean  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) magnitude (using the Euclidean norm) of the body component of the accelerometer measurement, for the given subject and activity

 fbodyaccmag-std  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) magnitude (using the Euclidean norm) of the body component of the accelerometer measurement, for the given subject and activity     

 fbodybodyaccjerkmag-mean  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) time-derived magnitude (using the Euclidean norm) of the accelerometer measurement, for the given subject and activity

 fbodybodyaccjerkmag-std  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) time-derived magnitude (using the Euclidean norm) of the accelerometer measurement, for the given subject and activity 

 tbodygyromag-mean  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) magnitude (using the Euclidean norm) of the gyroscope measurement, for the given subject and activity    

 tbodygyromag-std  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) magnitude (using the Euclidean norm) of the gyroscope measurement, for the given subject and activity

 tbodygyrojerkmag-mean  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the mean value of the (frequency-domain, using the FFT) time-derived magnitude (using the Euclidean norm) of the gyroscope measurement, for the given subject and activity

 tbodygyrojerkmag-std  
 numeric    
 [-1,1]    
 field width = 7     
 Average of the standard deviation of the (frequency-domain, using the FFT) time-derived magnitude (using the Euclidean norm) of the gyroscope measurement, for the given subject and activity 