select agentName,
	avg(TIMESTAMPDIFF(HOUR,completion_time,creation_time)) avgtime,
	rank() over(order by avg(TIMESTAMPDIFF(Hour,completion_time,creation_time))) 'rank'  
from customer_tickets
group by agentName;