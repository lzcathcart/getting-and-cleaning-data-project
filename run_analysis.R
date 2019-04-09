#read training set
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt", col.names="label")
subject_train <- read.table("subject_train.txt", col.names="subject")

#read testing set
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt", col.names="label")
subject_test <- read.table("subject_test.txt", col.names="subject")

#read variable names
features <- read.table("features.txt", strip.white=TRUE, stringsAsFactors=FALSE)

#read activity labels
activity_labels <- read.table("activity_labels.txt")

#STEP 1: merge the training and testing sets
mergedTestTrainSub <- rbind(cbind(subject_test, y_test, X_test),
                            cbind(subject_train, y_train, X_train))

#STEP 2: extract only the measurement on the mean and standard deviation for each measurement
featuresmeanstd <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]
mergedmeanstd <- mergedTestTrainSub[, c(1, 2, featuresmeanstd$V1+2)]

#STEP 3: add descriptive activity names to name the activities in the set
mergedmeanstd$label <- activity_labels[mergedmeanstd$label, 2] 

#STEP 4: label the data set with descriptive variable names/tidy label names
mergedcolnames <- c("subject", "label", featuresmeanstd$V2) 
mergedcolnames <- tolower(gsub("[^[:alpha:]]", "", mergedcolnames)) 
colnames(mergedmeanstd) <- mergedcolnames

#STEP 5: create tidy data set with average of each variable, activity, and subject
aggmerge <- aggregate(mergedmeanstd[, 3:ncol(mergedmeanstd)], 
                      by=list(subject = mergedmeanstd$subject, 
                      label = mergedmeanstd$label), mean)

#write for course upload 
write.table(format(aggmerge, scientific=T), "tidy.txt", row.names=F, col.names=F, quote=2)