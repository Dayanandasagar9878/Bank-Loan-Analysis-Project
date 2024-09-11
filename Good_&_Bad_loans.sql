
SELECT COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) / COUNT(id) * 100
AS Good_Loan_Percentage FROM bank_loan_data;

SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR
loan_status = 'Current';

SELECT SUM(loan_amount) AS Good_Loan_funded
FROM bank_loan_data
WHERE
loan_status = 'Fully Paid' OR
loan_status = 'Current';

SELECT SUM(total_payment) AS Good_Loan_Amount_Received
FROM bank_loan_data
WHERE
loan_status = 'Fully Paid' OR
loan_status = 'Current';

SELECT ROUND(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) / COUNT(id) * 100,2)
AS Bad_Loan_Percentage FROM bank_loan_data;

SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT SUM(loan_amount) AS Bad_Loan_funded
FROM bank_loan_data
WHERE
loan_status = 'Charged Off';

SELECT SUM(total_payment) AS Bad_Loan_Amount_Received
FROM bank_loan_data
WHERE
loan_status = 'Charged Off';
























