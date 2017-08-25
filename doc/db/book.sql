-- 书籍的分类信息
create table book_category(
    name varchr(64) not null,
    seq int not null

)
-- 书籍信息
create table book (
    id int auto_increment primary key,
    title varchar(64) not null,
    author_id int not null,
    author_name varchar(24) not null,
    publish_time datetime not null,
    publication varchar(64) ,
    publish_info_id int,
    free bit default b'0' not null,
    open bit default b'0',
    status tinyint not null,
    create_time datetime not null,
    update_time datetime not null
);

-- 出版信息
create table publish_info(
    id int auto_increment primary key,
    title varchar(64) not null,
    author_id int not null,
    author_name varchar(24) not null, 
    publisher_id int,
    publisher varchar(64),
    publish_time datetime not null,
    ISBN varchar(30),
    category_id int,
    category varchar(),
    pageCount int not null,
    introduce varchar(255) defaut '',
    directory blob 

);

-- 出版社信息
create table publisher_info(
    id int auto_increment primary key,
)

-- 阅读次

-- 喜欢

-- 收藏

-- 用户信息

create table user

