# Write your MySQL query statement below
SELECT distinct l1.num as consecutiveNums
FROM Logs l1, logs l2, logs l3
WHERE l1.id= l2.id -1 AND l2.id= l3.id-1
    AND l1.num= l2.num and l2.num= l3.num