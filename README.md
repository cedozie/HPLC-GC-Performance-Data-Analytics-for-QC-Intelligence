# HPLC-GC-Performance-Data-Analytics-for-QC-Intelligence
This repository showcases an end-to-end data analytics project that analyzes data from HPLC and GC instruments using Excel, SQL, Python, Tableau, and Power BI. It demonstrates data cleaning, relational database modeling, statistical QC, anomaly detection, time-series analysis, culminating in interactive dashboards for monitoring calibration performance and instrument health.


#### Author: Christopher Edozie Sunday  
#### Tech Stack: Excel | SQL (SQLite)| Python| Jupyter Notebook| Tableau| Power BI  
#### Project Type: Analytical Chemistry / Data Analytics  
#### Stakeholders: QC Scientists, Analytical Chemists, QC Managers, Lab Supervisors, and Data Analysis Teams  
#### Keywords: Data Analytics, SQL, Python, Tableau, Dashboards, Power BI, Data Modeling, Statistical Analysis, Time-series Analysis, Anomaly Detection, KPIs 
#### Status: This project is under active development. Report structure, notebooks, and visualizations will be incrementally refined to reflect real-world regulated laboratory analytics.


### Project Overview
This project demonstrates analytics workflow that transforms laboratory-generated performance data from HPLC and GC instruments into actionable quality intelligence, enabling early detection of the instrument drift, calibration instability, and process anomalies before they compromise results. It bridges the gap between raw chromatographic outputs and decision-ready insights, allowing scientists, quality professionals, and supervisors to proactively monitor instrument performance, method stability, and analytical reliability.


### Project Relevance to Quality Control Scientist and Quality Intelligence Roles
This project is designed to reflect real-world laboratory operations in manufacturing quality control, mining assay laboratories, and research facilities where data integrity, reproducibility, and timely interpretation of results are critical. This demonstrates actual responsibilities of QC Scientists, Analytical Chemists, QC Managers, Lab Supervisors, and Data Analysis Teams that works in regulated environments, including:

- Trending of chromatographic performance data for compliance monitoring
- Identification of early warning signals prior to specification failure
- Support of deviation investigations through data-driven evidence
- Instrument performance monitoring and method lifecycle management
- Translation of raw analytical data into actionable quality intelligence

The workflow mirrors industry practice by integrating Excel-based laboratory data, SQL-driven data structuring, and Python-based statistical analysis to support regulatory-compliant quality decisions.


### Scientific & Quality Context of this Project
Chromatographic data is foundational to analytical decision-making, yet it is often siloed within instrument software, inconsistently structured, and underutilized for trend-based quality monitoring. Across regulated and non-regulated environments, laboratories face common challenges:

- Instrument drift and performance variability
- Delayed detection of analytical anomalies
- Fragmented data across instruments and runs
- Limited visibility into long-term trends

In pharmaceutical and mining laboratories, these issues directly impact compliance, throughput, and risk management. In academic or research settings, they affect data reliability, reproducibility, and research validity. This project addresses these challenges through structured data modeling and statistical analysis.


### Project Objectives
- Clean and convert raw HPLC/GC data into structured, analysis-ready datasets
- Design a 3NF relational schema suitable for chromatographic quality control data
- Implement foreign keys and indexing, and demonstrate SQL joins
- Compute accuracy, precision, calibration, and system suitability metrics
- Monitor instrument and method performance over time
- Detect instrument drift early, anomalies, and out-of-control conditions
- Produce audit-ready and reproducible end-to-end analytics workflow in JupyterLab (DDL + queries)
- Produce narrative-driven Jupyter Notebooks explaining analytical intent and methodology
- Scientific visualization in Python for QC interpretation and decision support
- Build interactive Tableau dashboards for performance monitoring
- Generate KPI-driven report in Power BI for management and quality review
- Bridge analytical chemistry and data analytics


### Quality & Compliance Relevance
This project applies data analytics to chromatographic quality control within a regulated laboratory framework. Analytical performance metrics are evaluated using principles consistent with:

