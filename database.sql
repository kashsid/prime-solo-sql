--How do you get all users from Chicago?
 select * from accounts where "city" = 'chicago';
--How do you get all users with usernames that contain the letter a?
 select * from accounts where username like '%a%';

--The bank is giving a new customer bonus! How do you update all
-- records with an account balance of 0.00 and a 
--transactions_attempted of 0? Give them a new account 
--balance of 10.00.
update accounts Set "account_balance"= 10.00 where "account_balance" =0 and "transactions_attempted"=0.00;

--How do you select all users that have attempted 9 or more transactions?
Select * from accounts where "transactions_attempted" >9;

--How do you get the username and account balance of the 3 users with the highest balances, sorted highest to lowest balance? NOTE: Research LIMIT
select * from accounts order by  "account_balance" desc limit 3;

--How do you get the username and account balance of the 3 users with the lowest balances, sorted lowest to highest balance?
select * from accounts order by  "account_balance" Asc limit 3;

--How do you get all users with account balances that are more than $100?
select * from accounts where "account_balance" > 100;

--How do you add a new account?
INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) 
VALUES ('Brad', 'Lakeville', 5, 8, 315.80);
--The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: How do you delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
Delete from accounts where ("city" = 'phoenix'  OR "city"='miami') and "transactions_completed" < 5;
-- STRETCH GOALS

-- Anthony moved to Santa Fe.
update accounts set "city"='santa fe' where "username"='anthony';

--Grace closed her account.

Delete from accounts where "username"='grace';
--Travis made a withdrawl of $20,000. What's their new balance? NOTE: Research RETURNING


The Bank needs to track last names. NOTE: Research ALTER TABLE https://www.postgresql.org/docs/10/static/sql-altertable.html

