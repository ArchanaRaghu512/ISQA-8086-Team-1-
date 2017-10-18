# Team Bazinga – Data Cleaning Documentation

## Data description 

> This Data set contains a multitude of information. There are 10 files in total, I am not sure if all of them are needed for analysis, but it depends on what questions someone would ask. Contained inside is information regarding Nebraska schools from the 2015-2016 year. There is information regarding Attendance Rate, Dropout Rates, Teacher information (general info, not specific personal info), and test scores around Math, Reading, Science, Writing. This information could be used to evaluate the success of Nebraska Schools, and determine which schools are more successful than others.

## Dataset Licensing Information

The Terms and Conditions page seems to be inactive on the main page, so no specific information regarding data usage could be found. I also checked the Privacy policy at "http://nep.education.ne.gov/privacy-policy/" and it gives a 404 error. There was nothing else I could find that would give me specific information in this general area. However, The Nebraska Department of Education is responsible for this data, which is a branch of the Nebraska Government, so I decided to go to the Nebraska.gov/policies page and found the following.

"Use of Site Information

Nebraska.gov (“Company”) is not responsible if information made available on this site is not accurate, complete or current. The material on this Site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or timely sources of information. Any reliance on the material on this Site is at your own risk. This Site may contain certain historical information. Historical information necessarily is not current and is provided for your reference only. We reserve the right to modify the contents of this Site at any time, but we have no obligation to update any information on the Site. You agree that it is your responsibility to monitor changes to the Site.

You may access, copy, download, and print the material contained on the Site for your personal and non-commercial use, provided you do not modify or delete any copyright, trademark or other proprietary notice that appears on the material you access, copy, download or print. Any other use of content on the Site, including but not limited to the modification, distribution, transmission, performance, broadcast, publication, uploading, licensing, reverse engineering, transfer or sale of, or the creation of derivative works from, any material, information, software, products, or services obtained from the Site, or use of the Site for purposes competitive to the Company, is expressly prohibited. You agree to abide by all additional restrictions displayed on the Site as they may be updated from time to time. The Company neither warrants nor represents that your use of materials on this Site will not infringe rights of third parties not affiliated with the Company, and your use of such materials is at your own risk.

You may not use contact information provided on the Site for unauthorized purposes, including marketing. You may not use any hardware or software intended to damage or interfere with the proper working of the Site or to surreptitiously intercept any system, data or personal information from the Site. You agree not to interrupt or attempt to interrupt the operation of the Site in any way. The Company reserves the right, in its sole discretion, to limit or terminate your access to or use of the Site at any time without notice. Termination of your access or use will not waive or affect any other right or relief to which the Company may be entitled at law or in equity.""

## Dataset Questions


## System and Hardware Information


## DATA SETS

## SET 1

Dataset Creation Process

Instruction on how to recreate data

Meta Data

List of column names and definition
	
Questions we can answer with Data

List the question we can answer with this data

## SET 2

### Dataset Creation Process

> To form this dataset, we have taken common rows and fields (Type, School year, County, District, Agency name) and two unique fields i.e. attendance rate and Dropout rate from two excel sheets (“Attendance rate” and “Dropout rate”). 
We figured that the Dropout Rate sheet had information for the state and district type and for the year 2010 – 2016. Whereas the attendance rate had details for state, district, Learning community and Northern Tier between the year 2001 – 2016.
So, we had to filter the details on common rows and fields.

### Dataset Name: Attendance Rate Sheet & Dropout Rate

**Step 1:** Select the Type ST using the data filter option available in excel as mentioned earlier.   

**Step 2:** The next criteria is the year. We selected the year that is common in both the sheet i.e.from 2010 -2016.  

**Step 3:** The similar way we had filtered the type “DI” which is district, the year and had copied the filtered data to the new spreadsheet.   

**Step 4:** Merge the fields filtered from both the sheets into the new sheet.  

**Step 5:** And then added the unique columns attendance rate and dropout rate into it.   

### Meta Data

This dataset, has 7 fields:
Type, School year, County, District, Agency name, Dropout rate, Attendance rate.
Columns: 7
Rows: 1245

### Rationale

**Identified: The column “School” contained values “0”.
Solution: It had no impact so we removed the column from the dataset.**

