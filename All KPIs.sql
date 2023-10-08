-- Year wise loan amount Status

select year(issue_d) as "Year",
loan_status,
sum(loan_amnt) as "Loan Amount"
from finance_1
group by 1,2

-- Grade and sub grade wise revol_bal

select f.grade,
f.sub_grade,
fi.revol_bal
from finance_1 as f
left join finance_2 as fi on f.id = fi.id
order by 1 

-- Total Payment for Verified Status Vs Total Payment for Non Verified Status

select verification_status,
sum(annual_inc) as "Total Annual Income"
from finance_1
group by 1 


-- State wise and month wise loan status
select addr_state,
loan_status,
term
from finance_1

-- Home ownership Vs last payment date stats
select fi.last_pymnt_d,
f.home_ownership,
count(fi.last_pymnt_d)
from finance_1 as f
left join finance_2 as fi on f.id = fi.id
group by 1,2

-- Total Customers 
select
count(id) as "Total Customers"
from finance_2