- ICH Q2(R2): Validation of Analytical Procedures
- ICH Q14: Analytical Procedure Development
- FDA and EMA expectations for ongoing performance verification
- ISO/IEC 17025 requirements for method control and monitoring

Key quality objectives addressed include:
- System suitability trending and early detection of performance drift
- Instrument equivalency and data comparability
- Method precision, accuracy, and robustness assessment
- Proactive identification of risks leading to OOS or OOT results

The analytical insights generated support deviation prevention, CAPA prioritization, and data-driven decision-making in QC and analytical development environments.


### Data Description
This project used a simulated chromatographic QC dataset designed to closely reflect real HPLC/GC laboratory outputs while avoiding proprietary or confidential data exposure.
Key variables include:

    | Variables         | Purpose                                             |
    |-------------------|-----------------------------------------------------|
    | Sample_ID         | Unique identifier for each QC injection             |
    | Instrument_ID     | Differentiates HPLC vs GC systems                   |
    | RetentionTime_min	| Indicates chromatographic stability                 |
    | Peak_Area         | Primary quantitative detector response              |
    | PeakWidth_min     | Reflects column efficiency and system dispersion    |
    | Concentration_mgL	| Calculated analyte concentration                    |
    | TrueValue_mgL     | Reference value for accuracy assessment             |
    | Run_Date          | Enables time-based trend analysis                   |

Each variable supports downstream QC evaluations such as precision (%RSD), accuracy (%recovery), and system suitability trending.


### Tools & Technologies
    | Tools        | Purpose                                                                                       |
    | ------------ | --------------------------------------------------------------------------------------------- |
    | Excel        | Data simulation, initial data profiling, formatting, and sanity checks                        |
    | SQL + SQLite | Relational database design, normalization, traceability, querying                             |
    | Python       | QC metrics, Statistical quality control, anomaly detection, trend analysis, pre-visualization |
    | Tableau      | Interactive dashboards for performance monitoring and reporting                               |
    | Power BI     | KPI-driven report for management and quality review                                           |


### Workflow Architecture
- Data ingestion and cleaning
- Relational database modeling
- Statistical quality control analysis
- Trend and anomaly detection
- Interactive dashboard reporting


### Project Folder Structure                

    HPLC-GC-Performance-Data-Analytics-for-QC-Intelligence/
    │
    ├── excel_files/
    │   ├── hplc_gc_qc_data_raw.xlsx
    │   └── hplc_gc_qc_data_cleaned.xlsx
    │
    ├── database/
    │   ├── qc_structured.db
    │   └── hplc_gc_qc_data.csv
    │
    ├── scripts/
    │   ├── schema_creation.sql
    │   └── data_seeding.sql
    │
    ├── ER_Diagram.png
    │
    ├── reports/
    │   ├── 01_HPLC_GC_performance_analysis_report.ipynb  #Project overview, business context, lifecycle narrative
    │   └── 01_HPLC_GC_performance_analysis_report.html
    │
    ├── notebooks/
    │   ├── 02_data_simulation.ipynb
    │   ├── 03_SQL_database_relational_schema_creation.ipynb
    │   ├── 04_data_import_metrics_computation.ipynb
    │   ├── 05_calibration_trend_analysis.ipynb
    │   ├── 06_method_performance_analysis.ipynb
    │   ├── 07_qc_anomaly_analysis.ipynb
    │   ├── 08_system_suitabilty_analysis.ipynb
    │   └── 09_integrated_QC_tableau_export.ipynb
    │
    ├── derived_metrics_outputs/
    │   ├── sample_metrics.csv
    │   ├── system_suitability.csv
    │   ├── calibrations.csv
    │   ├── control_summary.csv
    │   └── master_dataset.csv
    │
    ├── visuals/
    │   ├── calibration_trend_analysis_charts.png
    │   ├── qc_anomaly_detection_analysis_charts.png
    │   ├── method_performance_analysis_charts.png
    │   └── system_suitabilty_analysis_charts.png
    │
    ├── tableau/
    │   └── dashboard_screenshots
    │
    ├── power_bi/
    │   └── dashboard_screenshots
    │
    └── README.md


