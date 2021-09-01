select m.bdr_name,customer_account_id,DATE_FORMAT(allocation_end, '%M-%Y') from (
select *,row_number() over(partition by bdr_name order by allocation_end desc)  rn from customer_account m
where allocation_end is not null
) m where rn=1