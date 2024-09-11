#Loan Status

USE bank_loan_data;
SELECT * FROM bank_loan_data;

SELECT 
loan_status,
COUNT(id) AS Loan_Count,
SUM(total_payment) AS Total_Amount_Received,
SUM(loan_amount) AS Total_Funded_Amount,
AVG(int_rate * 100) AS Interest_Rate,
AVG(dti * 100) AS DTI
FROM bank_loan_data
GROUP BY
loan_status;

SELECT 
loan_status,
SUM(total_payment) AS MTD_Amount_Received,
SUM(loan_amount) AS MTD_Funded_Amount
FROM bank_loan_data
WHERE MONTH(issue_date) = 12
GROUP BY
loan_status;

# Bank Loan report Overview 

## Monthy Bank Loan Overview
SELECT
MONTH(issue_date) as Month_Number,
MONTHNAME(issue_date) AS Month_name,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date),MONTHNAME(issue_date)
ORDER BY MONTH(issue_date);

# Overview of Bank Loan Metrics by State
SELECT 
address_state AS State, 
COUNT(id) AS Total_Loan_Applications,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state;

#Overview of Bank Loan Metrics by Term
SELECT 
term AS Term, 
COUNT(id) AS Total_Loan_Applications,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term;

#Overview of Bank Loan Metrics by Employee Length
SELECT 
emp_length AS Employee_Length, 
COUNT(id) AS Total_Loan_Applications,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length;

#Overview of Bank Loan Metrics by Purpose
SELECT 
purpose AS PURPOSE, 
COUNT(id) AS Total_Loan_Applications,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose;

#Overview of Bank Loan Metrics by Home Ownership
SELECT 
home_ownership AS Home_Ownership, 
COUNT(id) AS Total_Loan_Applications,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership;