### SQL Data Modeling & Normalization
A fully normalized SQLite schema (3NF) was designed to emulate real laboratory data infrastructure.

**Core Tables:**
- instruments
- samples
- sample_metrics
- calibrations
- system_suitability
- control_summary


### Statistical & QC Analytics
Python-Driven QC Analytics was performed using Pandas, NumPy, and Scikit-Learn, the project computes the following:

**(a) Sample-Level Metrics**
- Error (mg/L, %)
- Percent recovery
- Response factor
- Z-score outlier detection
- %RSD (precision)

**(b) Calibration Analytics**
- Slope, intercept, R²
- Response factor stability
- Linearity assessment

**(c) Statistical Quality Control**
- Shewhart limits
- EWMA charts
- CUSUM charts
- Rolling mean, std, CV

**(d) System Suitability**
- Plate count
- Resolution
- Tailing factor


### Key Analysis Categories
- Calibration Trend and Stability Analysis
- Method Performance and Data Quality Analysis (Accuracy & Precision)
- Quality Control and Anomaly Detection Analysis
- Instrument and System Suitability Analysis


### Key Analysis Methods
- Control charts for precision and stability
- Rolling statistics to assess short- and long-term variability
- Time-series trend analysis to identify drift
- Outlier and anomaly detection to flag atypical runs


### Key Visualizations in Python
#### (1) Quality Control and Anomaly Detection Analysis  

**Peak Area Trend**  
<img src="visuals/figure_1_peak_area_trend.png" width="700">  
**Notebook:** `notebooks/07_qc_anomaly_analysis.ipynb`  
**Data-driven insight:** Peak area trends remain statistically controlled across instruments, with isolated >±3σ excursions detected over time.  
**Risk:** Potential loss of quantitative accuracy due to intermittent injector, detector, or sample preparation variability, increasing OOS risk.  
**Actionable recommendation:** Initiate targeted deviation review, verify system suitability, and trend instrument performance per ICH Q2/Q14 and ISO 17025.

**EWMA Chart**  
<img src="visuals/figure_2_ewma_chart.png" width="700">    
**Notebook:** `notebooks/07_qc_anomaly_analysis.ipynb`  
**Data-driven insight:** EWMA trends show gradual peak area shifts approaching control limits across sequential runs, indicating low-level systematic drift not evident in individual results.  
**Risk:** Early method bias may progress to OOS or compromised quantitation if unaddressed.  
**Actionable recommendation:** Enhance trending review, verify system suitability parameters, and perform proactive instrument maintenance per ICH Q2/Q14 expectations.

**CUSUM Chart**  
<img src="visuals/figure_3_cusum_chart.png" width="700">   
**Notebook:** `notebooks/07_qc_anomaly_analysis.ipynb`  
**Data-driven insight:** CUSUM charts demonstrate sustained cumulative deviation from the historical mean across sequential runs, indicating persistent low-magnitude bias not captured by Shewhart limits.  
**Risk:** Undetected systematic drift may compromise long-term method accuracy and lead to delayed OOS findings.  
**Actionable recommendation:** Trigger trend-based investigation, reassess method control strategy, and implement preventive maintenance per ICH Q14 and ISO 17025.

**Rolling Statistics**  
<img src="visuals/figure_4_rolling_statistics.png" width="700">  
**Notebook:** `notebooks/07_qc_anomaly_analysis.ipynb`  
**Data-driven insight:** Rolling mean and variability metrics show gradual increases over time, indicating emerging instability in quantitative response across sequential runs.  
**Risk:** Progressive loss of method precision and robustness, increasing likelihood of OOS or invalid trend conclusions.  
**Actionable recommendation:**  Strengthen ongoing performance monitoring, review maintenance and consumables, and reassess control limits per ICH Q2/Q14 and ISO 17025 expectations.

