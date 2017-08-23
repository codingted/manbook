
create table wings_accounts_user
(
	id int auto_increment
		primary key,
	city_id int null,
	create_time datetime null,
	domain varchar(64) null,
	email varchar(64) null,
	icon int null,
	intro text null,
	mark int not null,
	name varchar(64) null,
	password varchar(64) null,
	random varchar(64) null,
	signature varchar(140) null,
	status tinyint not null,
	type int default '0' null,
	verify varchar(64) null,
	mobile varchar(20) null,
	bundle bit null,
	active_time datetime null,
	last_active_time datetime null
)
;

create index IDX_STATUS
	on wings_accounts_user (status)
;

create index i_wau_es
	on wings_accounts_user (email, status)
;

create index i_wau_ms
	on wings_accounts_user (mobile, status)
;

create index i_wau_n
	on wings_accounts_user (name)
;

create index i_wau_v
	on wings_accounts_user (verify)
;

