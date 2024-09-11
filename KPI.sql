#Bank Loan report Summary

USE bank_loan_data;

#Total Loan Applications
SELECT COUNT(*) AS Total_Loan_Applications FROM bank_loan_data;

#Month-To-Date Loan Applications
SELECT COUNT(*) AS MTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = '2021';

#Previous-Month-to-Date Loan Applications
SELECT COUNT(*) PMTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

#Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data;

#MTD Total Funded Amount
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

#PMTD Total Funded Amount
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

#Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_received FROM bank_loan_data;

#MTD Total Amount Received
SELECT SUM(total_payment) AS MTD_Total_Amount_received FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

#PMTD Total Amount Received
SELECT SUM(total_payment) AS PMTD_Total_Amount_received FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

#Average Interest Rate
SELECT ROUND(AVG(int_rate)*100,2) AS Avg_Interest_rate FROM bank_loan_data;

#MTD_AVG_Int_Rate
SELECT ROUND(AVG(int_rate)*100,2) AS MTD_Avg_Int_rate FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

#PMTD_AVG_Int_Rate
SELECT ROUND(AVG(int_rate)*100,2) AS PMTD_Avg_Int_rate FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

#Total Average DTI
SELECT ROUND(AVG(dti)*100,2) AS AVG_DTI FROM bank_loan_data;

#MTD_Avg_DTI
SELECT ROUND(AVG(dti)*100,2) AS MTD_AVG_DTI FROM bank_loan_data
WHERE MONTH(issue_date)=12;

#PMTD_Avg_DTI
SELECT ROUND(AVG(dti)*100,2) AS PMTD_AVG_DTI FROM bank_loan_data
WHERE MONTH(issue_date)=11














;