#### QC and Anomaly Detection Analysis Conclusions/ Instrument Fitness
Instruments exhibiting stable peak area trends, low variability, and minimal control-chart violations were deemed fit for continued routine use. Instruments displaying persistent EWMA or CUSUM deviations require further investigation and potential corrective action prior to continued deployment.


#### (2) Calibration Trend and Stability Analysis

**Parity Plot**  
<img src="visuals/figure_5_parity_plot.png" width="700">  
**Notebook:** `notebooks/05_calibration_trend_analysis.ipynb`  
**Data-driven insight:** Parity plots show strong linear agreement with the 1:1 line across instruments, with minor dispersion at higher concentrations, indicating generally acceptable calibration accuracy.  
**Risk:** Emerging bias at range extremes may impact quantitation accuracy and reportable results.  
**Actionable recommendation:** Review calibration model fit and range suitability, verify r² and recovery against acceptance criteria, and update calibration strategy per ICH Q2/Q14 and ISO 17025.

**Accuracy Heatmap**  
<img src="visuals/figure_6_accuracy_heatmap.png" width="700">  
**Notebook:** `notebooks/05_calibration_trend_analysis.ipynb`  
**Data-driven insight:** Mean percent recovery remains largely centered around 100% across instruments and months, with localized periods approaching acceptance limits, indicating emerging temporal variability.  
**Risk:** Sustained recovery drift may compromise method accuracy and reportable results, increasing OOS risk.  
**Actionable recommendation:** Implement enhanced accuracy trending, review calibration and sample preparation practices, and initiate preventive CAPA per ICH Q2/Q14 and ISO 17025.

**Response Factor Stability**  
<img src="visuals/figure_7_response_factor_stability.png" width="700">  
**Notebook:** `notebooks/05_calibration_trend_analysis.ipynb`  
**Data-driven insight:** Response factor trends remain largely stable, with intermittent approaches to ±2σ Westgard limits across instruments, indicating early-stage analytical variability.  
**Risk:** Continued drift may degrade calibration integrity and quantitative accuracy, increasing OOS risk.  
**Actionable recommendation:** Apply Westgard rule evaluation, review calibration preparation and detector performance, and initiate preventive maintenance and trending per FDA, ICH Q2/Q14, and ISO 17025.

**Calibration Linearity (R²)**  
<img src="visuals/figure_8_calibration_linearity_r2.png" width="700">  
**Notebook:** `notebooks/05_calibration_trend_analysis.ipynb`    
**Data-driven insight:** Calibration linearity (R²) meets predefined acceptance criteria across instruments, demonstrating adequate method linearity and model fit.  
**Risk:** Marginal proximity to the acceptance threshold may reduce sensitivity to emerging non-linearity over time.  
**Actionable recommendation:** Maintain periodic linearity verification, expand calibration range review, and trend R² results per ICH Q2/Q14 and ISO 17025 to ensure sustained method validity.

#### Calibration Trend and Stability Analysis Conclusions/ Instrument Fitness
Instruments meeting recovery, linearity, and response factor stability criteria were deemed fit for continued analytical use. Instruments exhibiting marginal or failing performance should be reviewed for recalibration, maintenance, or requalification in accordance with USP <1225> guidance.


#### (3) Method Performance and Data Quality Analysis (Accuracy & Precision)

**Precision (RSD Distribution)**  
<img src="visuals/figure_9_precision_rsd_distribution.png" width="700">  
**Notebook:** `notebooks/06_method_performance_analysis.ipynb`  
**Data-driven insight:** %RSD distributions are predominantly within typical ≤5% precision criteria across instruments, with occasional higher values indicating sporadic variability.  
**Risk:** Intermittent precision failures may compromise method repeatability and confidence in reported results.  
**Actionable recommendation:** Investigate high-%RSD events, assess replicate handling and instrument performance, and reinforce system suitability and precision monitoring per ICH Q2/Q14 and ISO 17025.

