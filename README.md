# Final Project - Segment 1 (Group 7)

## Presentation  

### Overview 

Ambulance Patient Offload Times for Sacramento County Hospitals. Develop a regressive model that can provide predictive data for each hospital.  Identify what patterns exist within the data through machine learning. The report will assist Hospital staff in addressing staffing issues and hospital throughput as well as assist ambulance companies in better planning unit allocation. The dataset used and authorization for this project was obtained from the Sacramento County EMS Agency. 

### Description 

Extended Ambulance Patient Offload Times create idle ambulances that could be needed for emergencies on the road but are instead waiting for their patient to be placed in an ED bed. When an ambulance crew is awaiting placement, they are unable to respond to another emergency call. There are numbered ambulance resources for Sacramento County and lack of unit availability due to APOT translates into longer EMS responses to the detriment of the community.

### Data Set

The data selected for this project was obtained from Sacramento County Emergency Medical Services Agency. Data is obtained from records created by transpoting ambulance crew and submtted to a patient data repository for the state of California. The data set includes the following data points : 

  - Destination Hospital identifier
  - Destination Hospital location Latitude and Longitude 
  - Date/Time Timestamp of Occurrence
  - Ambulance Patient Offload Time (APOT)
  - Impression (Paramedic Impression of Patient Medical Complaint) depicted as [ICD-10 code](https://www.icd10data.com). An ICD-10 code is is a classification system       of diagnosis codes representing conditions and diseases, related health problems, abnormal findings, signs and symptoms, injuries, and external causes of injuries     and diseases.
  - Ambulance Agency Identifier 
  - Ambulance Unit identifier 
  - Postal Code of Where call was Originated 
  

### Audience

* Hospital staff and Ambulance Drivers. 

### Dataset Questions  

  - Which impressions (Paramedic Impression of Patient Medical Complaint) has the longest/shortest APOTs? (Overall and by Hospital codes)
  - Which Postal Codes have the highest/lowest rates of which impressions? 
  - Which Postal Codes utilize ambulance transports to the ER the most in 2017-2022?
  - Wait times per hospital by date/time 
  - Do any patterns arise from the data? 

### Measuring metrics for ambulance patient offload times  

Time frame: 
* (<=20.49 min) - Bucket 1
* (>=20.50 min) - Bucket 2

90th Percentile of APOT per Hour
* Create array per hour by hospital and generate a 90th percentile

### Technologies Used 

* Jupyter Notebook & Pandas 
* Visual Studio Code
* JavaScript & HTML
* Tableau
* PostgreSQL
* SciKit-Learn Libraries
* Microsoft Excel 

## Github (Bethany)

  * Repository Created with individual branches for each team member
  * Assigned team member handling merges into the main branch 
  * Each individual is responsible to submit required commits into their repository by due date
  * Update README.md (Bethany & Dorthy)
 
## Storyboard (Dorthy)

[Google Slides](https://docs.google.com/presentation/d/15tdSq3N0yPYTAy1F1tbo_GxqV1TnYJuH_rWZqTuRxU8/edit#slide=id.p1)

## Dashboard (Bethany - Deliverable 3) 

[View EMS Dashboard](https://myorignl.github.io/Final_Project7/)

* Tools Used to Create Final Dashboard: 
  * Tableau
  * HTML
  * Javascript

By using the EMS dataset, we will show the relationship of ICD impression codes v. Hospital Code, ICD impression codes v. APOT times, Hospital Code v. APOT times. These relationships will be illustrated graphically, in which users can explore the data using applied filters on each chart. By looking at each chart, the user should be able to understand the reasoning behind why these features were chosen for our machine learning model. For example, when looking at the 'Hospital code v. APOT Times' bar chart, there is a variation of APOT times depending on the hospital, which begs the question, 'Why would the APOT times be higher at one hospital versus another? Does the type of ICD impression influence the APOT times? Or, do some hospitals receive more of one type of ICD impression than another, and is that what it influencing the APOT times?'. 

The interactive dashboard was created using HTML and Javascript, and Tableau. The dashboard is hosted on a github webpage, and the charts created on Tableau were integrated into the .html file. The user can switch between a 'Visual Charts' tab and a 'Visual Maps' tab. The homepage contains 3 interactive charts, and a table breakdown of the predicted and actual results from the machine learning model. The 2nd page contains a heatmap that graphically displays each hospital and a rounded time element to view the moving average of impresion types and their associated APOT time averages. 

* Interactive Elements: Applied filters on each chart 

  * ICD impression codes v. Hospital Code: Hospital Code Filter 
  * ICD impressions v. APOT Times: ICD impression Filter 
  * Hospital Code v. APOT Times: Hospital Code Filter
  * Heatmap of Hospital codes, ICD impression types, and APOT averages for each impression type
* Other Dashboard Elements: 

  * Confusion Matrix Table 
  * Machine Learning Model Results Table: Accuracy Score, F1 Score, Ranking Importance of Features
  
![EMS Home Page](https://github.com/Myorignl/Final_Project7/blob/Bethany/EMS_JavaScript_Bethany/new_webpage_designPG1_bethany.png)

![EMS Maps Tab Page](https://github.com/Myorignl/Final_Project7/blob/Bethany/EMS_JavaScript_Bethany/new_designPG2_bethany.png)

## Database (Matt)

The database selected is Structured Query Language (SQL). The use of this database will allow the creation of subsets / tables of the original csv file. Setup of the table has been accomplished by the assigned team member, tables have been generated as requested. 

An ERD Diagram was also created as a reference for creating the database tables in SQL. 
[ERD Diagram](https://github.com/Myorignl/Final_Project7/blob/Matt/Images/EMS_ERD_Diagram.png)

![image](https://user-images.githubusercontent.com/104601282/199882738-09efc61a-4915-499b-a875-90b186c29ef2.png)


### *Final Emergency Medical Services Table Created:* 

[Final EMS Dataset](https://github.com/Myorignl/Final_Project7/blob/Matt/Resources/EMS_table_groupby_month_range.zip)

Below is an example of our database used for querying our data.

![EMS_table_example](https://user-images.githubusercontent.com/86776606/198105316-4fd46a12-c9d6-4c02-80e7-fb90a5cb1e8d.png)

### SQL query used to create the table.

![SQL Query](https://user-images.githubusercontent.com/86776606/198105999-4e12c30b-a92c-4a79-8b48-81a07161938b.png)

Queries used to filter the data from 2017-2021 but only specific month ranges.

[Filtered SQL Queries](https://user-images.githubusercontent.com/86776606/198159708-e7ea6b22-59a2-4785-b402-61366ac2193e.png)


## Machine Learning (Steven & Bethany)

### Pre-Processing, Data Cleaning, Errors and Solutions

Below is a sample of some of the errors that were incurred when cleaning our data:

<img width="130" alt="Error_Caps_v_Lowercase" src="https://user-images.githubusercontent.com/106631875/201451633-983b1621-e2a7-45df-97e9-8b2355d8c148.png">

The error above revealed a conflict between the same data that was in all CAPS vs Upper and lowercase. This was an easy fix which was resolved by creating consistent naming conventions.

<img width="247" alt="Error_Date_String_to_Float" src="https://user-images.githubusercontent.com/106631875/201451650-8de9afdd-72de-4a8a-9e0d-5f47afc44bb0.png">

The error above revealed that the date values were string data types instead of float which meant we needed to convert the data type.

<img width="335" alt="Error_string_to_float" src="https://user-images.githubusercontent.com/106631875/201451669-99de110e-99ff-4564-b619-295d5faddb35.png">

The error above revealed that we had a column of data that was a mix of numerical values and alphanumerical values. After looking at the relationship between the columns, it was determined that the value of the column could be dropped since it was referenced by an adjacent value.

![Error_over_116k_rows](https://user-images.githubusercontent.com/106631875/201451734-acd1721e-56ef-4b57-8555-c7a418213ad0.png)

The error above revealed a limitation which is addressed below. The dataset was too large to work with and we are seeking an alternative solution. 

### Preliminary Machine Learning Conclusions

There are no firm conclusions at this point except that more research needs to be done. However, there does seem to be a strong relationship between the hospital code and APOT (wait time). Beyond the machine learning models that were run, a linear regression model with a dependent variable of time of day and the independent variable of APOT (wait time) revealed a strong relationship to the time of day and duration of the wait time.

## Machine Learning (Bethany & Steven - Deliverable 3 and Deliverable 4)

[Gradient Boosting Jupyter Notebook](https://github.com/Myorignl/Final_Project7/blob/main/gradient_boosting_final_ems_BethanyAnalysis.ipynb)

[Random Forest Jupyter Notebook](https://github.com/Myorignl/Final_Project7/blob/main/random_forest_final.ipynb)

[Final Dataset Used For ML Models](https://github.com/Myorignl/Final_Project7/blob/main/all_data.csv)

### Description of data preprocessing  

The data preprocessing portion of the project has been one of the greatest takeaways and lessons learned while completing this project. Initially we did the basic preprocessing of cleaning the data by dropping null values, converting data to numerical values and using the get.dummies method. The accuracy and F1 scores seemed to remain on the lower side, of around 0.53 or so, when including extra columns, such as: 'agencynumber', 'agency_unit', 'postal_code', 'latitude', and 'longitude'. One of our initial assumptions was that if we had a lot of data, it would make the accuracy of our models better. However after running several machine learning models, we realized this wasn’t necessarily true. It was determined that for the machine learning portion, these columns did not add anything valuable to the models and its predictability of APOT times. For example, the 'hospital_code' column and the 'latitude' and 'longitude' columns were providing the same information, because the lat/long points were providing the location of the hospital, which was already identified from the hospital code number, thus, we dropped the lat/long columns. Once those columns were removed, the accuracy scores increased substantially in both the Balanced Random Forest Classifier model and the Gradient Boosting model. 
 
 * Our initial columns for our dataset were:  
   * Index, Record, ID, Hospital_Code, Date, APOT, Impression, Postal_Code, AgencyNumber, Agency_Unit, Latitude, Longitude and Status.  

 * After preprocessing and refining, our dataset became:  
   * arrival_hour, pickup_date_num, apot_num, hospital_num and impressions_num   
 
### Description of feature engineering and the feature selection, including the decision-making process  

Initially, it was thought that by using the label_encoder function on all of the columns that could not be easily converted into an integer, due to having mixed datatypes in the values themselves, was the appropriate solution. Although, after further discussion, this actually didn't make sense because this was just resulting in large ranges of numbers that separated the rest of the data points so much that it looked as though there was no correlation between any of the columns in the dataset. The next thing that we tried was to separate the date/time columns into month, day, year, hours, and minutes. Out of all of these columns, the arrival hour was the only feature importance that showed any significance. In order to keep track of what hospital code went with what numeric value, a dictionary was created and used to assign a specific number to each hospital code, in which a lambda function was applied to the dataframe that would replace each hospital code with its assigned number. This was another reason as to why the .get_dummies method was not used instead, because that method would assign a number randomly, which would prevent us from determining which hospital code went with the randomly assigned number.

The final features selected and their associated values are shown below: 

![Updated feature engineering](https://github.com/Myorignl/Final_Project7/blob/Bethany/cleaned_data_gradient_boosting.png)

We relied heavily on the ability of the Balanced Random Forest Classifier model to quantify the impact of various datapoints on predicting our outcome/target. Each time we ran the model we were able to re-examine which datapoints were having the biggest impact and should be included in the dataset. The determination of what feature importances did not contribute much to the model's predictability, was found using the function: sorted(zip(rf_model.feature_importances, X.columns), reverse=True). The feature importances that resulted in values so low, that the values were basically zero, was a main indicator that most of the columns that were initially used in the model, was a possible reason why the accuracy scores were low. After dropped those columns, and re-running the model, the accuracy and F1 scores increased. 

While the Balanced Random Forest Classifier model gave us a lot of insight into the feature importances of our data and proved to be invaluable because of that, it didn’t ultimately provide the best results. After more preprocessing and refining our data, the Gradient Boosting Classifier model provided the best results: 
1. Accuracy score: 0.68
2. F1 Score (Predicted 0): 0.77
3. F1 Score (Predicted 1): 0.50

### Description of how data was split into training and testing sets  
 
The feature set was defined by dropping the “apot_num” column and setting the target. The data was then split into the training and testing sets. We created an instance of the StandardScaler and fit the scaler with the training set and scaled the data. After running the GradientBoostingClassifier model, the learning rates were evaluated, and the learning rate of 0.75 was determined to be the rate that would provide the highest accuracy score for the testing sets. This was because the training and validation accuracy scores resulted in the highest scores compared to the other learning rates. 

Originally, the training and testing sets were broken up into 5 predicted and 5 actual buckets, but the results of the confusion matrix, showed that the majority of the predicted and actual determinations were dispersed into two of the 5 buckets. This illustrated to us that the model was best suited to predict whether a patient would be more likely to wait <20.49 min, or >20.50 min, depending on the arrival hour, thus the model was restructured to separating the 'apot' time buckets into two buckets, instead of five. 

The previous Status buckets used: 

* Benchmark
('0 (<20min)')  
* Extreme
('1 (>21-60min)')
('2 (>61-120min)')
('3 (>121-180min)')
('4 (>181 min)')

The updated Status buckets were changed to: 

* Benchmark
('0 (<20.49min)')
* Extreme
('1 (>20.50min)')

### Explanation of model choice, including limitations and benefits  

We attempted to run our data through a majority of the supervised models from module 17, including:  

* Linear Regression  
* Balanced Random Forest Classifier  
* Easy Ensemble AdaBoost Classifier  
* Oversampling  
* SMOTE Oversampling  
* Undersampling  
* Combination (Over and Under) Sampling  
 
Oversampling, SMOTE over- and undersampling, Combination over- and undersampling was run with our initial dataset, as well as with our updated dataset, but both run throughs yielded low accuracy scores of about 0.50 or lower. Thus, it was decided that these models were incompatible with our dataset and the goal of this project.

### Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)  

In segments 1 and 2, we relied heavily on the Balanced Random Forest Classifier model. After refining our data, we tried the Gradient Boosting Classifier and it provided the best results.  

### Description of how they have trained the model thus far, and any additional training that will take place  

We have worked with various sample sizes of our data through the preprocessing, refining and training phases and we have additional data that we can run to test the model’s ability to predict our outcome/target.  

### Description of current accuracy score  

The accuracy score of the Gradient Boosting Classifier model is 0.68.   

### The results of the confusion matrix are below:  

![confusionmatrix](https://user-images.githubusercontent.com/106631875/201450484-804a154f-0b5d-4c84-bb8d-d38c25142c3d.png)

### The feature importances are provided below:  

![feature_importances](https://user-images.githubusercontent.com/106631875/201450494-2b94ea00-e589-43d2-9d50-2cf2eaf250bd.png)

The feature importances seem to focus mainly on the hospital_num (=0.617) and arrival_hour (=0.225).   
  
### How the model addresses the question or problem the team is solving.  

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

Dorthy developed the Google Slides Storyboard outlining the overall project, which includes the selected topic, the reason the topic was selected, the description of the source of data, the questions that the team hopes to answer with the data, a description of the data exploration phase of the project, and the description of the analysis phase of the project. Dorthy then asked Bethany and Steve to update the 'Data Analysis' portion of the google slides with the current results found within the machine learning model results and the process of how the testing and training sets were created within the code, as well as updating the Confusion matrix table found on the dashboard template slide. Dorthy created the Maps in Tableau illustrating the variation of APOT times per hospital by times with the primary impressions listed for each hospial in view.  

3. Matt 

Matt created queries to generate data specific tables to run through the machine learning models. Some of the queries included generating random samples of 10,000 and 50,000 rows. There were also queries used to round out the values of time and numbers equivalent to each month of the calendar year by using extract and to_char functions. Another set of queries generated was grouping the data by specific seasons of the year by chunks of 3 months.

4. Steven 

Steven attempted to rerun the machine learning model using datasets of various sample sizes, 1 dataset with 50000 rows, 1 dataset with 1000 rows, 1 dataset with 10000 rows, and finally 1 dataset with rows specific to one Hospital. He tried multiple dataset sizes to see if the amount of rows would increase the accuracy or F1 score, and the same reasoning was applied to the dataset specific to one hospital. The accuracy and F1 score varied only slightly in either direction, but none of the datasets seemed to influence the results as one might have expected. After discussing these results with the group, it was then determined that a new dataset would need to be created by Matt, that would provide a random sample of 10000 rows from the entire 500K dataset. The results of using this new random sample dataset was consistent with prior results (see below).

![image](https://user-images.githubusercontent.com/106631875/200130813-b7bd402c-2cc2-43a8-91e6-c2de2e99f9a3.png)
