USE bank_loan_data;

SELECT COUNT(*) AS Total_Loan_Applications FROM bank_loan_data;

SELECT COUNT(*) AS MTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = '2021';

SELECT COUNT(*) PMTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data;

SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

SELECT SUM(total_payment) AS Total_Funded_Amount FROM bank_loan_data;

SELECT SUM(total_payment) AS MTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

SELECT SUM(total_payment) AS PMTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

SELECT ROUND(AVG(int_rate)*100,2) AS Avg_Interest_rate FROM bank_loan_data;

SELECT ROUND(AVG(int_rate)*100,2) AS MTD_Avg_Int_rate FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

SELECT ROUND(AVG(int_rate)*100,2) AS PMTD_Avg_Int_rate FROM bank_loan_data
WHERE MONTH(issue_date) = 11;

SELECT ROUND(AVG(dti)*100,2) AS AVG_DTI FROM bank_loan_data;

SELECT ROUND(AVG(dti)*100,2) AS MTD_AVG_DTI FROM bank_loan_data
WHERE MONTH(issue_date)=12;

SELECT ROUND(AVG(dti)*100,2) AS PMTD_AVG_DTI FROM bank_loan_data
WHERE MONTH(issue_date)=11














;