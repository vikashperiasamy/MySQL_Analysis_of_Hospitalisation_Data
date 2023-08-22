# Project Description
In this project, exploratory data analysis is performed on hospitalisation discharge data using MySQL software. There are two key focuses for this project:
* To investigate *which sub-groups show a higher propensity to be admitted* over others
* To investigate which factors show a strong correlation to *monetary charges incurred upon discharge from the hospital*

The project involves the following steps:
* **Data Sourcing and Extraction**: a suitably large, free-to-use dataset containing multiple factors is located and downloaded
* **Data Cleaning**: data is cleaned using Power Query software before uploading into MySQL for analysis
* **Exploratory Data Analysis**: MySQL statements are used to explore the dataset and draw valuable insights 
# Dataset Details
The dataset used in this project is free-to-use and has been obtained from the New York State Department of Health. The dataset contains details pertaining to hospitalisation discharge data, including patient profile-related details (race, age group etc.), hospital location, medical conditions and monetary charges. Additional details as well as the raw dataset can be found [here](https://health.data.ny.gov/Health/Hospital-Inpatient-Discharges-SPARCS-De-Identified/gnzp-ekau).
# Insights
Through performing exploratory data analysis, the following insights have been gathered:
1. **Length of Stay**: there is a *positive correlation between average length of stay and charges incurred*, inline with real-world observations 
2. **Age Group**: there is a *positive correlation between average length of stay and age group* (and therefore charges incurred), with the oldest patients falling into the *"70 or Older" age group staying an average of 6.26 days compared to an average of 3.97 days by the youngest "0 to 17" age group*.
3. **Payment Method**: *approximately a quarter (~25.3%) of all patients* fall under the combination of *payment by MediCare and being in the "70 or Older" age group*, which is in line with expectations since elderly patients make up a significant proportion of all patients and Medicare is mainly used by those aged 65 and older
4. **Location**: the 3 locations with the highest costs belong to the Hudson Valley, New York City and Long Island areas, with *Nassau as a county within Long Island having the highest average costs per patient (~$66.300)* 
5. **Medical Condition**: Across all races, the highest 
