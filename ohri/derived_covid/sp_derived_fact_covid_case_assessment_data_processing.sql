USE analysis;


-- $BEGIN

-- SELECT 'Starting execution of Derived Objects';

-- Derived facts
-- SELECT 'Executing sp_derived_hts_fact_hts';
CALL sp_fact_covid_case_assessment;

-- $END