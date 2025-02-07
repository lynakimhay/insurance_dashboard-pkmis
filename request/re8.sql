--Request 8
--Pending quotation, maximum premium [2pt]

SELECT count(id) from quotation 
    where quotation_status = 'Pending';

 SELECT
    MAX(proposed_premium) AS max_premium
    FROM quotation q
    WHERE q.quotation_status = 'Pending';

--Approved quotation, number of company [2pt]
SELECT
COUNT(DISTINCT c.id) AS approved_quotation_company
FROM quotation q
JOIN company c ON q.company_id = c.id
WHERE q.quotation_status = 'Approved';