-- CREATING NORMALIZED RELATIONAL SCHEMA FOR HPLC/GC QC ANALYTICS
------------------------------------------------------------------

PRAGMA foreign_keys = ON;

---------------------------------------------------------
-- DROP TABLES (SAFE ORDER)
---------------------------------------------------------
DROP TABLE IF EXISTS control_summary;
DROP TABLE IF EXISTS calibrations;
DROP TABLE IF EXISTS system_suitability;
DROP TABLE IF EXISTS sample_metrics;
DROP TABLE IF EXISTS samples;
DROP TABLE IF EXISTS instruments;

---------------------------------------------------------
-- 1. INSTRUMENTS
---------------------------------------------------------
CREATE TABLE instruments (
    instrument_id   TEXT PRIMARY KEY,
    model           TEXT,
    manufacturer    TEXT,
    location        TEXT
);

---------------------------------------------------------
-- 2. SAMPLES (FACT TABLE)
---------------------------------------------------------
CREATE TABLE samples (
    sample_id           TEXT,
    instrument_id       TEXT NOT NULL,
    retention_time_min  REAL,
    peak_area           REAL,
    peak_width_min      REAL,
    concentration_mgL   REAL,
    true_value_mgL      REAL,
    run_date            TEXT,
    month               TEXT,

    PRIMARY KEY (sample_id, instrument_id, run_date),

    FOREIGN KEY (instrument_id)
        REFERENCES instruments(instrument_id)
        ON DELETE CASCADE
);

---------------------------------------------------------
-- 3. SAMPLE METRICS
---------------------------------------------------------
CREATE TABLE sample_metrics (
    sample_id           TEXT,
    instrument_id       TEXT,
    run_date            TEXT,
    
    replicate_number    INTEGER,
    error_mgL           REAL,
    error_pct           REAL,
    residual            REAL,
    percent_recovery    REAL,
    response_factor     REAL,
    peakarea_zscore     REAL,
    retention_deviation REAL,
    rsd_pct             REAL,
    is_outlier          INTEGER,
    
    ewma                REAL,
    cusum               REAL,
    roll_mean           REAL,
    roll_std            REAL,
    roll_cv             REAL,

    PRIMARY KEY (sample_id, instrument_id, run_date),

    FOREIGN KEY (sample_id, instrument_id, run_date)
        REFERENCES samples(sample_id, instrument_id, run_date)
        ON DELETE CASCADE,

    FOREIGN KEY (instrument_id)
        REFERENCES instruments(instrument_id)
        ON DELETE CASCADE
);

---------------------------------------------------------
-- 4. SYSTEM SUITABILITY
---------------------------------------------------------
CREATE TABLE system_suitability (
    instrument_id   TEXT,
    sample_id       TEXT,
    run_date        TEXT,

    plates          REAL,
    resolution      REAL,
    tailing         REAL,

    PRIMARY KEY (instrument_id, sample_id, run_date),

    FOREIGN KEY (instrument_id)
        REFERENCES instruments(instrument_id)
        ON DELETE CASCADE,

    FOREIGN KEY (sample_id, instrument_id, run_date)
        REFERENCES samples(sample_id, instrument_id, run_date)
        ON DELETE CASCADE
);

---------------------------------------------------------
-- 5. CALIBRATIONS
---------------------------------------------------------
CREATE TABLE calibrations (
    instrument_id   TEXT,

    slope           REAL,
    intercept       REAL,
    r2              REAL,

    PRIMARY KEY (instrument_id),

    FOREIGN KEY (instrument_id)
        REFERENCES instruments(instrument_id)
        ON DELETE CASCADE
);

---------------------------------------------------------
-- 6. CONTROL SUMMARY
---------------------------------------------------------
CREATE TABLE control_summary (
    instrument_id       TEXT PRIMARY KEY,

    total_runs          INTEGER,
    out_of_control_runs INTEGER,
    out_of_control      INTEGER,

    mean_peak_area      REAL,
    std_peak_area       REAL,
    ucl                 REAL,
    lcl                 REAL,

    FOREIGN KEY (instrument_id)
        REFERENCES instruments(instrument_id)
        ON DELETE CASCADE
);

