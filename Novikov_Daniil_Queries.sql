-- 1. Найти студентов, у которых имя начинается на A и они родились после 1995 года
select first_name, last_name, year(birth_date)
from students
Where first_name like 'A%' and year(birth_date) > 1995

-- 2. Найти студентов, у которых score равен 4 или 5 и id больше 10
select id, first_name, last_name, score
from students
Where score in (4,5) and id > 10

-- 3. Найти студентов, родившихся в марте или апреле
select first_name, last_name, month(birth_date) as march_and_april
from students
Where month(birth_date) in (3,4)

-- 4. Найти студентов, у которых фамилия начинается на S или D
select first_name, last_name
from students
where last_name LIKE 'S%' OR last_name LIKE 'D%'

-- 5. Найти студентов, у которых id между 20 и 100 и score больше 3
select id, first_name, last_name, score
from students
where id between 20 and 100 and score > 3

-- 6. Показать студентов, отсортированных по score по убыванию
select first_name, last_name, score
from students
order by score asc

-- 7. Показать студентов, отсортированных по фамилии и затем по имени
select first_name, last_name
from students
order by last_name asc, first_name asc

-- 8. Найти студентов, родившихся в первые 10 дней месяца
select first_name, last_name, day(birth_date) as first_day_month
from students
where day(birth_date) between 1 and 10

-- 9. Найти студентов, у которых имя содержит букву "a" и score меньше 4
select first_name, last_name, score
from students
where first_name like '%a%' and score < 4

-- 10. Показать 5 студентов с самым высоким score
select first_name, last_name, score
from students
order by score desc
limit 5

-- 11. Найти студентов, у которых id не входит в 1,2,3
select first_name, last_name, id
from students
where id not in (4,5)

-- 12. Найти студентов, родившихся зимой (декабрь, январь, февраль)
select first_name, last_name, month(birth_date) as winter
from students
where month(birth_date) in (12,1,2)

-- 13. Найти студентов, у которых фамилия содержит букву "o"
select first_name, last_name
from students
where last_name like '%o%'

-- 14. Найти студентов, у которых score больше 2 и меньше 5
select first_name, last_name, score
from students
where score > 2 and score < 5

-- 15. Показать студентов, отсортированных по году рождения
select first_name, last_name, birth_date
from students
order by birth_date asc

-- 16. Найти студентов, у которых имя начинается на T и id больше 50
select id, first_name, last_name
from students
where first_name like 'T%' and id > 50

-- 17. Найти студентов, родившихся в 1990, 1995 или 2000 году
select first_name, last_name, year(birth_date)
from students
where year(birth_date) in (1990, 1995, 2000)

-- 18. Показать студентов, у которых score равен 3 или фамилия начинается на B
select first_name, last_name, score
from students
where score =3 or last_name like 'B%'

-- 19. Найти студентов, у которых id больше 10 и они родились летом
select first_name, last_name, month(birth_date)
from students
where id > 10 and month(birth_date) in (6, 7, 8)

-- 20. Показать студентов, отсортированных по score и id
select id, first_name, last_name, score
from students
order by score asc, id asc

-- 21. Найти студентов, у которых имя длиннее 5 символов
select id, first_name, last_name
from students
where char_length(first_name) > 5

-- 22. Найти студентов, у которых фамилия заканчивается на "n" и score равен 5
select first_name, last_name, score
from students
where last_name like '%n' and score = 5

-- 23. Показать студентов, родившихся после 1998 года и отсортировать по дате рождения
select first_name, last_name, year(birth_date)
from students
where year(birth_date) > 1998
order by birth_date asc

-- 24. Найти студентов, у которых id делится на 3
select id, first_name, last_name
from students
where id % 3 = 0

-- 25. Показать 7 студентов с самым маленьким score
select first_name, last_name, score
from students
order by score asc
limit 7