**Accuracy Recovery**  
<img src="visuals/figure_10_accuracy_recovery.png" width="700">  
**Notebook:** `notebooks/06_method_performance_analysis.ipynb`  
**Data-driven insight:** %Recovery distributions are centered near 100% across instruments, with occasional values approaching acceptance limits, indicating generally acceptable accuracy with minor variability.  
**Risk:** Outlier recoveries may signal calibration drift or sample preparation bias, potentially impacting reportable results.  
**Actionable recommendation:**  Review accuracy outliers, verify calibration integrity, and reinforce routine accuracy trending and system suitability checks per ICH Q2/Q14 and ISO 17025.

**Instrument Comparison**  
<img src="visuals/figure_11_instrument_comparison.png" width="700">  
**Notebook:** `notebooks/06_method_performance_analysis.ipynb`  
**Data-driven insight:** Measured concentration distributions are comparable across instruments, with modest inter-instrument spread, indicating generally consistent performance.  
**Risk:** Systematic inter-instrument bias may affect data comparability and trending across platforms.  
**Actionable recommendation:** Perform cross-instrument equivalency assessment, review calibration and standardization practices, and document instrument comparability per FDA and ISO 17025 requirements.

#### Method Performance and Data Quality Analysis Conclusions/ Instrument Fitness
Instruments demonstrating acceptable precision, recovery within predefined limits, and consistent performance distributions were deemed fit for continued routine analysis. Instruments exhibiting elevated variability or systematic bias should be subject to further investigation, recalibration, or maintenance prior to ongoing use.


#### (4) Instrument and System Suitability Analysis

**Resolution Trend**  
<img src="visuals/figure_12_resolution_trend.png" width="700">   
**Notebook:** `notebooks/08_system_suitabilty_analysis.ipynb`  
**Data-driven insight:** Resolution trends remain above the minimum acceptance criterion (Rs ≥ 1.5) across instruments, with localized variability observed in rolling statistics.  
**Risk:** Progressive resolution decline may impair peak separation, increasing mis-identification and quantitation errors.  
**Actionable recommendation:** Intensify system suitability trending, assess column condition and mobile phase performance, and initiate preventive maintenance or method adjustment per ICH Q2/Q14 and ISO 17025.

**Cpk Analysis**  
<img src="visuals/figure_13_cpk.png" width="700">  
**Notebook:** `notebooks/08_system_suitabilty_analysis.ipynb`  
**Data-driven insight:** Capability indices (Cpk) for resolution, tailing, plates, and retention time are generally ≥1.33, indicating adequate and stable instrument performance within defined system suitability limits.  
**Risk:** Marginal Cpk values may reduce process robustness, increasing sensitivity to routine variability.  
**Actionable recommendation:** Trend Cpk metrics routinely, tighten preventive maintenance and calibration schedules, and reassess suitability limits per FDA, ICH Q2/Q14, and ISO 17025.

**Plate Change Impact**  
<img src="visuals/figure_14_plate_change.png" width="700">  
**Notebook:** `notebooks/08_system_suitabilty_analysis.ipynb`  
**Data-driven insight:** Plate count trends are largely stable for both HPLC and GC systems, with isolated ≥3σ deviations indicating abrupt efficiency changes.  
**Risk:** Sudden plate count loss may reflect column degradation or system contamination, reducing separation efficiency and method robustness.  
**Actionable recommendation:** Investigate flagged events per deviation procedures, assess column condition and system cleanliness, and reinforce efficiency trending and preventive maintenance in alignment with ICH Q2/Q14 and ISO 17025.

**System Suitability Heatmap**  
<img src="visuals/figure_15_suitability_heatmap.png" width="700">    
**Notebook:** `notebooks/08_system_suitabilty_analysis.ipynb`  
**Data-driven insight:** Monthly system suitability performance is predominantly compliant across instruments, with intermittent metric-specific failures observed by period.  
**Risk:** Recurrent localized failures may indicate emerging instrument or method instability, increasing deviation and OOS risk.  
**Actionable recommendation:** Perform period-based root cause analysis, strengthen trending reviews, and implement targeted CAPA and preventive maintenance per FDA, ICH Q2/Q14, and ISO 17025.

