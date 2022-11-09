create table users(
	id VARCHAR2(12) PRIMARY KEY, pswd VARCHAR2(15) NOT NULL,
	name VARCHAR2(12) NOT NULL, nick VARCHAR2(20) NOT NULL,	grade VARCHAR2(10) DEFAULT '준회원',
	phone VARCHAR2(12) NOT NULL, addr VARCHAR2(100), joindate DATE DEFAULT SYSDATE
)

-- idx, id, pswd, name, nick, grade, phone, phone2, account, addr, post, joindate
-- 멤버추가
INSERT INTO USERS 
(id, pswd , name , nick , phone, addr)
VALUES( 'admin','qwe123', '강호동','회원1입니다', '01012341234', '경기도 용인시 기흥구 띵띵띵 띵띵띵띵띵@ 305-110');
INSERT INTO USERS 
(id, pswd , name , nick , phone, addr)
VALUES('apple','qwe123', '김애플','아이폰조아', '01043214321', '경기도 수원시 영통구 띵띵띵 띵띵띵띵띵@ 203-104');
INSERT INTO USERS 
(id, pswd , name , nick , phone, addr)
VALUES('carrot','qwe123', '차윤석','차둘기', '01033234432', '경기도 용인시 처인구 띵띵띵 띵띵띵띵 102-332')



INSERT INTO USERS (id, pswd , name , nick , phone, addr) VALUES(#{id},#{pswd},#{name},#{nick},#{phone},#{addr})




select * from users

--
INSERT INTO USERS (IDX, ID, PSWD, NAME, NICK, GRADE, PHONE, PHONE2, ACCOUNT, ADDR, POST, JOINDATE) VALUES((SELECT nvl(max(idx),0)+1 FROM USERS),?,?,?,?,?,?,?,?,?,?,?)

SELECT * FROM USERS WHERE id='admin' and pswd='qwe123'
SELECT * FROM USERS WHERE id=${id} and pswd=${pswd} 
--유저테이블 삭제
drop table users

