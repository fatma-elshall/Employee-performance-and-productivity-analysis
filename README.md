## Project Summary:
A full-cycle data analysis project on employee performance and productivity using HR dataset. Tasks included SQL-based data cleaning, calculated fields in Power Query, and dashboard building in Excel. The final product provided data-driven business recommendations for better training, promotions, and efficiency strategies.

## Main objective: 
This project aims to analyze workforce data to uncover key performance trends, identify high-potential employees, detect engagement issues, and provide actionable recommendations to improve productivity, retention, and efficiency.

 2. Tools & Technologies Used
MySQL: For advanced data cleaning and preparation

Power Query in Excel: For transformation and creation of calculated fields

Excel: For creating professional dashboards with PivotTables and charts

Power BI-style design thinking applied using Excel to simulate a BI experience

🧮 3. Calculated Fields & Their Business Importance
To enhance the analysis, several calculated fields were created in Power Query, each with a specific business purpose:

Field Name	Formula / Logic	Business Use
Project Efficiency	Projects Handled / Years At Company	Measures how many projects an employee delivers per year, highlighting productivity.
Engagement Score	Sum of: Employee_Satisfaction, Training Hours, Projects Handled	A composite score to assess overall employee engagement and activity level.
Training per Project	Training Hours / Projects Handled	Helps evaluate whether training investment is justified relative to output.
Performance Category	Based on Performance Score (1-5): Low, Medium, High	Segments employees for easier performance tracking.
Experience Level	Based on Years at Company: New, Mid, Senior	Helps compare performance by tenure.
Team Size Category	Small (1–5), Medium (6–10), Large (11+)	Used to analyze team dynamics.
Training Dependency Level	Categorized from Training per Project	Helps identify employees or teams heavily reliant on training.
Remote Work Type	Derived from Remote_Work_Frequency	Classifies employees as On-site, Hybrid, or Fully Remote for remote productivity analysis.

📊 4. Dashboard Design & Insights
The dashboards are structured to simulate a professional HR analytics reporting system, providing clear business views:

🔹 Dashboard 1: KPI Overview
A high-level view of company-wide employee metrics

Includes:

Total Employees

Avg. Performance Score

Avg. Satisfaction

Avg. Salary

Resignation Rate

Key Insight:
Although the resignation rate is moderate, further attention is needed in employee engagement for long-tenure employees.

🔹 Dashboard 2: Performance & Productivity Evaluation
Tracks how employee efforts convert to output

Includes:

Project Efficiency

Engagement Score

Performance Distribution

Work Hours & Overtime

Under vs. Top Performers

Key Insight:
Employees with longer tenure tend to show lower project efficiency, indicating a need for re-engagement strategies.

🔹 Dashboard 3: Workforce Composition
Demographics and diversity visualization

Includes:

Gender Distribution

Department Allocation

Job Titles & Education Level

Age & Experience Segments

Key Insight:
Balanced gender distribution (~50/50) and well-diversified job roles show equitable hiring practices.

🔹 Dashboard 4: Deep Dive Analysis
Advanced views using calculated fields to surface hidden patterns

Includes:

Engagement Score by Department

Training Dependency Analysis

Team Size vs. Output

Advanced segmentation

Key Insight:
~99% of employees fall under high training dependency—suggesting the need to reassess training efficiency and cost.

📌 5. Business Recommendations
Based on the data analysis and dashboard insights, the following actions are recommended:

🟢 1. Reallocate Training Resources Wisely
Insight: Most employees fall under "High Training Dependency"
Action: Shift training focus to those with low efficiency and ensure each session is linked to measurable output.

🟡 2. Re-engage Long-Tenure Employees
Insight: Efficiency drops after 5+ years at the company
Action: Launch re-engagement programs, mentorship roles, or cross-functional tasks for senior employees.

🔵 3. Promote High Potentials
Insight: Employees with Engagement Score >10 and Performance Score ≥4 are top performers
Action: Prioritize these individuals for promotion or leadership pipelines.

🟠 4. Balance Workloads
Insight: Some teams have high overtime but low output
Action: Redistribute workload or adopt task automation to reduce burnout and increase productivity.

🟣 5. Monitor Training ROI
Insight: Training investment is high, but outcome isn’t proportional
Action: Use KPIs like Training per Project and Engagement Score to assess ROI and streamline L&D budgets.

✅ Final Words
This project reflects a complete data analysis lifecycle:

SQL-based cleaning

Power Query transformation

Dynamic Excel dashboards

Business interpretation & decision support
