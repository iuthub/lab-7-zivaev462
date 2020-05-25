use imdb_small;
select name from movies
where year = '1995';


select  COUNT(actor_id) from roles where movie_id = (
select id from movies where name='Lost in Translation'
);


select first_name from actors where id in 
(
select  actor_id from roles where movie_id = (
select id from movies where name='Lost in Translation'
)
);


select first_name
from movies_directors md join movies m on md.movie_id = m.id 
join directors d on md.director_id = d.id 
where m.name = 'Fight Club' ;


select count(m.id)
from movies_directors md join directors d on md.director_id = d.id 
join movies m on md.movie_id = m.id where d.first_name = 'Clint' and d.last_name = 'Eastwood';

select first_name 
from movies_directors md join movies m on md.movie_id = m.id
join directors d on d.id = md.director_id
join movies_genres mg on mg.movie_id = m.id
where mg.genre = 'Horror';


select act.first_name 
from movies_directors md join directors d on md.director_id = d.id
join roles r USING(movie_id) join actors act on r.actor_id = act.id
where d.first_name = 'Christopher' and d.last_name = 'Nolan' and r.role is not Null;