drop table member6300;

insert into member
values(31, '홍길동', '111', 'honggildong@newlecture.com','honggildong');

SELECT * FROM MEMBER;

COMMIT;

INSERT INTO MEMBER(NAME, NICNAME, PWD) VALUES('고길동', 'GOGILDONG', '486');
COMMIT;

UPDATE MEMBER SET NAME='??', EMAIL='KIMGILDONG@NEWLECTURE.COM' WHERE ID=2;

UPDATE MEMBER SET NAME='김길동', EMAIL='AAA@NEWLECTURE.COM' WHERE ID =31;
COMMIT;

DELETE MEMBER WHERE NAME='고길동';

INSERT INTO MEMBER(ID, PWD, NICNAME) VALUES(39, '486', '홍재준');

UPDATE MEMBER SET NAME='HONG' WHERE ID=39;

UPDATE MEMBER SET EMAIL='HONG@NEWLECTURE.COM' WHERE ID=39;

INSERT INTO MEMBER(ID, NAME) VALUES(1004, '천사');

ROLLBACK;

UPDATE MEMBER SET NAME='영국에서 온 편지', NICNAME='1004' WHERE ID=39;

SELECT ID AS 번호, NAME AS 실험, PWD AS PASSWORD FROM MEMBER; 

------------------------------------------------;

SELECT * FROM MEMBER WHERE ID=1;

SELECT ID+1 AS ID FROM MEMBER WHERE ID=1;

SELECT 3+4 FROM ;

SELECT NAME||'('||NICNAME||')' SUM FROM MEMBER;

SELECT * FROM MEMBER WHERE ID BETWEEN 0 AND 5; 

SELECT * FROM MEMBER WHERE ID BETWEEN 0 AND 100;

SELECT * FROM MEMBER WHERE ID NOT IN (11,19,24);

SELECT* FROM MEMBER WHERE NAME LIKE '_영%';

SELECT * FROM MEMBER WHERE REGEXP_LIKE (NAME, '^.*모.*$');

SELECT ROWNUM, MEMBER.* FROM MEMBER WHERE ROWNUM BETWEEN 1 AND 5;

SELECT MEMBER.* FROM MEMBER WHERE ROWNUM BETWEEN 1 AND 5;

SELECT ROWNUM, MEMBER.* FROM MEMBER WHERE ROWNUM BETWEEN 6 AND 10;

SELECT * FROM (SELECT ROWNUM NUM, MEMBER.* FROM MEMBER) WHERE NUM BETWEEN 6 AND 10;
SELECT * FROM (SELECT * FROM MEMBER);

SELECT DISTINCT PWD FROM MEMBER;

SELECT LENGTH('HELLO') FROM DUAL;

SELECT NAME FROM MEMBER WHERE LENGTH(NAME)>3;

SELECT * FROM MEMBER ORDER BY NAME; 

SELECT * FROM MEMBER WHERE NAME LIKE '박%' ORDER BY ID;

SELECT COUNT(*) FROM MEMBER;

SELECT COUNT(ID) FROM MEMBER;

SELECT COUNT(*) COUNT FROM MEMBER;

UPDATE MEMBER SET AGE = 50 WHERE ID=39;
COMMIT;

UPDATE MEMBER SET AGE =  WHERE ID = 39;

COMMIT;

SELECT COUNT(AGE) FROM MEMBER;
COMMIT;

SELECT AGE, COUNT(ID) FROM MEMBER GROUP BY AGE ORDER BY AGE ASC;
SELECT AGE/10*10, COUNT(ID) FROM MEMBER GROUP BY AGE ORDER BY AGE ASC;

SELECT AGE FROM MEMBER GROUP BY AGE;

SELECT AVG(AGE) FROM MEMBER WHERE ID IN (1, 183, 777 , 737, 1354);

SELECT AVG(AGE) AGE FROM MEMBER WHERE MOD(ID, 2)=1;

INSERT INTO NOTICE(TITLE, WRITER_ID, CONTENT) VALUES('연탄재 함부로 발로 차지 마라', 39, '너는 뜨거운 사람에게 한번이라도 누구이었느냐?');
COMMIT;

