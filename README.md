# Final Project - Segment 1 (Group 7)

## Presentation  

### Overview 

Ambulance Patient Offload Times for Sacramento County Hospitals. Develop a regressive model that can provide predictive data for each hospital.  Identify what patterns exist within the data through machine learning. The report will assist Hospital staff in addressing staffing issues and hospital throughput as well as assist ambulance companies in better planning unit allocation. The dataset used and authorization for this project was obtained from the Sacramento County EMS Agency. 

### Description 

Extended Ambulance Patient Offload Times create idle ambulances that could be needed for emergencies on the road but are instead waiting for their patient to be placed in an ED bed. When an ambulance crew is awaiting placement, they are unable to respond to another emergency call. There are numbered ambulance resources for Sacramento County and lack of unit availability due to APOT translates into longer EMS responses to the detriment of the community.

### Audience

* Hospital staff and Ambulance Drivers. 

### Dataset Questions  

  - Which impressions has the longest/shortest APOTs? (Overall and by Hospital codes)
  - Compare impressions to zip codes. Which zip codes have the highest/lowest rates of which impressions? 
  - Which zip codes utilize ambulance transports to the ER the most in 2017-2022?
  - Wait times per hospital by date/time 
  - Do any patterns arise from the data? 

### Measuring metrics for ambulance patient offload times  

Time frame: 
* (<=20.49)
* (>=20.50 to <=60.49)
* (>=60.50 to <=120.49)
* (<=120.50 to <=180.49)
* (<=180.50)

90th Percentile of APOT per Hour
* Create array per hour by hospital and generate a 90th percentile

### Technologies Used 

* Jupyter Notebook & Pandas 
* Visual Studio Code
* PostgreSQL
* SciKit-Learn Libraries
* Undetermined Which to Use: Tableau or User Interface 

## Github

  * Repository Created with individual branches for each team member
  * Assigned team member handling merges into the main branch 
  * Each idividual is responsible to submit required commits into their repository by due date

## Database 

The database selected is Structured Query Language (SQL). The use of this database will allow the creation of subsets / tables of teh original csv file. Setup of the table has been acomplished by the assigned team member, tables have been generated as requested. 



