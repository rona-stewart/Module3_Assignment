## Merges the training and the test sets to create one data set.
## Obtain the datasets
download.file ("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","Trainingdata.zip")

## Unzip the dataset 
zipfilepath <- "[file path redacted]\\Trainingdata.zip"
extracted_dir <- "[file path redacted]\\Data"
if (!dir.exists(extracted_dir)) {
        dir.create(extracted_dir)
}
unzip(zipfilepath, exdir = extracted_dir)

## Read the label files into R and create label vectors
features <- read.table("./Data/UCI HAR Dataset/features.txt")
feature_names <- unlist(features[2])
activity_labels <- read.table("./Data/UCI HAR Dataset/activity_labels.txt")
activity_names <- unlist(activity_labels[2])

## Read the test files into R
testsubjectid <- read.table("./Data/UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./Data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./Data/UCI HAR Dataset/test/y_test.txt")

## Combine the test datasets and assign label names
set_test <- rep("test", times = nrow(X_test))
combined_data_test <- cbind(testsubjectid, set_test, y_test)
names(combined_data_test) <- c("subjectid", "set", "activity")
names(X_test) <- feature_names
combined_data_test <- cbind(combined_data_test,X_test)

## Read the training files into R
trainsubjectid <- read.table("./Data/UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./Data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./Data/UCI HAR Dataset/train/y_train.txt")

## Combine the training datasets and assign label names
set_train <- rep("train", times = nrow(X_train))
combined_data_train <- cbind(trainsubjectid, set_train, y_train)
names(combined_data_train) <- c("subjectid", "set", "activity")
names(X_train) <- feature_names
combined_data_train <- cbind(combined_data_train,X_train)

## combine with subject id and y as matching columns
all_data <- rbind(combined_data_test, combined_data_train)

## Create vector of activity names to replace activity references
activity_vector <- match(all_data$activity, activity_labels[,1])
all_data$activity <- ifelse(!is.na(activity_vector), activity_names[activity_vector], all_data$activity)

## Extracts only the measurements on the mean and standard deviation for each measurement. 
rel_cols <- grep("mean\\()|std\\()", names(all_data), value = TRUE)
mean_std <- all_data[,c("subjectid", "set", "activity", rel_cols)]

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_data <- tbl_df(mean_std)
tidy_data <- tidy_data %>%
        group_by(subjectid, activity, set) %>%
        summarise(across(everything(),mean))

