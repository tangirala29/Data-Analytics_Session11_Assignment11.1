use sakila;
show tables;
select * from film;
select * from film_actor;
select * from film_category;
select * from actor;

/*Assignment 11.1- problem 1*/
select max(length) from film;

select length,title,rental_duration from film
where length=185
order by length;

/*Assignment 11.1 problem 2*/
create table Table1 as 
select sum(actor_id) as actors_sum,film_id from film_actor
group by film_id
order by film_id;


select * from Table1;

select avg(actors_sum) as ag from table1;

create table Table2 as
select actors_sum, film_id from Table1
where actors_sum> 553.0612
group by film_id
order by film_id
limit 10;

select * from Table2;

select actors_sum,title from Table2
inner join film f on
Table2.film_id=f.film_id
order by title;
