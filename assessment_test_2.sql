/*
-- Q1- Retrieving all the information at once
SELECT *
FROM cd.facilities;
*/

/*
-- Q2- Retrieving a list of all of the facilities and their cost to members
SELECT name, membercost
FROM cd.facilities;
*/

/*
-- Q3- A list of facilities that charge a fee to members
SELECT name
FROM cd.facilities
WHERE membercost > 0;
*/

/*
--Q4-  A list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost?
SELECT 
facid, 
name AS facid_name,
membercost,
monthlymaintenance
FROM
cd.facilities
WHERE membercost != 0 
AND (membercost < monthlymaintenance / 50);
*/

/*
--Q5-  Produce a list of all facilities with the word 'Tennis' in their name
SELECT *
FROM cd.facilities
WHERE name LIKE ('%Tennis%');
*/

/*
--Q6-  Can you retrieve the details of facilities with ID 1 and 5?
SELECT *
FROM cd.facilities
WHERE facid IN (1, 5);
*/

/*
--Q7-  A list of members who joined after the start of September 2012
SELECT 
memid, 
surname, 
firstname, 
joindate
FROM cd.members
WHERE joindate > '2012-09-01'
ORDER BY joindate;
*/

/*
--Q8-  Can you produce an ordered list of the first 10 surnames in the members table?
SELECT DISTINCT(surname)
FROM cd.members
WHERE surname != 'GUEST'
ORDER BY surname
LIMIT 10;
*/

/*
--Q9-  You'd like to get the signup date of your last member
SELECT joindate
FROM cd.members
ORDER BY joindate DESC
LIMIT 1;
*/

/*
--Q10- Produce a count of the number of facilities that have a cost to guests of 10 or more
SELECT COUNT(*)
FROM cd.facilities
WHERE guestcost > 10
;
*/

/*
--Q11- Produce a list of the total number of slots booked per facility in the month of September 2012
SELECT facid, SUM(slots) AS Total_Slots
FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY facid
ORDER BY Total_Slots
;
*/

/*
--Q12- Produce a list of facilities with more than 1000 slots booked.
SELECT 
facid, 
SUM(slots) AS total_slots
FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid
;
*/

/*
--Q13- How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'?
SELECT starttime, name
FROM cd.bookings
INNER JOIN cd.facilities
ON cd.facilities.facid = cd.bookings.facid
WHERE starttime BETWEEN '2012-09-21' AND '2012-09-22'
AND name LIKE ('Tennis Court%')
ORDER BY starttime
;
*/

