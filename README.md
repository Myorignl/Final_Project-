# Final_Project: Machine Learning Preliminary Findings

## Pre-Processing, Data Cleaning, Errors and Solutions

<img width="130" alt="Error_Caps_v_Lowercase" src="https://user-images.githubusercontent.com/106631875/198457801-96c943f4-6987-47b1-81e5-d88baf240310.png">

<img width="247" alt="Error_Date_String_to_Float" src="https://user-images.githubusercontent.com/106631875/198457877-aa58eab0-633d-4d26-a691-4f4b420f33bf.png">

![Error_over_116k_rows](https://user-images.githubusercontent.com/106631875/198457945-a35ec117-f759-4c4c-9319-5f82c43b07a2.png)

<img width="335" alt="Error_string_to_float" src="https://user-images.githubusercontent.com/106631875/198458098-74aaef3e-d22e-4e83-be56-acb80340098a.png">


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

The initial results yeilded a high accuracy score as shown below.

<img width="280" alt="Results_initial_with_APOT" src="https://user-images.githubusercontent.com/106631875/198458856-32057196-dba0-4c56-a9f5-d336ece950a0.png">

After running the models listed above, the Balanced Random Forest model seemed to provided the most accurate results. The model indicated there is strong relationship between the Status (wait time) and the 5 top importances.  

![Results_importances_initial](https://user-images.githubusercontent.com/106631875/198458636-c720af18-6a64-4216-85d5-93bd58d7e2b8.png)

## Refined Results

After reviewing the results and re-examining the data, it was noticed that the APOT and Status columns were too strongly related and maybe skewing the results.
In an effort to refine the results, we dropped the APOT (wait time) column which reduced the accuracy but in theory gave a truer value. 

![Results_no_APOT](https://user-images.githubusercontent.com/106631875/198459162-8f3f9024-ce6b-434c-a962-a155c8a237fe.png)

Looking closer at the top 5 importances, there seemed to be a strong relationsip with the APOT (wait time). On closure examination, the top 5 importances seemed to all be related. After further pre-processing our data, the model was run again with the index (renamed record), hospital code, lat and long dropped. 


## Conclusions

There are no firm conclusions at this point except that more research needs to be done. However, there does seem to be a strong relationship between the hospital and APOT (wait time). Beyond the machine learning models that were run, a linear regression model with a dependent variable of time of day and the independent variable of APOT (wait time) revealed a strong relationship to the time of day and duration of the wait time.
