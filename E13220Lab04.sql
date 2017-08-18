create table MOVIE(
MOVIE_ID INT(3) NOT NULL,
TITLE VARCHAR(20),
YEAR INT(4),
DIRRECTOR VARCHAR(15),
PRIMARY KEY(MOVIE_ID));
    
create table REVIEWER
(REVIEWER_ID INT(3) NOT NULL,
REVIEWER_NAME VARCHAR(15),
PRIMARY KEY(REVIEWER_ID));
    
create table RATING
(REVIEWER_ID INT(3) NOT NULL,
MOVIE_ID INT(3) NOT NULL,
STARS INT(1),
RATING_DATE VARCHAR(10),
PRIMARY KEY(STARS,MOVIE_ID),
FOREIGN KEY (MOVIE_ID) REFERENCES MOVIE(MOVIE_ID),
);

INSERT INTO MOVIE VALUES(101,'Gone with the Wind',1939,'Victor Fleming');
INSERT INTO MOVIE VALUES(102,'Star Wars',1977,'George Lucas');
INSERT INTO MOVIE VALUES(103,'The Sound of Music',1965,'Robert Wise');
INSERT INTO MOVIE VALUES(104,'E.T',1982,'Steven Spielberg');
INSERT INTO MOVIE VALUES(105,'Titanic',1997,'James Cameron');
INSERT INTO MOVIE VALUES(106,'Snow White',1937,'');
INSERT INTO MOVIE VALUES(107,'Avatar',2009,'James Cameron');
INSERT INTO MOVIE VALUES(108,'Raiders of the Lost Arc',1981,'Steven Spielberg');

INSERT INTO REVIEWER VALUES(201,'Sarah Matrinez');
INSERT INTO REVIEWER VALUES(202,'Daniel Lewis');
INSERT INTO REVIEWER VALUES(203,'Brittany Harris');
INSERT INTO REVIEWER VALUES(204,'Mike Anderson');
INSERT INTO REVIEWER VALUES(205,'Chris Jackson');
INSERT INTO REVIEWER VALUES(206,'Elizabeth Thoms');
INSERT INTO REVIEWER VALUES(207,'James Cameron');
INSERT INTO REVIEWER VALUES(208,'Ashley White');

INSERT INTO RATING VALUES(201,101,2,'2011-01-22');
INSERT INTO RATING VALUES(201,101,4,'2011-01-27');
INSERT INTO RATING VALUES(202,106,4,'');
INSERT INTO RATING VALUES(203,103,2,'2011-01-20');
INSERT INTO RATING VALUES(203,108,4,'2011-01-30');
INSERT INTO RATING VALUES(203,108,2,'2011-01-30');
INSERT INTO RATING VALUES(204,101,3,'2011-01-09');
INSERT INTO RATING VALUES(205,103,3,'2011-01-27');
INSERT INTO RATING VALUES(205,104,2,'2011-01-22');
INSERT INTO RATING VALUES(205,108,4,'');
INSERT INTO RATING VALUES(206,107,3,'2011-01-15');
INSERT INTO RATING VALUES(206,106,5,'2011-01-19');
INSERT INTO RATING VALUES(207,107,5,'2011-01-20');
INSERT INTO RATING VALUES(208,104,3,'2011-01-02');

SELECT * FROM MOVIE;
SELECT MOVIE_ID,TITLE,YEAR,DIRECTOR FROM MOVIE WHERE DIRECTOR='James Cameron';
SELECT MOVIE_ID,TITLE,YEAR FROM MOVIE WHERE DIRECTOR='James Cameron' AND YEAR>=2000 ;
SELECT STARS FROM RATING;
SELECT DISTINCT STARS FROM RATING;
SELECT MOVIE_ID,DIRECTOR FROM  MOVIE;
SELECT MOVIE_ID,TITLE FROM MOVIE WHERE DIRECTOR='Steven Spielberg';
SELECT REVIEWER_ID,MOVIE_ID FROM RATING;
SELECT DISTINCT REVIEWER_ID,MOVIE_ID FROM RATING;
SELECT * FROM REVIEWER WHERE REVIEWER_NAME='Sarah Martinez';
