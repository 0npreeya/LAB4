use foodorers;

drop procedure  if exists week4;
delimiter //
create procedure week4()
begin 
insert into orders values (3,'KKK', 30, "2023-07-18",100, 1);
insert into order_detail values (3,"KaoPad", 100.00,2,3);

insert into orders values (2,'KKK', 30, "2023-07-18",120, 2);
insert into order_detail values (2,"PadThai", 120.00,2,2);
end//
delimiter ;

create view ReportOrder as
select idorders, order_date, number_of_table, total_price
from orders join order_detail using(idorders)
group by idorders
order by order_date desc;