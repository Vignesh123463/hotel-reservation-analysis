drop table if exists hotel_reservation_data;
create table hotel_reservation_data(
reservation_id varchar(20),
hotel_name varchar(30),
city varchar(30),
guest_ID int,
guest_name varchar(30),
rooom_type varchar(30),
check_In_date date,
check_out_date date,
nights int,
room_rate int,
total_amount int,
booking_channel varchar(30),
payment_status varchar(30),
booking_status varchar(30)
);
insert into hotel_reservation_data(reservation_id,hotel_name,city,guest_id,guest_name,rooom_type,check_in_date,check_out_date,nights,room_rate,total_amount,booking_channel,payment_status,booking_status)
values('R01','Tal palace','New delhi',1001,'guest_1','standard','2025-01-01','2025-01-03',2,2200,4400,'online','paid','checked-out');
insert into hotel_reservation_data
values('R02','the leela paace','bengaluru',1002,'guest_2','deluxe','2025-01-01','2025-01-04',3,3500,10500,'app','paid','confirmed');
insert into hotel_reservation_data
values('R03','oberio grand','kolkata',1003,'guest_3','suite','2025-01-02','2025-01-05',3,6000,18000,'walk_in','pending','confirmed');
insert into hotel_reservation_data
values('R04','ITC grand chola','chennai',1004,'guest_4','standard','2025-01-03','2025-01-06',4,2200,8800,'online','paid','chheked_out');
insert into hotel_reservation_data
values('R05','Radisson blu','mumbai',1005,'guest_5','deluxe','2025-01-03','2025-01-05',2,3500,7000,'app','failed','cancelled');
insert into hotel_reservation_data
values('R06','marriott international','hyderabad',1006,'guest_6','suite','2025-01-04','2025-01-07',3,6000,18000,'online','paid','confirmed');
insert into hotel_reservation_data
values('R07','hyatt regency','pune',1007,'guuest_7','standard','2025-03-08','2025-03-10',1,2200,2200,'walk-in','paid','checked-out');
insert into hotel_reservation_data
values('R08','vivanta by taj','kochi',1008,'guest_8','deluxe','2025-03-25','2025-03-28',3,3500,10500,'app','paiid','confirmed');
insert into hotel_reservation_data
values('R09','JW marriott','jaipur',1009,'guest_9','suite','2025-04-12','2025-04-15',4,6000,24000,'online','pending','confirmed');
insert into hotel_reservation_data
values('R10','four seasons hotel','mumbai',1010,'guest_10','standard','2025-07-11','2025-08-14',3,2200,6600,'online','pending','confirmed');
insert into hotel_reservation_data
values('R11','novotel hotels','hyderabad',10111,'guest_11','deluxe','2025-07-19','2025-07-22',2,3500,7000,'online','paid','checked-out');
insert into hotel_reservation_data
values('R12','lemon tree hotels','coimbatore',1012,'guest_12','suite','2025-08-10','2025-08-11',1,6000,6000,'app','paid','checked-out');
insert into hotel_reservation_data
values('R13','The lalit','bengaluru',1013,'guest_13','standard','2025-09-13','2025-09-16',3,2200,6600,'online','paid','confirmed');
insert into hotel_reservation_data
values('R14','sheraton grand','chennai',1014,'guest_14','deluxe','2025-10-19','2025-10-23',4,3500,14000,'walk-in','paid','confirmed');
insert into hotel_reservation_data
values('R15','tridennt hotels','new delhi',1015,'guest_15','suite','2025-11-25','2025-11-29',4,6000,24000,'app','paid','checked-out');
insert into hotel_reservation_data
values('R16','westin hotels','gurugram',1016,'guest_16','standard','2025-12-05','2025-12-07',2,2200,4400,'online','paid','checked-out');
insert into hotel_reservation_data
values('R17','park hyatt','hyderabad',1017,'guest_17','deluxe','2025-12-12','2025-12-15',3,3500,10500,'app','paid','confirmed');
insert into hotel_reservation_data
values('R18','the park hotels','chennai',1018,'guest_18','deluxe','2025-12-20','2025-12-24',4,3000,12000,'app','paid','checked-out');

select * from hotel_reservation_data;
select count(reservation_id) as number_of_id from hotel_reservation_data;
select max(room_rate) as maximum_of_roomrate from hotel_reservation_data;
select min(room_rate) as minimum_of_roomrate from hotel_reservation_data;
select max(total_amount) as maximum_of_totalamount from hotel_reservation_data;
select min(total_amount) as minimum_of_totalamont from hotel_reservation_data;
select avg(total_amount) as average_of_totalamount from hotel_reservation_data;
select sum(total_amount) as total_revenue from hotel_reservation_data;
select hotel_name,city,total_amount from hotel_reservation_data where total_amount=(select max(room_rate) as maximum_of_roomrate from hotel_reservation_data);
select hotel_name,city,rooom_type from hotel_reservation_data;
select hotel_name,nights,room_rate,total_amount from hotel_reservation_data order by total_amount desc;
select hotel_name,total_amount,booking_channel,payment_status from hotel_reservation_data order by total_amount desc;
select hotel_name,total_amount,payment_status from hotel_reservation_data where payment_status='failed';
select hotel_name,total_amount,payment_status from hotel_reservation_data where payment_status='pending';
select hotel_name,total_amount,payment_status from hotel_reservation_data where payment_status='paid';
select city,room_rate,rooom_type from hotel_reservation_data where rooom_type='standard';
select city,room_rate,rooom_type from hotel_reservation_data where rooom_type='suite';
select city,room_rate,rooom_type from hotel_reservation_data where rooom_type='deluxe';
select hotel_name,city,total_amount from hotel_reservation_data where total_amount<10000;
select hotel_name,city,total_amount from hotel_reservation_data where total_amount>10000;
select hotel_name,city,rooom_type,room_rate,total_amount from hotel_reservation_data  order by hotel_name asc;
select hotel_name,city,rooom_type from hotel_reservation_data where rooom_type like 's%';
select hotel_name,total_amount,rank() over(order by total_amount desc) as count_of_rank from hotel_reservation_data;
select hotel_name,total_amount,dense_rank() over(order by total_amount desc)as count_of_rank from hotel_reservation_data;