-- 2021-02-10
-- Nagy János, 2/24 esti szoft, virtuális, o


/* 1.) feladat:  */
create database aktiv2
collate utf8_hungarian_ci
character set utf8

/* 3.) feladat:  */
alter table versenyzok
add primary key(az)

/* 4.) feladat:  */
alter table versenyek
add
    constraint versenyzok_fk
    foreign key (versenyzoAz)
    references versenyzok(az)


/* 5.) feladat:  */

update versenyzok
set
    szuletes="1998-05-07"
where az=1



/* 6.) feladat:  */

insert into versenyzok
(az, nev, telepules, szuletes)
values
(2, 'Feles László', 'Hatvan', '1999-07-12')




/* 7.) feladat:  */


/* 8.) feladat:  */


/* 9.) feladat:  */
