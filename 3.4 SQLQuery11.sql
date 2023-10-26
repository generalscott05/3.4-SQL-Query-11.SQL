SELECT TOP (1000) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2017].[HumanResources].[Employee]


  /*****************************************************************************************************************
NAME:    My Script Name
PURPOSE: My script purpose...

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2022   JJAUSSI       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

-- Q1: Metadata question: Can I obtain a list of all the columns and data types in the "HumanResources.Employee" table?

-- A1: Well, let's find the answer ..

SELECT [NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2017].[HumanResources].[Employee]

--Q2. Metadata question- How many columns does each table have, ordered from most to least?
--A2:Well we will have to find out using SQL Server...

SELECT TOP (1000) [BusinessEntityID]
      ,[DepartmentID]
      ,[ShiftID]
      ,[StartDate]
      ,[EndDate]
      ,[ModifiedDate]
  FROM [AdventureWorks2017].[HumanResources].[EmployeeDepartmentHistory] 
   

 --Q3 -  Business User question - Moderate complexity Can you create a list of tables that contain a column with one of these names: ShipMethodID?
 --A3: Well, I can sort that out using SQL Server...

 --Q4. Business User question- Moderate complexity: What are the names (Not BusinessEntityID’s) of the sales people who have already met their quota yet this year?
 --A4:Well let's try to find out fro SQL server.
 SELECT TOP (1000) [ShipMethodID]
 ,[ShipBase]
 FROM [AdventureWorks2017].[Purchasing].[ShipMethod]

 --Q5: Business User question  Marginal complexity:- : I'd like to know the average order value for each product category. Can you provide this information?
 --A5: Well let's ask SQL Server for answer...
 
 SELECT TOP (1000) [ProductCategoryID]
      ,[Name]
      ,[rowguid]
      FROM [AdventureWorks2017].[Production].[ProductCategory]

--Q6: Business User question Marginal omplexity- : What is the names of the product that has a safety stock Level of 1000 and a product ID of 320?
--A6: Well let's see if we can find the answers using SQL Server..
SELECT  TOP (1000) [ProductID]
      ,[Name]
      ,[SafetyStockLevel]
  FROM [AdventureWorks2017].[Production].[Product]
  WHERE SafetyStockLevel ='1000'

--Q7. Business User question-:Increased complexity: 
I would like to recognize one employee from each 
department during our summer picnic. Can you create a list of the employees in each
department who put in the most hours this last year? I want to know which department 
they are in and how many hours they worked. 
--A7:Well I can sort this out using SQL Server...

SELECT TOP (1000) [BusinessEntityID]
      ,[DepartmentID]
      FROM [AdventureWorks2017].[HumanResources].[EmployeeDepartmentHistory]

--Q8: Business User question - Increased complexity: We are looking at discontinuing our least profitable products. 
Can you create a list of the 20 lowest revenue products of the last three years? Include the standard cost, list cost,
and estimated revenue. Order by product category with the least profitable first.
--8: wELL LETS SEE HOW TO FIND THE ANSWER USING SQL Server
SELECT  TOP (1000) [ProductID]
      ,[StartDate]
      ,[EndDate]
      ,[StandardCost]
       FROM [AdventureWorks2017].[Production].[ProductCostHistory]
	   

--Q8: 
	   

