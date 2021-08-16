Question1:
select * 
from movies;


Question 2: 
select * 
from directors;


Question 3: 
select count(*) 
from movies;


Question 4: 
select * 
from directors 
where name='James Cameron' or name='Luc Besson' or name='John Woo';


Question 5: 
select * 
from directors 
where name like 'Steven%';


Question 6: 
select count(*) 
from directors 
where gender=1;


Question 7: 
select name 
from directors 
where gender=1 
limit 10;


Question 8: 

select * 
from movies 
order by vote_count desc 
limit 3;

Question 9: 
select * 
from movies 
order by revenue desc 
limit 3;


Question 10:
select title, max(vote_average) as max_vote 
from movies
where release_date>='2000-01-01'
group by title
order by max_vote desc limit 1;


Question 11: 
select movies.*
from directors join movies on directors.id=movies.director_id
where directors.name='Brenda Chapman';


Question 12: 
select directors.id,directors.name, count(movies.id) as movies_count
from directors join movies on directors.id=movies.director_id
group by directors.name
order by movies_count desc
limit 1;


Question 13: 
select directors.id,directors.name, sum(movies.revenue) as movies_revenue
from directors join movies on directors.id=movies.director_id
group by directors.name
order by movies_revenue desc limit 1;








