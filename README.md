# Project Description
In this project, exploratory data analysis is performed on hospitalisation discharge data using MySQL software. There are two key focuses for this project:
* To investigate *which sub-groups show a higher propensity to be admitted* over others
* To investigate which factors show a strong correlation to *monetary charges incurred upon discharge from the hospital*

The project involves the following steps:
* **Data Sourcing and Extraction**: A suitably large, free-to-use dataset containing multiple factors is located and downloaded
* **Data Cleaning**: Data is cleaned using Power Query software before uploading into MySQL for analysis
* **Exploratory Data Analysis**: MySQL statements are used to explore the dataset and draw valuable insights 
# Dataset Details
The dataset used in this project is free-to-use and has been obtained from the New York State Department of Health. The dataset contains details pertaining to hospitalisation discharge data, including patient profile-related details (race, age group etc.), hospital location, medical conditions and monetary charges. Additional details as well as the raw dataset can be found [here](https://health.data.ny.gov/Health/Hospital-Inpatient-Discharges-SPARCS-De-Identified/gnzp-ekau).
# Insights
Through performing exploratory data analysis, the following insights have been gathered:
1. **Length of Stay**: There is a *positive correlation between average length of stay and charges incurred*, in line with real-world observations 
2. **Age Group**: There is a *positive correlation between average length of stay and age group* (and therefore charges incurred), with the oldest patients falling into the *"70 or Older" age group staying an average of 6.26 days compared to an average of 3.97 days by the youngest "0 to 17" age group*.
3. **Payment Method**: *Approximately a quarter (~25.3%) of all patients* fall under the combination of *payment by MediCare and being in the "70 or Older" age group*, which is in line with expectations since elderly patients make up a significant proportion of all patients and Medicare is mainly used by those aged 65 and older
4. **Location**: The 3 locations with the highest costs belong to the Hudson Valley, New York City and Long Island areas, with *Nassau as a county within Long Island having the highest average charges per patient (~$66.330)*
5. **Admissions**: *Birth-related admissions classified under the "Extreme" sub-group for severity level incur the highest average total charges per patient by far (~$561,804)*, more than twice the next highest combination of trauma-related admissions also under the same "Extreme" sub-group (~$230,643)
6. **Medical Condition**: Across all races, the highest
7. **Babies**: There is an inverse relationship between length of stay of newborns and the number of babies, with *~90.8% of babies staying less than 10 days*. This is in line with real-world observations of the majority of newborns leaving in less than 5 days and can be [supported](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3336902/). It is also interesting to note that the average birth weight also has an inverse relationship with the length of stay, whcih could be due to birth-related complications and/or improper data representation due to a smaller sample size  
