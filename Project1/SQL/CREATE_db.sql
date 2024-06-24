
-- Truncate existing data from the tables
TRUNCATE TABLE covidVaccinations CASCADE;
TRUNCATE TABLE covidDeaths CASCADE;

-- Recreate the tables with the desired structure
CREATE TABLE covidDeaths (
  iso_code VARCHAR(10) PRIMARY KEY,
  continent VARCHAR(255),
  location VARCHAR(255),
  date VARCHAR(10),  -- Change to VARCHAR(10) to store the date string
  population INT,
  total_cases INT,
  new_cases INT,
  new_cases_smoothed DECIMAL(10,2),
  total_deaths INT,
  new_deaths INT,
  new_deaths_smoothed DECIMAL(10,2),
  total_cases_per_million DECIMAL(10,4),
  new_cases_per_million DECIMAL(10,4),
  new_cases_smoothed_per_million DECIMAL(10,4),
  total_deaths_per_million DECIMAL(10,4),
  new_deaths_per_million DECIMAL(10,4),
  new_deaths_smoothed_per_million DECIMAL(10,4),
  reproduction_rate DECIMAL(10,2),
  icu_patients INT,
  icu_patients_per_million DECIMAL(10,4),
  hosp_patients INT,
  hosp_patients_per_million DECIMAL(10,4),
  weekly_icu_admissions INT,
  weekly_icu_admissions_per_million DECIMAL(10,4),
  weekly_hosp_admissions INT,
  weekly_hosp_admissions_per_million DECIMAL(10,4)
);


CREATE TABLE covidVaccinations (
  iso_code VARCHAR(10) PRIMARY KEY,
  continent VARCHAR(255),
  location VARCHAR(255),
  date DATE,
  new_tests INT,
  total_tests INT,
  total_tests_per_thousand DECIMAL(10,4),
  new_tests_per_thousand DECIMAL(10,4),
  new_tests_smoothed DECIMAL(10,2),
  new_tests_smoothed_per_thousand DECIMAL(10,4),
  positive_rate DECIMAL(10,2),
  tests_per_case DECIMAL(10,2),
  tests_units VARCHAR(255),
  total_vaccinations INT,
  people_vaccinated INT,
  people_fully_vaccinated INT,
  new_vaccinations INT,
  new_vaccinations_smoothed DECIMAL(10,2),
  total_vaccinations_per_hundred DECIMAL(10,4),
  people_vaccinated_per_hundred DECIMAL(10,4),
  people_fully_vaccinated_per_hundred DECIMAL(10,4),
  new_vaccinations_smoothed_per_million DECIMAL(10,4),
  stringency_index DECIMAL(10,2),
  population_density DECIMAL(10,2),
  median_age DECIMAL(10,2),
  aged_65_older INT,
  aged_70_older INT,
  gdp_per_capita DECIMAL(10,2),
  extreme_poverty DECIMAL(10,4),
  cardiovasc_death_rate DECIMAL(10,2),
  diabetes_prevalence DECIMAL(10,4),
  female_smokers DECIMAL(10,2),
  male_smokers DECIMAL(10,2),
  handwashing_facilities DECIMAL(10,4),
  hospital_beds_per_thousand DECIMAL(10,4),
  life_expectancy DECIMAL(10,2),
  human_development_index DECIMAL(10,2)
);
