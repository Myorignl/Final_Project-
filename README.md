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
  * Each individual is responsible to submit required commits into their repository by due date
 
## Storyboard 

[Google Slides](https://github.com/Myorignl/Final_Project7/blob/main/Final%20Project%20Segment%202%20Slides.pdf)

## Dashboard (Bethany - Deliverable 3) 

* Tools Used to Create Final Dashboard: 
  * Tableau
  * HTML
  * Javascript

By using the EMS dataset, we will show the relationship of ICD impression codes v. Hospital Code, ICD impression codes v. APOT times, Hospital Code v. APOT times. These relationships will be illustrated graphically, in which users can explore the data using applied filters on each chart. By looking at each chart, the user should be able to understand the reasoning behind why these features were chosen for our machine learning model. For example, when looking at the 'Hospital code v. APOT Times' bar chart, there is a variation of APOT times depending on the hospital, which begs the question, 'Why would the APOT times be higher at one hospital versus another? Does the type of ICD impression influence the APOT times? Or, do some hospitals receive more of one type of ICD impression than another, and is that what it influencing the APOT times?'. 

* Interactive Elements: Applied filters on each chart 
  * ICD impression codes v. Hospital Code: Hospital Code Filter 
  * ICD impressions v. APOT Times: ICD impression Filter 
  * Hospital Code v. APOT Times: Hospital Code Filter
* Other Dashboard Elements: 
  * Confusion Matrix Table 
  * Machine Learning Model Results Table: Accuracy Score, F1 Score, Ranking Importance of Features
  
![EMS Home Page](https://github.com/Myorignl/Final_Project7/blob/Bethany/EMS_JavaScript_Bethany/vCharts_WebPg1_Bethany.png)

![EMS Maps Tab Page](https://github.com/Myorignl/Final_Project7/blob/Bethany/EMS_JavaScript_Bethany/vMaps_WebPg2_Bethany.png)

## Database 

The database selected is Structured Query Language (SQL). The use of this database will allow the creation of subsets / tables of the original csv file. Setup of the table has been accomplished by the assigned team member, tables have been generated as requested. 

An ERD Diagram was also created as a reference for creating the database tables in SQL. 
[ERD Diagram](https://github.com/Myorignl/Final_Project7/blob/Matt/Images/EMS_ERD_Diagram.png)

![image](https://user-images.githubusercontent.com/104601282/199882738-09efc61a-4915-499b-a875-90b186c29ef2.png)


### *Example of Tables Created:* 

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

Our dataset included over 500k rows of data which ended up being more than the machine learning models code run on my computer. In order to continue working with the data, a smaller random sample of only 10000 rows was used with plans to run a larger set.

### Initial Results

The initial results yielded a high accuracy score =0.988, as shown below:

[Results_initial_with_APOT](https://user-images.githubusercontent.com/106631875/198458856-32057196-dba0-4c56-a9f5-d336ece950a0.png)

After running the models listed above, the Balanced Random Forest model resulted in a higher accuracy and F1 score than the other models tested. The model indicated that there is strong relationship between the Status (wait time) and the 5 top feature importances.  

[Results_importances_initial](https://user-images.githubusercontent.com/106631875/198458636-c720af18-6a64-4216-85d5-93bd58d7e2b8.png)

### Refined Results

After reviewing the results and re-examining the data, it was noted that the previous Status buckets columns were too closely related and may be skewing the results. Thus, we updated the Status buckets and refined the buckets, to more specific time buckets, in hopes that would take care of possible overfitting.
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

Looking closer at the top 5 features, there seemed to be a strong relationship with the APOT (wait time). Upon closer examination, the top 5 features appear to be related. After further pre-processing our data, the model was run again with the index (renamed id), hospital code, lat and long dropped. 


### Preliminary Machine Learning Conclusions

There are no firm conclusions at this point except that more research needs to be done. However, there does seem to be a strong relationship between the hospital code and APOT (wait time). Beyond the machine learning models that were run, a linear regression model with a dependent variable of time of day and the independent variable of APOT (wait time) revealed a strong relationship to the time of day and duration of the wait time.

### Machine Learning (Bethany & Steven - Deliverable 3)

* Description of data preprocessing  

The data preprocessing portion of the project has been one of the greatest takeaways and lessons learned while completing this project. Initially we did the basic preprocessing of cleaning the data by dropping null values, converting data to numerical values and using the get.dummies method.  
 
One of our initial assumptions was that if we had a lot of data, it would make the accuracy of our models better. However after running several machine learning models, we realized this wasn’t necessarily true. While our initial accuracy scores were high, we eventually realized we were experiencing an example of the “garbage in, garbage out” concept in computer science (GIGO). 
 
We had extra columns that did not contribute to outcome of the model and we also had columns that were essentially double counting data and creating artificially higher accuracy scores. These were unnecessary columns that did not benefit the predictability of the model. 
 
The Balanced Random Forest Classifier model contributed a lot to our ability to recognize which features or columns were actually relevant to our target.   
 
* Description of feature engineering and the feature selection, including the decision-making process  

We relied heavily on the ability of the Balanced Random Forest Classifier model to quantify the impact of various datapoints on predicting our outcome/target. Each time we ran the model we were able to re-examine which datapoints were having the biggest impact and should be included in the dataset.   

While the Balanced Random Forest Classifier model gave us a lot of insight into the feature importances of our data and proved to be invaluable because of that, it didn’t ultimately provide the best results. After more preprocessing and refining our data, the Gradient Boosting Classifier model provided the best results.  

 * Our initial columns for our dataset were:  
   * Index, Record, ID, Hospital_Code, Date, APOT, Impression, Postal_Code, AgencyNumber, Agency_Unit, Latitude, Longitude and Status.  

 * After preprocessing and refining, our dataset became:  
   * arrival_hour, pickup_date_num, apot_num, hospital_num and impressions_num  
 
* Description of how data was split into training and testing sets  
 

The feature set was defined by dropping the “apot_num” column and setting the target. The data was then split into the training and testing sets. We created an instance of the StandardScaler and fit the scaler with the training set and scaled the data. 

* Explanation of model choice, including limitations and benefits  

We attempted to run our data through a majority of the supervised models from module 17, including:  

* Linear Regression  
* Balanced Random Forest Classifier  
* Easy Ensemble AdaBoost Classifier  
* Oversampling  
* SMOTE Oversampling  
* Undersampling  
* Combination (Over and Under) Sampling  
 
As we looked at the results, we realized that in some instances, our particular dataset was not suited for the model. In most cases, the accuracy scores were similar. As mentioned above, the Balanced Random Forest Classifier model didn’t provide the best results, but it’s feature importances capabilities gave us greater insight on which data had the biggest impact on predicting our outcome/target. Through trial and error we found our best results with the Gradient Boosting Classifier model.  

* Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)  

In segments 1 and 2, we relied heavily on the Balanced Random Forest Classifier model. After refining our data, we tried the Gradient Boosting Classifier and it provided the best results.  
* Description of how they have trained the model thus far, and any additional training that will take place  

We have worked with various sample sizes of our data through the preprocessing, refining and training phases and we have additional data that we can run to test the model’s ability to predict our outcome/target.  

* Description of current accuracy score  
The accuracy score of the Gradient Boosting Classifier model is 0.68.   
The results of the confusion matrix are below:  
  
* The feature importances are provided below:  

The feature importances seem to focus mainly on the hospital_num (0.617) and arrival_hour (=0.225).   
  
* Additionally, the model obviously addresses the question or problem the team is solving.  

With a reasonable degree of certainty, the model is capable of predicting long APOTs (original question). By using multiple machine learning models, we have also gained a new understanding of what were initially thought to have the biggest impacts on high APOTs. It was initially thought that the impression (trauma, injury or medical event) would have a significant impact on predicting high APOTs. However the models revealed that the particular hospital and arrival time of day and day of the week had the biggest impact. This is likely due to certain hospitals having more traffic or being busier than others in general, perhaps due to their location/convenience to city centers, or their capacity to treat a greater spectrum of emergencies and convenience to walk-in emergencies. Arrival time and day of the week are also likely tied to hospital traffic which will have a direct impact on APOTs.   
  
As much as the machine learning has provided answers to our original question, it has also shed light on additional data that could be relevant to achieving a higher accuracy score. Hospital staffing numbers, capacity and walk-in numbers could all potentially contribute to a higher degree of accuracy. 


## Team Roles & Communication Protocols (Deliverable 1) 

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
   * Preparation of dataset tables & ERD diagram
   [ERD Diagram](https://github.com/Myorignl/Final_Project7/blob/Matt/EMS_ERD_Diagram.png)

4. Steven 
   * Machine Learning Models: SkiKit-Learn
   * Data Cleaning for ML models
   
   [Balanced Random Forest Model .IPYNB](https://github.com/Myorignl/Final_Project7/blob/Steven/final_project_easy_ensemble_adaboost_hospital_280_All_new.ipynb)

## Team Roles & Communication Protocols (Deliverable 2)

1. Bethany

Bethany attempted to produce an interactive webpage using Javascript, but the .json file was not formatted correctly to be read into the console. The .json file was converted into a .js file, in which I was able to produce a dropdown menu for the ICD impressions, but when I tried to produce the associated bar charts upon each option click on the dropdown list, the charts would not populate. I then attempted to use d3.json() function using the .json file, but the charts would still not populate upon each ICD impression option click. Due to multiple hours and days of trying to determine what the problem is, it was then decided that Tableau might be a better option to produce the dashboard on. Tableau was able to read in the .json file, and the bar charts, described in the 'Dashboard' section above, were then able to be created. The next step will be to discuss with the rest of the group how the charts will be organized onto the final dashboard, as well as how to incorporate the machine learning model's results. 

2. Dorthy 

Dorthy developed the Google Slides Storyboard outlining the overall project, which includes the selected topic, the reason the topic was selected, the description of the source of data, the questions that the team hopes to answer with the data, a description of the data exploration phase of the project, and the description of the analysis phase of the project. Dorthy then asked Bethany and Steve to update the 'Data Analysis' portion of the google slides with the current results found within the machine learning model results and the process of how the testing and training sets were created within the code, as well as updating the Confusion matrix table found on the dashboard template slide. 

3. Matt 

Matt created queries to generate data specific tables to run through the machine learning models. Some of the queries included generating random samples of 10,000 and 50,000 rows. There were also queries used to round out the values of time and numbers equivalent to each month of the calendar year by using extract and to_char functions. Another set of queries generated was grouping the data by specific seasons of the year by chunks of 3 months.

4. Steven 

Steven attempted to rerun the machine learning model using datasets of various sample sizes, 1 dataset with 50000 rows, 1 dataset with 1000 rows, 1 dataset with 10000 rows, and finally 1 dataset with rows specific to one Hospital. He tried multiple dataset sizes to see if the amount of rows would increase the accuracy or F1 score, and the same reasoning was applied to the dataset specific to one hospital. The accuracy and F1 score varied only slightly in either direction, but none of the datasets seemed to influence the results as one might have expected. After discussing these results with the group, it was then determined that a new dataset would need to be created by Matt, that would provide a random sample of 10000 rows from the entire 500K dataset. The results of using this new random sample dataset was consistent with prior results (see below).

![image](https://user-images.githubusercontent.com/106631875/200130813-b7bd402c-2cc2-43a8-91e6-c2de2e99f9a3.png)
