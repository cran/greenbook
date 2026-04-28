## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----setup--------------------------------------------------------------------
library(greenbook)

## -----------------------------------------------------------------------------
gb_carbon_value(2024)
gb_carbon_value(2024, scenario = "high")
gb_carbon_value(2030)

## -----------------------------------------------------------------------------
gb_carbon_value(2030, base_year = 2024)

## -----------------------------------------------------------------------------
# 100 tCO2e per year for 2024 to 2030, treated as a cost
emissions <- rep(100, 7)
years <- 2024:2030
gb_carbon_npv(emissions, years, base_year = 2024)

## -----------------------------------------------------------------------------
gb_carbon_npv(emissions, years, base_year = 2024, sign = "benefit")

## -----------------------------------------------------------------------------
# 1-point lift in life satisfaction, 100 people, 5 years
gb_wellby(1, persons = 100, years = 5)

# In 2024 prices
gb_wellby(1, persons = 100, years = 5, base_year = 2024)

# Sensitivity range
gb_wellby(1, persons = 100, years = 5, scenario = "low")
gb_wellby(1, persons = 100, years = 5, scenario = "high")

## -----------------------------------------------------------------------------
gb_vpf()        # 2024 published value: GBP 2.153m
gb_vpf(2018)    # 2018 baseline

gb_qaly(1)                          # DHSC: GBP 70k per QALY
gb_qaly(1, scenario = "nice_upper") # NICE upper threshold: GBP 30k

## -----------------------------------------------------------------------------
gb_data_versions()

