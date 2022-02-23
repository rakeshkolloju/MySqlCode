with tmp as (select 1 as col1
union all
select 4
union all
select 7
union all
select 13
union all
select 16
union all
select 22)
--select * from tmp ;
select col1+3 from (select col1,lead(col1) over(order by col1) col2,(lead(col1) over(order by col1)-col1) col3 from tmp)t where col3<>3
