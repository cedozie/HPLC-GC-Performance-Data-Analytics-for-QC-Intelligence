-- POPULATING NORMALIZED HPLC/GC QC ANALYTICS RELATIONAL SCHEMA
-----------------------------------------------------------------------

PRAGMA foreign_keys = ON;

-----------------------------------------------------------
--1. TABLE: instruments
-----------------------------------------------------------
INSERT OR IGNORE INTO instruments (instrument_id, model, manufacturer, location)
VALUES
('HPLC_01', 'Agilent 1260', 'Agilent', 'QC Lab A'),
('GC_02', 'Shimadzu GC-2030', 'Shimadzu', 'QC Lab B');

-----------------------------------------------------------------------
--2. TABLE: samples (convert/normalize column names and run_date)
-----------------------------------------------------------------------
INSERT OR REPLACE INTO samples (
  sample_id, instrument_id, run_date, retention_time_min, peak_area,
  peak_width_min, concentration_mgL, true_value_mgL, month
)
SELECT
  CAST(Sample_ID AS TEXT) AS sample_id,
  CAST(Instrument_ID AS TEXT) AS instrument_id,
 Run_Date AS run_date,
  CAST(RetentionTime_min AS REAL) AS retention_time_min,
  CAST(Peak_Area AS REAL) AS peak_area,
  CAST(PeakWidth_min AS REAL) AS peak_width_min,
  CAST(Concentration_mgL AS REAL) AS concentration_mgL,
  CAST(TrueValue_mgL AS REAL) AS true_value_mgL,
  CASE
    WHEN Run_Date IS NOT NULL AND length(Run_Date) >= 7 THEN substr(Run_Date,1,7)
    ELSE NULL
  END AS month
FROM hplc_gc_qc_data
WHERE Sample_ID IS NOT NULL;




