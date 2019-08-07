-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/bjfDQ5
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
-- drop tables

SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [fbi] (
    [ID] int  NOT NULL ,
    [ST_abv] varchar(2)  NOT NULL ,
    [Offense_Year] float  NOT NULL ,
    [Offense_Type] varchar(20)  NOT NULL ,
    [Offense_Count] varchar(20)  NOT NULL 
)

CREATE TABLE [c_edu] (
    [ST_abv] varchar(2)  NOT NULL ,
    [Year] float  NOT NULL ,
    [Population] float  NOT NULL ,
    [People_over_25_with_No_Schooling] float  NOT NULL ,
    [High_School_Diploma] float  NOT NULL ,
    [GED] float  NOT NULL ,
    [Associates_Degree] float  NOT NULL ,
    [Bachelors_Degree] float  NOT NULL ,
    [Masters_Degree] float  NOT NULL ,
    [Professional_Degree] float  NOT NULL ,
    [Doctoral_Degree] float  NOT NULL ,
    [Name] varchar  NOT NULL ,
    [State] float  NOT NULL ,
    [No_Schooling_Rate] float  NOT NULL ,
    [High_School_Education_Rate] float  NOT NULL ,
    [GED_Rate] float  NOT NULL ,
    [Associates_Degree_Rate] float  NOT NULL ,
    [Bachelors_Degree_Rate] float  NOT NULL ,
    [Masters_Degree_Rate] float  NOT NULL ,
    [Professional_Degree_Rate] float  NOT NULL ,
    [Doctoral_Degree_Rate] float  NOT NULL 
)

CREATE TABLE [c_housing] (
    [ST_abv] varchar(2)  NOT NULL ,
    [Year] float  NOT NULL ,
    [Population] float  NOT NULL ,
    [Living_in_Poverty] float  NOT NULL ,
    [Median_Household_Income] float  NOT NULL ,
    [Unemployment_Count] float  NOT NULL ,
    [Avg_Cost_Rent_and_Utilities] float  NOT NULL ,
    [Avg_Value_Owner_Occupied_Home] float  NOT NULL ,
    [Avg_Mo_Housing_Expense_for_Homeowner_w_Mortgage] float  NOT NULL ,
    [Name] varchar  NOT NULL ,
    [state] float  NOT NULL ,
    [Unemployment_Rate] float  NOT NULL ,
    [Poverty_Rate] float  NOT NULL 
)

ALTER TABLE [fbi] WITH CHECK ADD CONSTRAINT [FK_fbi_Offense_Year] FOREIGN KEY([Offense_Year])
REFERENCES [c_edu] ([Year])

ALTER TABLE [fbi] CHECK CONSTRAINT [FK_fbi_Offense_Year]

ALTER TABLE [c_edu] WITH CHECK ADD CONSTRAINT [FK_c_edu_ST_abv] FOREIGN KEY([ST_abv])
REFERENCES [fbi] ([ST_abv])

ALTER TABLE [c_edu] CHECK CONSTRAINT [FK_c_edu_ST_abv]

ALTER TABLE [c_housing] WITH CHECK ADD CONSTRAINT [FK_c_housing_ST_abv_Year] FOREIGN KEY([ST_abv], [Year])
REFERENCES [fbi] ([ST_abv], [Offense_Year])

ALTER TABLE [c_housing] CHECK CONSTRAINT [FK_c_housing_ST_abv_Year]

COMMIT TRANSACTION QUICKDBD