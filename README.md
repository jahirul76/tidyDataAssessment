This repository contains a [R script](./run_analysis.R) for processing raw 'UCI HAR Dataset' found in the link below. The script creates a tidy dataset ready for further analysis. It also contains a [CodeBook](./CodeBook.md) describing the tidy dataset and steps taken to clean up the data. 

  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More information about this dataset can be found in [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


## Transformation Steps (see [run_analysis.R](./run_analysis.R))
  * `Training` and `test` dataset along with `subject` and `activity` data were merged to  form a new dataset.
  * All variables in the dataset were labelled/re-labelled
  * All columnns except **mean** and **std** measurements for X, Y, Z axis were removed
  * Replace activity Ids with activity labels to produce a new clean dataset
  * Clean dataset is then summarised by `Subject` and `Activity` variable for all other  variables to create new tidy dataset.
  * Relabel variables names
  * Write tidy dataset to `merged_means.txt` file



###Instructions

1. Download [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

2. Extract the zip file to './data' under the working directory

3. Run `run_analysis.R` from working directory to produce merged_means.txt


