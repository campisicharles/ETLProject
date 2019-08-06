create table fbi (
	index int,
	State varchar(2) not null,
	Offense_Year int,
	Offense_Type varchar (20),
	Offense_Count varchar (20)
);

create table c_edu (
	Index float,
	Year float,
	Population float,
	People_over_25_with_No_Schooling float,
	High_School_Diploma float,
	GED float,
	Associates_Degree float,
	Bachelors_Degree float,
	Masters_Degree float,
	Professional_Degree float,
	Doctoral_Degree float,
	Name varchar,
	State float,
	No_Schooling_Rate float,
	High_School_Education_Rate float,
	GED_Rate float,
	Associates_Degree_Rate float,
	Bachelors_Degree_Rate float,
	Masters_Degree_Rate float,
	Professional_Degree_Rate float,
	Doctoral_Degree_Rate float
);

create table c_housing (
	Index float,
	Year float,
	Population float,
	Living_in_Poverty float,
	Median_Household_Income float,
	Unemployment_Count float,
	Avg_Cost_Rent_and_Utilities float,
	Avg_Value_Owner_Occupied_Home float,
	Avg_Mo_Housing_Expense_for_Homeowner_w_Mortgage float,
	Name varchar,
	state float,
	Unemployment_Rate float,
	Poverty_Rate float		
);