SELECT WRITER_ID, COUNT(*) FROM NOTICE GROUP BY WRITER_ID;

INSERT INTO NOTICE(TITLE, WRITER_ID, CONTENT) VALUES('홍원 안티팬 카페 만들었습니다.', 38, '많은 가입 부탁드립니다.');

SELECT 
        (SELECT NAME FROM MEMBER WHERE ID=WRITER_ID) WRITER_NAME, 
        COUNT(ID) COUNT
FROM NOTICE 
GROUP BY WRITER_ID
HAVING COUNT(ID) >= 2;

SELECT * FROM MEMBER WHERE ROWNUM BETWEEN 1 AND 10;
SELECT * FROM MEMBER WHERE ROWNUM BETWEEN 1 AND 10 ORDER BY REG_DATE DESC;
SELECT * FROM MEMBER ORDER BY REG_DATE DESC WHERE ROWNUM BETWEEN 1 AND 10;

SELECT * FROM (SELECT * FROM MEMBER ORDER BY REG_DATE DESC) WHERE ROWNUM BETWEEN 1 AND 10;

SELECT * FROM (SELECT * FROM MEMBER ORDER BY REG_DATE DESC) WHERE ROWNUM BETWEEN 1 AND 10;
SELECT * FROM (SELECT MEMBER.*, ROWNUM A FROM MEMBER ORDER BY REG_DATE DESC) WHERE A BETWEEN 1 AND 10;

SELECT * FROM (SELECT MEMBER.*, ROWNUM A FROM MEMBER ORDER BY REG_DATE DESC) WHERE NUM BETWEEN 6 AND 10;
SELECT * FROM (SELECT MEMBER.*, ROWNUM B FROM(SELECT MEMBER.*, ROWNUM A FROM MEMBER ORDER BY REG_DATE DESC) MEMBER ORDER BY ROWNUM) WHERE B BETWEEN 11 AND 20;

SELECT * FROM (SELECT MEMBER.*, ROWNUM B FROM(SELECT * FROM MEMBER ORDER BY REG_DATE DESC) MEMBER ORDER BY ROWNUM) WHERE B BETWEEN 11 AND 20;
SELECT * FROM (SELECT MEMBER.*, ROWNUM B FROM (SELECT * FROM MEMBER ORDER BY REG_DATE DESC) MEMBER ORDER BY ROWNUM) WHERE B BETWEEN 11 AND 20;
SELECT * FROM (SELECT ROWNUM NUM, M.* FROM (SELECT * FROM MEMBER ORDER BY REG_DATE DESC) M) WHERE NUM BETWEEN 11 AND 20;


SELECT * FROM (SELECT ROWNUM NUM, MEMBER.* FROM MEMBER) WHERE NUM BETWEEN 6 AND 10;

UPDATE MEMBER SET REG_DATE = ;

SELECT * FROM ( SELECT ROWNUM NUM, MEMBER .* FROM MEMBER ORDER BY REG_DATE DESC) WHERE NUM BETWEEN 1 AND 10;


COMMIT;

SELECT AVG(NVL(AGE,0)) FROM MEMBER;
SELECT SUM(AGE)/COUNT(ID) FROM MEMBER;
SELECT SUM(AGE)FROM MEMBER;
SELECT * FROM MEMBER WHERE AGE >= (SELECT AVG(AGE) FROM MEMBER);

SELECT * FROM MEMBER WHERE AGE >= (SELECT AVG(AGE) FROM MEMBER);

SELECT * FROM MEMBER WHERE (SELECT MAX(HIT) FROM NOTICE);
SELECT * FROM MEMBER WHERE (SELECT MAX(HIT) FROM NOTICE);

SELECT WRITER_ID FROM NOTICE WHERE MAX(HIT);
SELECT HIT FROM NOTICE GROUP BY WRITER_ID;

SELECT WRITER_ID, SUM(HIT) FROM NOTICE GROUP BY WRITER_ID;

