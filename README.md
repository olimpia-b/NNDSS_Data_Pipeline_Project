# NNDSS Data Pipeline Project
This is the final project for our BA882 class of Deploying Analytics Pipelines for our MSBA program at Questrom School Of Business, Boston University.

**Contributors:**

* Saachi Dholakia
* Yiming Wang
* Olimpia Borgohain
* Xiang Liu

**Business Problem**
One potential business problem is how to allocate healthcare resources more effectively in response to disease outbreaks. For example, analyzing spikes in reported cases can help predict where more medical supplies, personnel, or vaccinations might be needed.
We can also explore questions related to early detection of disease trends, enabling healthcare providers and policymakers to act quickly to prevent further spread. For instance, the dataset could help address questions about seasonal trends in certain diseases and allow for better planning and forecasting by public health agencies.
Another business problem could involve improving public health communication strategies—using data on disease trends to optimize when and where to focus public health messaging.

**Dataset source:**
Link: https://data.cdc.gov/NNDSS/NNDSS-Weekly-Data/x9gk-5huc/about_data<br>
NNDSS stands for the National Notifiable Diseases Surveillance System (NNDSS), it is a public health surveillance system run by the Center for Disease Control and Prevention (CDC).It provides weekly reports of notifiable diseases across the U.S., tracking infectious diseases and conditions required by law to be reported to public health authorities. This includes diseases like influenza, COVID-19, and other important conditions for public health monitoring. NNDSS data helps detect<n disease outbreaks, monitor trends, and guide public health responses, and it plays a crucial role in controlling epidemics and preparing for emerging health threats.<br>
The dataset is updated weekly. Each week, new records on disease counts and reports are added to the dataset, which is ingested into the data warehouse to keep the analysis current. Weekly updates allow for near real-time tracking of public health trends.

We have done and divided the project in three phases:<br>
**1st phase:**
1. Extracted our data from the NNDSS website
2. Data transformations using BigQuery
3. Exploratory data analysis (EDA)
4. Set up automation with Google Cloud Scheduler

**2nd phase:** 
1. Interactive dashboard on Tableau
2. In-depth trend analysis to identify patterns and anomalies in disease reporting
3. Applied clustering algorithms for anomaly detection
   
**3rd and final phase:** <br>
Interactive chatbot that provides insights into specific diseases and its trends from the NNDSS dataset.
<br>

These are  the steps we followed to create our interactive chatbot:
1. Data Preprocessing
2. Selecting an LLM and Integration Tools
3. Deployment
4. Testing
   
Link to the chatbot: https://chatbot-64r1objhd8f.streamlit.app/
