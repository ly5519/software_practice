create table admin
(
    username varchar(20) not null
        primary key,
    password varchar(20) null
);

INSERT INTO software_practice.admin (username, password) VALUES ('qlf', '123');