SELECT * FROM NOTICE GROUP BY WRITER_ID;

SELECT * FROM MEMBER WHRER ID = ;
SELECT WRITER_ID, SUM(HIT) FROM NOTICE GROUP BY WRITER_ID;
SELECT WRITER_ID, MAX(SUM(HIT)) FROM NOTICE GROUP BY WRITER_ID;

SELECT WRITER_ID, COUNT(WRITER_ID) FROM NOTICE GROUP BY WRITER_ID;
SELECT * FROM (SELECT WRITER_ID, COUNT(WRITER_ID) A FROM NOTICE GROUP BY WRITER_ID) WHRER A;

SELECT * FROM(SELECT WRITER_ID, COUNT(WRITER_ID) FROM NOTICE GROUP BY WRITER_ID);

SELECT * FROM MEMBER WHERE ID = (3,5,1,2);

SELECT HIT, COUNT(ID) FROM NOTICE GROUP BY HIT;

SELECT WIRTER_ID, SUM(HIT) FROM NOTICE GROUP BY WIRTER_ID;

SELECT GENDER, AVG(AGE) FROM MEMBER GROUP BY GENDER;

SELECT * FROM MEMBER AGE = ALL(SELECT GENDER, AVG(AGE) FROM MEMBER GROUP BY GENDER);


SELECT * FROM MEMBER WHERE AGE < ANY(SELECT AVG(AGE) FROM MEMBER GROUP BY GENDER);


SELECT 
        (SELECT NAME FROM MEMBER WHERE ID=WRITER_ID) WRITER_NAME, 
        COUNT(ID) COUNT
FROM NOTICE 
GROUP BY WRITER_ID
HAVING COUNT(ID) >= 2;
------------------------------------------------------

SELECT * FROM MEMBER JOIN NOTICE ON NOTICE.WRITER_ID = MEMBER.ID;

SELECT * FROM MEMBER INNER JOIN NOTICE ON NOTICE.WRITER_ID = MEMBER.ID;

SELECT M.ID MEMBER_ID, M.NAME MEMBER_NAME, N.ID, N.TITLE
FROM MEMBER M RIGHT OUTER JOIN NOTICE N ON N.WRITER_ID = M.ID;

SELECT * FROM (SELECT MEMBER*, ROWNUM B FROM(SELECT * FROM MEMBER ORDER BY REG_DATE DESC) MEMBER ORDER BY ROWNUM) WHERE B BETWEEN 6 AND 10;


SELECT WRITER_ID, COUNT(WRITER_ID) FROM NOTICE GROUP BY WRITER_ID ORDER BY COUNT(WRITER_ID) DESC;

INSERT INTO NOTICE(TITLE, WRITER_ID, CONTENT, HIT) VALUES('하이룽','1','연탄재 함부로 발로 차지 마라', 43);

SELECT * FROM MEMBER WHERE ID=(SELECT WRITER_ID FROM (SELECT * FROM (SELECT WRITER_ID, COUNT(WRITER_ID) FROM NOTICE GROUP BY WRITER_ID ORDER BY COUNT(WRITER_ID) DESC) WHERE ROWNUM=1));
SELECT GENDER, AVG(AGE) FROM MEMBER GROUP BY GENDER;
SELECT AGE FROM MEMBER ORDER BY AGE;

SELECT * FROM MEMBER WHERE AGE < ANY(SELECT AVG(AGE) FROM MEMBER GROUP BY GENDER);
SELECT * FROM MEMBER WHERE AGE > ANY(SELECT AVG(AGE) FROM MEMBER GROUP BY GENDER);

SELECT * FROM MEMBER WHERE AGE < ALL(SELECT AVG(AGE) FROM MEMBER GROUP BY GENDER);
SELECT * FROM MEMBER WHERE AGE > ALL(SELECT AVG(AGE) FROM MEMBER GROUP BY GENDER);

------------------------------------------------------------------------------------

SELECT WRITER_ID, COUNT(ID) FROM NOTICE GROUP BY WRITER_ID;

SELECT ID, (WRITER_ID, COUNT(ID) FROM NOTICE GROUP BY WRITER_ID);

