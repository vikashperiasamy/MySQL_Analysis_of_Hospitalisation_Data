# Project Description
In this project, exploratory data analysis is performed on hospitalisation discharge data using MySQL software. The primary focus for this project is to explore factors which might have a strong correlation to *monetary charges incurred upon discharge from the hospital*. The project involves the following steps:
* **Data Sourcing and Extraction**: a suitably large, free-to-use dataset containing multiple factors is located and downloaded
* **Data Cleaning**: data is cleaned using Power Query software before uploading into MySQL
* **Exploratory Data Analysis**: MySQL statements are used to explore the dataset and draw valuable insights 
# Dataset Details
The dataset used in this project is free-to-use and has been obtained from the New York State Department of Health. The dataset contains details pertaining to hospitalisation discharge data, including         . The dataset as well as additional details can be found [here](https://health.data.ny.gov/Health/Hospital-Inpatient-Discharges-SPARCS-De-Identified/gnzp-ekau).
# Insights
Through performing of exploratory data analysis, the following insights have been gathered:
1. **Length of Stay**: there is a *positive correlation between average length of stay and charges incurred*, inline with real-world observations 
1. **Age Group**: there is a *positive correlation between average length of stay and age group* (and therefore charges incurred), with the oldest patients falling into the *"70 or Older" age group staying an average of 6.26 days compared to an average of 3.97 days by the youngest "0 to 17" age group*.
1. **Payment Method**: *approximately a quarter (~25.3%) of all patients* fall under the combination of *payment by MediCare and being in the "70 or Older" age group*, which is expected since elderly patients make up a significant proportion of all patients and Medicare is mainly used by those aged 65 and older
