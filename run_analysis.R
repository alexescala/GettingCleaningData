library(reshape2)  ## will be needed at the end of the script

## Reading, merging data, as required in step 1
X_test <- read.table("data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
X_train <- read.table("data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
test_data <- cbind(X_test,y_test,subject_test)
train_data <- cbind(X_train,y_train,subject_train)
data <- rbind(train_data,test_data)

## Reading feature names, selecting those with mean or std
## and subsetting data frame, as required in step 2
feature_names <- read.table("data/UCI HAR Dataset/features.txt",colClasses=c(NULL,"character"))[,2]
index_target_feature_names <- grep("mean\\()|std\\()",feature_names)
indexes <- c(index_target_feature_names,562:563)
data_subset <- data[,indexes]


## Renaming variables, assigning column names to the dataframe, as required in step 4
fnames_subset <- feature_names[index_target_feature_names]
fnames_subset <- tolower(sub("\\()","",fnames_subset))
var_names <- c(fnames_subset,"activity","subject")
colnames(data_subset) <- var_names

## Using descriptive names, as required in step 3
activity_names <- read.table("data/UCI HAR Dataset/activity_labels.txt")[,2]
activity_names <- tolower(gsub("_"," ",activity_names))
activity_names <- factor(activity_names)
data_subset$activity <- activity_names[data_subset$activity]

## converting subject to a factor variable
data_subset$subject <- factor(data_subset$subject)

## creating the dataset required for step 5
dataMelt <- melt(data_subset,measure.vars=fnames_subset,id=c("activity","subject"))
data_average <- dcast(dataMelt,subject+activity~variable,mean)
data_average[,3:68] <- round(data_average[,3:68],digits=4)

## return the created tidy data set
data_average