SELECT M.ID, M.NAME, M.NICNAME, M.PWD, COUNT(N.ID) FROM MEMBER M JOIN NOTICE N ON M.ID = N.WRITER_ID GROUP BY M.ID, M.NAME, M.NICNAME, M.PWD;

SELECT M.*, COUNT(N.ID) FROM MEMBER M JOIN NOTICE N ON M.ID = N.WRITER_ID GROUP BY M.*;
SELECT M.ID, M.NAME, M.NICNAME, M.PWD, COUNT(N.ID) FROM MEMBER M JOIN NOTICE N ON M.ID = N.WRITER_ID GROUP BY M.ID,M.NAME, M.NICNAME, M.PWD;

(WRITER_ID, COUNT(ID) FROM NOTICE GROUP BY WRITER_ID);

SELECT ID,NAME FROM MEMBER GROUP BY NAME;

SELECT M.ID, M.NAME, M.NICNAME, M.PWD, COUNT(N.ID) FROM MEMBER M LEFT JOIN NOTICE N ON M.ID = N.WRITER_ID GROUP BY M.ID,M.NAME, M.NICNAME, M.PWD;


SELECT N.TITLE, N.WRITER_ID, M.NAME FROM NOTICE N JOIN MEMBER M ON N.WRITER_ID=M.ID;

SELECT N.TITLE, N.WRITER_ID, M.NAME FROM (SELECT N.TITLE, N.WRITER_ID FROM NOTICE N JOIN "COMMENT" C ON N.ID=C.NOTICE_ID) JOIN MEMBER M ON N.WRITER_ID=M.ID;

SELECT N.TITLE, N.WRITER_ID, C.CONTENT FROM NOTICE N JOIN "COMMENT" C ON N.ID=C.NOTICE_ID;

SELECT N.TITLE, N.WRITER_ID, COUNT(C.CONTENT) FROM NOTICE N LEFT JOIN "COMMENT" C ON N.ID=C.NOTICE_ID GROUP BY COUNT(C.ONTENT);

SELECT N.TITLE, N.WRITER_ID;

SELECT * FROM NOTICE N LEFT JOIN COMMENT C ON N.ID=C.NOTICE_ID;

SELECT N.ID, N.TITLE, N.REGDATE, M.NAME, COUNT(C.ID) CMT_COUNT FROM NOTICE N LEFT JOIN MEMBER M ON M.ID=N.WRITER_ID LEFT JOIN "COMMENT" C ON N.ID = C.NOTICE_ID GROUP BY N.ID, N.TITLE, N.REGDATE, M.NAME;

SELECT N.ID, COUNT(C.ID) FROM NOTICE N LEFT JOIN MEMBER M ON M.ID=N.WRITER_ID LEFT JOIN "COMMENT" C ON N.ID=C.NOTICE_ID GROUP BY N.ID;

update member set BOSS_ID=31 WHERE ID=39;
COMMIT;

SELECT * FROM MEMBER ORDER BY ID;

SELECT M.ID, M.NAME , M.BOSS_ID, B.NAME FROM MEMBER M LEFT JOIN MEMBER B ON M.BOSS_ID = B.ID;

SELECT * FROM MEMBER CROSS JOIN "COMMENT";

SELECT * FROM MEMBER CROSS JOIN "COMMENT";

CREATE VIEW NOTICE_VIEW AS
SELECT 'NOTICE' TYPE, ID, TITLE FROM NOTICE WHERE TITLE LIKE '%재%'
UNION
SELECT 'COMMENT' TYPE, ID, CONTENT FROM "COMMENT" WHERE CONTENT LIKE '%재%';




SELECT ID, TITLE FROM NOTICE WHERE TITLE LIKE '%안%'
MINUS
SELECT ID, CONTENT FROM "COMMENT" WHERE CONTENT LIKE '%재%';

SELECT * FROM NOTICE_VIEW;

SELECT * FROM USER_TABLES;
SELECT * FROM USER_TAB_COLUMNS;
SELECT * FROM USER_TAB_COLUMNS WHERE TABLE_NAME='COMMENT';