### *Example of tables created:* 

 [January to March 2017-2021 EMS Table 1](https://github.com/Myorignl/Final_Project7/blob/Bethany/CSV_file/EMS_table_groupby_month_range/JanMar_20172021_EMS_table.csv)

   [April to June 2017-2021 EMS Table 2](https://github.com/Myorignl/Final_Project7/blob/Bethany/CSV_file/EMS_table_groupby_month_range/AprJun_20172021_EMS_table.csv)

   [July to September 2017-2021 EMS Table 3](https://github.com/Myorignl/Final_Project7/blob/Bethany/CSV_file/EMS_table_groupby_month_range/JulSep_20172021_EMS_table.csv)

   [October to December 2017-2021 EMS Table 4](https://github.com/Myorignl/Final_Project7/blob/Bethany/CSV_file/EMS_table_groupby_month_range/OctDec_20172021_EMS_table.csv)


Below is an example of our database used for querying our data.

![EMS_table_example](https://user-images.githubusercontent.com/86776606/198105316-4fd46a12-c9d6-4c02-80e7-fb90a5cb1e8d.png)



### SQL query used to create the table.

![SQL Query](https://user-images.githubusercontent.com/86776606/198105999-4e12c30b-a92c-4a79-8b48-81a07161938b.png)

Queries used to filter the data from 2017-2021 but only specific month ranges.

[Filtered SQL Queries](https://user-images.githubusercontent.com/86776606/198159708-e7ea6b22-59a2-4785-b402-61366ac2193e.png)

Queries used to filter the data from 2017-2021 but only specific month ranges for bethany_data, removing certain columns to test for user interface in javascript/html portion.

[Bethany Filtered Queries](https://user-images.githubusercontent.com/86776606/198160003-77832b0d-e6c8-4ca4-b076-0dfcf453c39d.png)

## Machine Learning 

SkiKit-Learn is the selected Machine Learning Module that will be used during this project. The hosting platform will be utilized on Github.
Models and Strategies used include the following:

- Linear Regression
- Balanced Random Forest Classifier
- Easy Ensemble AdaBoost Classifier
- Oversampling
- SMOTE Oversampling
- Undersampling
- Combination (Over and Under) Sampling

### Pre-Processing, Data Cleaning, Errors and Solutions

Below is a sample of some of the errors that were incurred when cleaning our data:



[Error_Caps_v_Lowercase](https://user-images.githubusercontent.com/106631875/198457801-96c943f4-6987-47b1-81e5-d88baf240310.png)

The error above revealed a conflict between the same data that was in all CAPS vs Upper and lowercase. This was an easy fix which was resolved by creating consistent naming conventions.

[Error_Date_String_to_Float](https://user-images.githubusercontent.com/106631875/198457877-aa58eab0-633d-4d26-a691-4f4b420f33bf.png)

The error above revealed that the date values were string data types instead of float which meant we needed to convert the data type.

[Error_string_to_float](https://user-images.githubusercontent.com/106631875/198458098-74aaef3e-d22e-4e83-be56-acb80340098a.png)

The error above revealed that we had a column of data that was a mix of numerical values and alphanumerical values. After looking at the relationship between the columns, it was determined that the value of the column could be dropped since it was referenced by an adjacent value.

[Error_over_116k_rows](https://user-images.githubusercontent.com/106631875/198457945-a35ec117-f759-4c4c-9319-5f82c43b07a2.png)

The error above revealed a limitation which is addressed below. The dataset was too large to work with and we are seeking an alternative solution. 

### Limitations

Our dataset included over 500k rows of data which ended up being more than the machine learning models code run on my computer. In order to continue working with the data a smaller sample of only 1000 rows was used with plans to run a larger set.

### Initial Results

The initial results yielded a high accuracy score =0.988, as shown below:

[Results_initial_with_APOT](https://user-images.githubusercontent.com/106631875/198458856-32057196-dba0-4c56-a9f5-d336ece950a0.png)

After running the models listed above, the Balanced Random Forest model seemed to provide the most accurate results. The model indicated that there is strong relationship between the Status (wait time) and the 5 top importances.  

[Results_importances_initial](https://user-images.githubusercontent.com/106631875/198458636-c720af18-6a64-4216-85d5-93bd58d7e2b8.png)

### Refined Results

After reviewing the results and re-examining the data, it was noticed that the previous Status buckets columns were too strongly related and may be skewing the results. Thus, we updated the Status buckets and refined the buckets, to more specific time buckets, in hopes that would take care of possible overfitting.
In an effort to refine the results, we dropped the APOT (wait time) column which reduced the accuracy but in theory gave a truer value. 

[Target Column Values](https://github.com/Myorignl/Final_Project7/blob/Bethany/input_labels_tabledata.png)

The previous Status buckets used: 

* Benchmark
('0 (<20min)')
* Extreme
('1 (>20.01min)')

The updated Status buckets were changed to: 

* Benchmark
('0 (<20min)')  
* Extreme
('1 (>21-60min)')
('2 (>61-120min)')
('3 (>121-180min)')
('4 (>181 min)')

[Results_no_APOT](https://user-images.githubusercontent.com/106631875/198459162-8f3f9024-ce6b-434c-a962-a155c8a237fe.png)

Looking closer at the top 5 importances, there seemed to be a strong relationsip with the APOT (wait time). On closure examination, the top 5 importances seemed to all be related. After further pre-processing our data, the model was run again with the index (renamed record), hospital code, lat and long dropped. 


### Preliminary Machine Learning Conclusions

There are no firm conclusions at this point except that more research needs to be done. However, there does seem to be a strong relationship between the hospital and APOT (wait time). Beyond the machine learning models that were run, a linear regression model with a dependent variable of time of day and the independent variable of APOT (wait time) revealed a strong relationship to the time of day and duration of the wait time.


## Team Roles 

1. Bethany
   * Github Contributer/Collaborator: created at least one branch for each team member, merge/pull requests, 4 commits from each team member verified
   * Data Cleaning: Pandas and Jupyter notebook 
   [Data Cleaning Notebook](https://github.com/Myorignl/Final_Project7/blob/Bethany/datacleaning_jupyter/Clean__ems_data.ipynb)
   * README.md writeup

2. Dorthy 
   * Data extraction & cleaning 
   * Presentation & structure

3. Matt 
   * PostgreSQL setup and database storage
   * Preparation of dataset tables: 

4. Steven 
   * Machine Learning Models: SkiKit-Learn
   * Data Cleaning for ML models