**Tailing Factor Trend**  
<img src="visuals/figure_16_tailing_trend.png" width="700">  
**Notebook:** `notebooks/08_system_suitabilty_analysis.ipynb`  
**Data-driven insight:** Tailing factor values remain predominantly within the established acceptance limit (TF ≤ 2), with occasional upward excursions observed across instruments.  
**Risk:** Increased tailing may impair peak integration accuracy and quantitation reliability.  
**Actionable recommendation:** Investigate excursions via deviation procedures, evaluate column health and system cleanliness, and reinforce routine tailing trending and preventive maintenance per ICH Q2/Q14 and ISO 17025.

#### Instrument and System Suitability Analysis Conclusions/ Instrument Fitness
Instruments meeting resolution, tailing, efficiency, and capability thresholds were deemed fit for continued analytical use. Instruments exhibiting repeated plate-count change points or marginal Cpk values should be prioritized for diagnostic review, maintenance, or requalification.


### Final Takeaway
Analytical evaluation of HPLC and GC instruments demonstrates overall compliance with system suitability and QC criteria (RSD ≤5%, %Recovery 95–105%, resolution ≥1.5, tailing ≤2, plates ≥2000). Minor trends in retention time, plate counts, and tailing suggest early-stage column or system variability. Proactive maintenance, targeted trending, and CAPA review are recommended to sustain method robustness, prevent OOS events, and ensure ongoing GxP/regulatory compliance.

This project therefore demonstrated how laboratory QC data can evolve from static records into proactive quality intelligence using accessible analytics tools. It bridges analytical chemistry and data analytics, showcasing a skill set directly relevant to modern, data-driven scientific and industrial environments.


### Expected Impact
Rather than static reports, this project focuses on generating decision-enabling insights that produces the following impacts:

- Early detection of instrument drift before failures occur
- Reduced risk of invalid results
- Improved regulatory defensibility
- Comparison of performance across instruments or methods
- Identification of unstable analytical conditions
- Improved confidence in reported analytical results
- Faster QC decision-making
- Demonstrates scalable analytics maturity


### Regulatory and Quality Considerations
This project emphasizes:
- Data traceability and transparency
- Reproducible analytics workflows
- Audit-ready data structures
- Alignment with QC and QA principles  

(These considerations are critical for pharmaceutical compliance, ISO-aligned mining labs, and peer-reviewed academic research)


### Project Status & Roadmap
**Current:**
- End-to-end analytics pipeline implemented
- Core QC and trend analyses completed

**Next Step:**
- Automated SPC alerts
- Expanded instrument-level comparisons
- Potential integration concepts with LIMS-like systems


### How to Run this Analysis or View the Full Report
#### 1. Prerequisite:
Ensure the following tools and libraries are installed:  
**Software**
- Python 3.9+
- Jupyter Notebook or JupyterLab
- SQLite (or compatible SQL engine)

**Python Libraries**  
pip install pandas numpy matplotlib seaborn sqlalchemy jupyter

#### 2. Run the Analysis Notebooks
- Clone this repository to your local machine.
- Set up the Python environment by launching Jupyter Notebook or JupyterLab from the project root directory.
- Open and execute the notebooks in sequential order (top-to-bottom) to reproduce the full analysis, including:
    - Simulated HPLC/GC QC data generation
    - Data cleaning and validation
    - SQL-based querying and aggregation
    - Statistical QC metrics computation (precision, bias, CV, control trends)
    - Exploratory data analysis and pre-visualizations in python
    - Quality intelligence insights for regulated laboratory environments
- Explore dashboards for interactive insights  

(More detailed instructions are provided in the Jupyter notebooks)

