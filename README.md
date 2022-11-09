# Final_Project: Machine Learning Preliminary Findings

## Pre-Processing, Data Cleaning, Errors and Solutions

Below is a sample of some of the errors that were incurred when cleaning our data:

<img width="130" alt="Error_Caps_v_Lowercase" src="https://user-images.githubusercontent.com/106631875/198457801-96c943f4-6987-47b1-81e5-d88baf240310.png">

The error above revealed a conflict between the same data that was in all CAPS vs Upper and lowercase. This was an easy fix which was resolved by creating consistent naming conventions.

<img width="247" alt="Error_Date_String_to_Float" src="https://user-images.githubusercontent.com/106631875/198457877-aa58eab0-633d-4d26-a691-4f4b420f33bf.png">

The error above revealed that the date values were string data types instead of float which meant we needed to convert the data type.

<img width="335" alt="Error_string_to_float" src="https://user-images.githubusercontent.com/106631875/198458098-74aaef3e-d22e-4e83-be56-acb80340098a.png">

The error above revealed that we had a column of data that was a mix of numerical values and alphanumerical values. After looking at the relationship between the columns, it was determined that the value of the column could be dropped since it was referenced by an adjacent value.

![Error_over_116k_rows](https://user-images.githubusercontent.com/106631875/198457945-a35ec117-f759-4c4c-9319-5f82c43b07a2.png)

The error above revealed a limitation which is addressed below. The dataset was too large to work with and we are seeking an alternative solution. 

## Limitations

Our dataset included over 500k rows of data which ended up being more than the machine learning models code run on my computer. In order to continue working with the data a smaller sample of only 1000 rows was used with plans to run a larger set.

## Models and Strategies 

Models and Strategies used include the following:

- Linear Regression
- Balanced Random Forest Classifier
- Easy Ensemble AdaBoost Classifier
- Oversampling
- SMOTE Oversampling
- Undersampling
- Combination (Over and Under) Sampling

## Initial Results

### Linear Regression

The initial results yeilded a high accuracy score as shown below.

<img width="280" alt="Results_initial_with_APOT" src="https://user-images.githubusercontent.com/106631875/198458856-32057196-dba0-4c56-a9f5-d336ece950a0.png">

### Balanced Random Forest Classifier
After running the models listed above, the Balanced Random Forest model seemed to provided the most accurate results. The model indicated there is strong relationship between the Status (wait time) and the 5 top importances.  

![Results_importances_initial](https://user-images.githubusercontent.com/106631875/198458636-c720af18-6a64-4216-85d5-93bd58d7e2b8.png)

### Easy Ensemble AdaBoost Classifier
![EasyEnsemblerAdaBoostClassifier1](https://user-images.githubusercontent.com/106631875/200724630-9027c236-6dda-4b4a-a0f2-704fdbc2bbf6.png)

![EasyEnsemblerAdaBoostClassifier2](https://user-images.githubusercontent.com/106631875/200724648-e5e53e9f-d6b3-4988-8564-9122e5b015eb.png)

### Oversampling
![Oversampling1](https://user-images.githubusercontent.com/106631875/200723901-9940280a-2c93-4c7e-82a6-80ae2e581f48.png)

![Oversampling2](https://user-images.githubusercontent.com/106631875/200723911-abe6d16c-7529-4a25-84b7-f3cdcea66c4f.png)

### SMOTE Oversampling
![SMOTE_Oversampling1](https://user-images.githubusercontent.com/106631875/200724033-6a54f629-53b4-4f69-9fb0-6043960e4855.png)

![SMOTE_Oversampling2](https://user-images.githubusercontent.com/106631875/200724052-49fe8cf3-4ddb-4769-bbfe-ba7623a4ceb4.png)

### Undersampling
![Undersampling1](https://user-images.githubusercontent.com/106631875/200724095-b4a120b4-5e98-461d-b37e-a727c34af39d.png)

![Undersampling2](https://user-images.githubusercontent.com/106631875/200724107-45c32459-22f3-4967-88fc-bba89b0888e9.png)

### Combination (Over and Under) Sampling
![CombinationOverUnder_Sampling](https://user-images.githubusercontent.com/106631875/200724150-197c06a2-250c-47e4-a414-784e97da87f5.png)
![CombinationOverUnder_Sampling2](https://user-images.githubusercontent.com/106631875/200724166-80593612-ff45-492f-ab4b-df83acb58159.png)

## Refined Results

After reviewing the results and re-examining the data, it was noticed that the APOT and Status columns were too strongly related and maybe skewing the results.
In an effort to refine the results, we dropped the APOT (wait time) column which reduced the accuracy but in theory gave a truer value. 

![Results_no_APOT](https://user-images.githubusercontent.com/106631875/198459162-8f3f9024-ce6b-434c-a962-a155c8a237fe.png)

Looking closer at the top 5 importances, there seemed to be a strong relationsip with the APOT (wait time). On closure examination, the top 5 importances seemed to all be related. After further pre-processing our data, the model was run again with the index (renamed record), hospital code, lat and long dropped. 

## Exploring the Relationships Between Data

### Random Sample of 50k: Impressions v APOT (Wait Times)

![Random_sample_50k_impression_v_APOT_breakdown](https://user-images.githubusercontent.com/106631875/200699398-b38ebc14-e25f-4556-81f5-093cfd12973a.png)

We created 5 APOT (waiting time) buckets to categorize the various wait times. As you can see in the above diagram, a majority of the wait times in this sample were 20 minutes or less (62%). The next largest group fell into the 21-60 minutes category (31.2%). The full results are in the chart below.

![Random_sample_50k_impression_v_APOT](https://user-images.githubusercontent.com/106631875/200699505-edd7603a-e262-4c60-ad9b-dcb4aabb61be.png)

### Hospital 280 Results

Below are the results of the Balanced Randome Forest Classifier for a single hospital (Hospital 280)

![Balanced_Random_Forest_Classifier_Hospital_280_All_results](https://user-images.githubusercontent.com/106631875/200699596-304bdb73-9158-4385-9f9b-207381580db2.png)

Below are the results of the Easy Ensemble Adaboost Classifier for a single hospital (Hospital 280)

![Easy_Ensemble_Adaboost_Classifier_Hospital_280_All_results](https://user-images.githubusercontent.com/106631875/200699706-2afedf29-cf26-459b-bb4a-b2750a223512.png)

## Conclusions

There are no firm conclusions at this point except that more research needs to be done. However, there does seem to be a strong relationship between the hospital and APOT (wait time). Beyond the machine learning models that were run, a linear regression model with a dependent variable of time of day and the independent variable of APOT (wait time) revealed a strong relationship to the time of day and duration of the wait time.
