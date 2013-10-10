insert into questions (q_id, question)
values (null, 'Какое утверждение относительно метода верно?');


insert into questions (q_id, question)
values (null, 'Какое утверждение относительно объекта верно?');


insert into questions (q_id, question)
values (null, 'Какое утверждение верно о члене экземпляра (instance member)?');


insert into questions (q_id, question)
values (null, 'Как объекты передают сообщения в Java?');


insert into questions (q_id, question)
values (null, 'Какое будет получено значение после вычисления выражения (- - 1-3 * 10 / 5-1)?');




insert into answers (answer, parent_q, rt_a)
values ('-8', 
(select q_id from questions 
where question = 'Какое будет получено значение после вычисления выражения (- - 1-3 * 10 / 5-1)?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('-6', 
(select q_id from questions 
where question = 'Какое будет получено значение после вычисления выражения (- - 1-3 * 10 / 5-1)?'),
 1);


insert into answers (answer, parent_q, rt_a)
values ('7', 
(select q_id from questions 
where question = 'Какое будет получено значение после вычисления выражения (- - 1-3 * 10 / 5-1)?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('8', 
(select q_id from questions 
where question = 'Какое будет получено значение после вычисления выражения (- - 1-3 * 10 / 5-1)?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('10', 
(select q_id from questions 
where question = 'Какое будет получено значение после вычисления выражения (- - 1-3 * 10 / 5-1)?'),
 0);


/* ----------------------------ответы на 'Как объекты передают сообщения в Java?'----------------------------*/

insert into answers (answer, parent_q, rt_a)
values ('Они передают сообщения при помощи изменения полей друг друга.', 
(select q_id from questions 
where question = 'Как объекты передают сообщения в Java?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('Они передают сообщения при помощи изменения статических переменных классов друг друга.', 
(select q_id from questions 
where question = 'Как объекты передают сообщения в Java?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('Они передают сообщения при помощи вызова методов экземпляра друг друга.', 
(select q_id from questions 
where question = 'Как объекты передают сообщения в Java?'),
 1);


insert into answers (answer, parent_q, rt_a)
values ('Они передают сообщения при помощи вызова статических методов классов друг друга.', 
(select q_id from questions 
where question = 'Как объекты передают сообщения в Java?'),
 0);


/* --------------ответы на 'Какое утверждение верно о члене экземпляра (instance member)?'----------------------------*/


insert into answers (answer, parent_q, rt_a)
values ('Член экземпляра также называется статическим членом.', 
(select q_id from questions
where question = 'Какое утверждение верно о члене экземпляра (instance member)?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('Член экземпляра - это всегда поле.', 
(select q_id from questions 
where question = 'Какое утверждение верно о члене экземпляра (instance member)?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('Член экземпляра никогда не является методом.', 
(select q_id from questions 
where question = 'Какое утверждение верно о члене экземпляра (instance member)?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('Член экземпляра приннадлежит экземпляру, а не классу вцелом.', 
(select q_id from questions 
where question = 'Какое утверждение верно о члене экземпляра (instance member)?'),
 1);


insert into answers (answer, parent_q, rt_a)
values ('Член всегда представляет операцию.', 
(select q_id from questions 
where question = 'Какое утверждение верно о члене экземпляра (instance member)?'),
 0);


/* ---------------------ответы на 'Какое утверждение относительно объекта верно?'----------------------------*/


insert into answers (answer, parent_q, rt_a)
values ('Объект - это то, из чего порождается класс.', 
(select q_id from questions 
where question = 'Какое утверждение относительно объекта верно?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('Объект - это экземпляр класса.', 
(select q_id from questions 
where question = 'Какое утверждение относительно объекта верно?'),
 1);


insert into answers (answer, parent_q, rt_a)
values ('Объект - это форма для создания конкретной реализации абстракции.', 
(select q_id from questions 
where question = 'Какое утверждение относительно объекта верно?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('Объект - это ссылка на атрибут.', 
(select q_id from questions 
where question = 'Какое утверждение относительно объекта верно?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('Объект - это переменная.', 
(select q_id from questions 
where question = 'Какое утверждение относительно объекта верно?'),
 0);


/* ---------------------ответы на 'Какое утверждение относительно метода верно?'----------------------------*/


insert into answers (answer, parent_q, rt_a)
values ('Метод реализует абстракцию.', 
(select q_id from questions 
where question = 'Какое утверждение относительно метода верно?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('Метод - это атрибут, определяющий свойство конкретной абстракции.', 
(select q_id from questions 
where question = 'Какое утверждение относительно метода верно?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('Метод - это категория объектов.', 
(select q_id from questions
where question = 'Какое утверждение относительно метода верно?'),
 0);


insert into answers (answer, parent_q, rt_a)
values ('Метод - это дествие, определяющее поведение для конкретной абстракции.', 
(select q_id from questions 
where question = 'Какое утверждение относительно метода верно?'),
 1);


insert into answers (answer, parent_q, rt_a)
values ('Метод - это форма для создания операций.', 
(select q_id from questions 
where question = 'Какое утверждение относительно метода верно?'),
 0);