#### 3. View the Full Report
Open the following link in any browser to view a consolidated analytical report (narrative and QC insights) as a static HTML page:  
https://cedozie.github.io/HPLC-GC-Performance-Data-Analytics-for-QC-Intelligence/01_HPLC_GC_performance_analysis_report.html

#### 4. View Interactive Dashboards (Tableau / Power BI)
In addition to the notebook-based analysis and static report, this project includes interactive quality intelligence dashboards designed for laboratory managers, QA/QC teams, and scientific leadership.

**Tableau**
- Open the Tableau workbook located in the tableau/ directory (when available).
- Connect to the processed analytical dataset exported from the Python notebooks (.csv).
- The dashboard enables interactive exploration of:
    - Instrument performance trends (HPLC / GC)
    - Retention time stability
    - Precision, bias, and %CV monitoring
    - Out-of-specification (OOS) and drift indicators
    - Cross-instrument and temporal comparisons  

Open the following link in any browser to view a published Tableau Public version:  
https://public.tableau.com/views/CalibrationInstrumentPerformanceAnalyticsQCDriftDetection/CalibrationIntelligence

**Power BI**
- Open the Power BI report file (.pbix) located in the powerbi/ directory (when available).
- Refresh the data connection to load the processed QC dataset generated by the analysis pipeline.
- The report provides:
    - KPI-driven quality monitoring views
    - Drill-down analysis by instrument, analyte, and run date
    - Visual QC thresholds aligned with regulated laboratory expectations
    - Management-ready summaries for quality review meetings  

Open the following link in any browser to view a published Power BI version:


### Skills Demonstrated
**Analytical Chemistry & Instrumentation**
- Understanding of HPLC and GC system performance parameters
- Interpretation of chromatographic quality metrics (retention time stability, precision, bias, %CV)
- Translation of raw instrument outputs into quality-relevant indicators

**Laboratory Quality Control & Quality Intelligence**
- QC trend analysis and performance monitoring in regulated laboratory environments
- Identification of drift, variability, and out-of-specification (OOS) risk signals
- Data-driven support for continuous improvement and compliance-focused decision-making

**Data Analytics & Statistical Analysis**
- Data cleaning, validation, and transformation of laboratory-generated datasets
- Descriptive and exploratory statistical analysis of analytical performance data
- Application of rolling statistics and temporal trend analysis for QC monitoring

**Python, SQL & Excel**
- Excel-based data simulation using various codes and formulas
- Python-based data analysis using pandas, NumPy, and matplotlib
- SQL querying and aggregation using SQLite for structured QC data storage
- Integration of Python and SQL workflows for reproducible laboratory analytics

**Data Visualization & Dashboarding**
- Creation of clear, interpretable scientific visualizations in Python for QC assessment
- Development of interactive dashboards in Tableau for exploratory quality monitoring
- Development of KPI-driven reports in Power BI for management and QA review

**End-to-End Analytics Workflow Design**
- Design of a modular analytics pipeline from simulated raw QC data to actionable insights
- Export of analysis-ready datasets for downstream BI tools
- Alignment of analytical outputs with stakeholder needs (analysts, QA, lab managers)

**Reproducibility & Documentation**
- Narrative-driven Jupyter Notebooks explaining analytical intent, not just code
- Clear project structure suitable for audit, peer review, and knowledge transfer
- GitHub-based version control and documentation following professional data science standards

**Cross-Domain Communication**
- Bridging analytical chemistry, data analytics, and business intelligence
- Communication of technical QC findings to non-technical stakeholders
- Translation of laboratory data into strategic quality insights


### License
This project is licensed under the MIT License.


### Author Details
- #### Christopher Edozie Sunday, Ph.D. 
- Analytical scientist with expertise in chromatography, quality control, data analytics, and laboratory informatics. Experienced in translating complex analytical data into actionable insights across regulated and research environments. 
- LinkedIn Profile: https://www.linkedin.com/in/c-sunday/
- GitHub Portfolio: https://github.com/cedozie
- Email: c.edozie.sunday@gmail.com