SELECT AVG(AGE) FROM MEMBER GROUP BY GENDER;
SELECT 'A' TYPE, ID, NAME, AGE, GENDER FROM MEMBER WHERE AGE <= ALL(SELECT AVG(AGE) FROM MEMBER GROUP BY GENDER)
UNION
SELECT 'B' TYPE, ID, NAME, AGE, GENDER FROM MEMBER WHERE AGE <= ANY(SELECT AVG(AGE) FROM MEMBER GROUP BY GENDER);
SELECT * FROM MEMBER;
SELECT * FROM NOTICE;
SELECT * FROM MEMBER M JOIN NOTICE N ON M.ID=N.WRITER_ID;
SELECT * FROM MEMBER INNER JOIN NOTICE ON NOTICE.WRITER_ID = MEMBER.ID;
SELECT M.ID, NAME, N.ID, TITLE
FROM MEMBER M JOIN NOTICE N ON N.WRITER_ID = M.ID;

SELECT N.ID, N.TITLE, N.REGDATE, M.NAME, COUNT(C.ID) CMT_COUNT FROM NOTICE N LEFT JOIN MEMBER M ON M.ID = N.WRITER_ID LEFT JOIN "COMMENT" C ON N.ID = C.NOTICE_ID GROUP BY N.ID, N.TITLE, N.REGDATE, M.NAME;
SELECT N.ID, N.TITLE, N.REGDATE, M.NAME, COUNT(C.ID) CMT_COUNT FROM NOTICE N LEFT JOIN MEMBER M ON N.WRITER_ID = M.ID LEFT JOIN "COMMENT" C ON N.ID = C.NOTICE_ID GROUP BY N.ID, N.TITLE, N.REGDATE, M.NAME;
SELECT N.ID, N.TITLE, N.REGDATE, M.NAME, COUNT(C.ID) CMT_COUNT FROM NOTICE N LEFT JOIN MEMBER M ON N.WRITER_ID = M.ID LEFT JOIN "COMMENT" C ON N.ID = C.NOTICE_ID GROUP BY N.ID, N.TITLE, N.REGDATE, M.NAME;

SELECT N.ID, COUNT(C.ID) FROM NOTICE N LEFT JOIN MEMBER M ON M.ID=N.WRITER_ID LEFT JOIN "COMMENT" C ON N.ID=C.NOTICE_ID GROUP BY N.ID;

SELECT N.ID, N.TITLE, N.REGDATE, M.NAME, COUNT(C.ID) FROM NOTICE N LEFT JOIN MEMBER M ON N.WRITER_ID = M.ID LEFT JOIN "COMMENT" C ON N.ID=C.NOTICE_ID;


SELECT M.ID, M.NAME, M.BOSS_ID 보스숫자, B.NAME 조직원 FROM MEMBER M JOIN MEMBER B ON M.ID=B.BOSS_ID;

SELECT M.ID, M.NAME, M.BOSS_ID, B.NAME FROM MEMBER M JOIN MEMBER B ON M.ID=B.BOSS_ID;

SELECT * FROM MEMBER CROSS JOIN NOTICE;

SELECT ID, NAME FROM MEMBER WHERE NAME LIKE '%모%'
UNION
SELECT ID, TITLE FROM NOTICE WHERE TITLE LIKE '%안%';

SELECT ID, TITLE FROM NOTICE WHERE TITLE LIKE '%재%'
INTERSECT
SELECT ID, CONTENT FROM "COMMENT" WHERE CONTENT LIKE '%재%';

SELECT '2' TYPE, ID, CONTENT FROM "COMMENT" WHERE CONTENT LIKE '%재%'
MINUS
SELECT '1' TYPE, ID, TITLE FROM NOTICE WHERE TITLE LIKE '%재%';

SELECT ID, TITLE FROM NOTICE WHERE TITLE LIKE '%재%'
MINUS
SELECT ID, CONTENT FROM "COMMENT" WHERE CONTENT LIKE '%재%';
