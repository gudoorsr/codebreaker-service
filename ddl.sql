create table code 
( 
	code_id CHAR(16) FOR BIT DATA not null, 
	created timestamp not null, 
	length integer check (length<=20 AND length>=1), 
	pool varchar(255) not null, 
	code_text varchar(255) not null, 
	primary key (code_id)
);
create index IDXgbgh4wcibfavyjxrg5hbrbdfq on code (created)
create table code (code_id CHAR(16) FOR BIT DATA not null, created timestamp not null, length integer check (length<=20 AND length>=1), pool varchar(255) not null, code_text varchar(255) not null, primary key (code_id))
create table guess (guess_id CHAR(16) FOR BIT DATA not null, created timestamp not null, exact_matches integer not null, near_matches integer not null, guess_text varchar(255) not null, code_id CHAR(16) FOR BIT DATA not null, primary key (guess_id))
create index IDXgbgh4wcibfavyjxrg5hbrbdfq on code (created)
alter table guess add constraint FKwak3gf9mjwbqqrneoqv4jq78 foreign key (code_id) references code
