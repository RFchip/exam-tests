DROP TABLE IF EXISTS useranswersid;
DROP TABLE IF EXISTS answers;
DROP TABLE IF EXISTS questions;


create table questions
 (q_id smallint unsigned not null auto_increment,
  question varchar(200) not null,
  primary key (q_id)
 );



create table answers
 (a_id smallint unsigned not null auto_increment,
 answer varchar(200) not null, 
 parent_q smallint unsigned not null,
 rt_a boolean not null,
 constraint fk_a_parent_q
    foreign key (parent_q) references questions (q_id),
  constraint pk_questions primary key (a_id)
 );
 
 
 
 create table useranswersids
 (id int unsigned not null default 0,
  ua_id smallint unsigned,
  constraint fk_auid_au_id
    foreign key (ua_id) references answers (a_id)
  );