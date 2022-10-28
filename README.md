# Final Project Segment -1 

## Project Description:

Ambulance Patient Offload Times for Sacramento County Hospitals. Develop a regressive model that can provide predictive data for each hospital.  Identify what patterns exist within the data through machine learning. The report will assist Hospital staff in addressing staffing issues and hospital throughput as well as assist ambulance companies in better planning unit allocation. 

# Reason:
Extended Ambulance Patient Offload Times create idle ambulances that could be needed for emergencies on the road but are instead waiting for their patient to be placed in an ED bed. When an ambulance crew is awaiting placement, they are unable to respond to another emergency call. There are numbered ambulance resources for Sacramento County and lack of unit availability due to APOT translates into longer EMS responses to the detriment of the community. 

# Audience: 
Hospital staff and Ambulance Drivers.

# Questions to answer with the data Notes: (from chat)

1.	Which impressions has the longest/shortest APOTs? (Overall and by Hospital codes)
2.	Compare impressions to zip codes. Which zip codes have the highest/lowest rates of which impressions? 
3.	Which zip codes utilize ambulance transports to the ER the most in 2017-2022?
4.	Wait times per hospital by date/time 
5.	Do any patterns arise from the data? 

.
# Measuring metrics for ambulance patient offload times: 

*Time frame:* 

- <=20.49
- '>=20.50 to <=60.49
- '>=60.50 to <=120.49
- <=120.50 to <=180.49
- <=180.50

90th Percentile of APOT per Hour
Create array per hour by hospital and generate a 90th percentile 