**Identified: The “Year” Column had values like 20102011.
Solution: We reformatted it to the following format “2010 – 2011”.**	
	
### Questions we can answer with Data
> We can we can interpret how the Attendance rates affect the dropout rates

## SET 3
	
### Dataset Creation Process

> To form this dataset, we have taken common rows and fields from two excel sheets (“Teachers” and “Dropout rate”) and two unique fields i.e. Percentage of Teachers with Master’s Degrees and Dropout rate.
We figured that the Dropout Rate sheet had information for the state and district type and for the year 2010 – 2016. Whereas the “Teachers” sheet contains details for state, district and school between the year 2011 – 2016.
So, we had to filter the details on common rows and fields.

### Dataset Name: Teacher & Dropout Rate sheet.

**Step 1:** Select the Type ST using the data filter option available in excel as mentioned earlier.

**Step 2:** The next criteria is the year. We selected the year that is common in both the sheet i.e. from 2011 -2016.

**Step 3:** Repeat the same process on “Dropout rate” sheet 
**Step 4:** After filtering the type and year, copy the filtered value into a sheet. Omit the unrelated columns.
**Step 5:** Add the Dropout rate from “Dropouts” Sheet and “Percentage of teachers with Master’s Degree” from teacher’s sheet to the new sheet.
	
### Meta Data

This dataset has 7 fields:
Type, School year, County, District, Agency name, Percentage of Teachers with Master’s Degrees, Dropout rate.
Columns: 7
Rows: 993

### Rationale

**Identified: The column “School” contained values “0”.
Solution: It had no impact so we removed the column from the dataset.**

**Identified: The “Year” Column had values like 20102011.
Solution: We reformatted it to the following format “2010 – 2011”.**	

### Questions we can answer with Data

> We can interpret whether the Percentage of teachers with Master’s degree at each school have an impact on the dropout rates

## SET 4

### Dataset Creation Process

To form this dataset, we have taken the excel sheet “Cohort” and kept all the fields. The dataset is clean and filtering wasn’t required.
	
### Meta Data

This dataset has 11 Fields
Type, School year, County, District, School, Agency name, Graduation Cohort, Cohort year, Description, Graduation Count, Graduation Percentage.
Columns: 11
Rows: 113790

### Rationale

** Identified: The “Year” Column had values like 20102011.
Solution: We reformatted it to the following format “2010 – 2011”. ** 

** Identified: The column “Graduation Pct” wasn’t clear.
Solution: Renamed it to “Graduation Percentage” for better understanding. **

** Identified: There are certain values “-1” contained in “Graduation count” and “Graduation Percentage”. **
	
### Questions we can answer with Data

> We can interpret which group or category of students have the highest or lowest Graduation count

## SET 5

### Dataset Creation Process

> To form this dataset, we have taken the excel sheet “ELL” and “Dropouts”. WE have kept all the common fields and two unique fields “ELL” and “Dropout Rate”.
We figured that the Dropout Rate sheet had information for the state and district type and for the year 2010 – 2016. Whereas the “ELL” had details for state, district and school between the year 2011 – 2016.
So, we had to filter the details on common rows and fields.

### Dataset Name: ELL & Dropout Rate sheet.

**Step 1:** Select the Type ST using the data filter option available in excel as mentioned earlier.

**Step 2:** The next criteria is the year. We selected the year that is common in both the sheet i.e. from 2011 -2016.
**Step 3:** Repeat the same process on “Dropout rate” sheet.

**Step 4:** After filtering the type and year, copy the filtered value into a sheet. Omit the unrelated columns.

**Step 5:** Add the Dropout rate from “Dropouts” Sheet and “ ELL Percentage” from ELL sheet to the new sheet 

### Meta Data

This dataset has 7 fields:
Type, School year, County, District, Agency name, ELL Percentage, Dropout Rate.
Columns: 7
Rows: 993

### Rationale

**Identified: The column “School” contained values “0”.
Solution: It had no impact so we removed the column from the dataset.**

**Identified: The “Year” Column had values like 20102011.
Solution: We reformatted it to the following format “2010 – 2011”.**

### Questions we can answer with Data

> We try to interpret whether the percentage of ELL in a school affect the dropout rate or not.


