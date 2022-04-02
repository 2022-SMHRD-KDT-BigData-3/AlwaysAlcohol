--사용자 테이블에서 선호관련된 내용을 추가해야합니다
--기주 테이블은 칵테일 테이블과 서로 foreign key로 연결이 되길래 만들지 않았습니다
--프로젝트DB의 테이블은 전부 삭제했습니다

DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE base CASCADE CONSTRAINTS;
DROP TABLE taste CASCADE CONSTRAINTS;
DROP TABLE cocktail CASCADE CONSTRAINTS;
DROP TABLE recipe CASCADE CONSTRAINTS;
DROP TABLE drink_list CASCADE CONSTRAINTS;
DROP TABLE reply CASCADE CONSTRAINTS;
DROP TABLE fav_list CASCADE CONSTRAINTS;

--사용자
--선호 관련 구문 추가 필요
-- 남자 : 0, 여자 : 1
CREATE TABLE member
(member_id VARCHAR(15),
 pw VARCHAR(20) NOT NULL,
 nick VARCHAR(25) NOT NULL,
 member_name VARCHAR(25) NOT NULL,
 gender VARCHAR(2),
 birth DATE NOT NULL,
 join_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT mem_id_pk PRIMARY KEY(member_id),
 CONSTRAINT mem_gender_ck CHECK(gender IN('0','1')));
 
--기주(베이스)
CREATE TABLE base
(base_id NUMBER(10),
 base_name VARCHAR(15),
 CONSTRAINT base_id_pk PRIMARY KEY(base_id));
 
--맛
CREATE TABLE taste
(taste_id NUMBER(10),
 taste_info VARCHAR(20) NOT NULL,
 taste_info2 VARCHAR(20),
 taste_info3 VARCHAR(20),
 CONSTRAINT taste_id_pk PRIMARY KEY(taste_id));
 
--칵테일
CREATE TABLE cocktail
(cocktail_id NUMBER(10),
 cocktail_name VARCHAR(15) NOT NULL,
 cocktail_info VARCHAR(100) NOT NULL,
 proof NUMBER(5) NOT NULL,
 base_id NUMBER(10),
 taste_id NUMBER(10),
 cocktail_img VARCHAR(200) NOT NULL,
 CONSTRAINT cocktail_id_pk PRIMARY KEY(cocktail_id),
 CONSTRAINT cocktail_base_fk FOREIGN KEY(base_id) REFERENCES base(base_id),
 CONSTRAINT cocktail_taste_fk FOREIGN KEY(taste_id) REFERENCES taste(taste_id));
 
 --칵테일 레시피
CREATE TABLE recipe
(recipe_id NUMBER(10),
 cocktail_id NUMBER(10),
 material VARCHAR(100) NOT NULL,
 recipe_content VARCHAR(100) NOT NULL,
 CONSTRAINT recipe_id_pk PRIMARY KEY(recipe_id),
 CONSTRAINT recipe_cock_fk FOREIGN KEY(cocktail_id) REFERENCES cocktail(cocktail_id));
 
 --사용자의 칵테일 찜목록
CREATE TABLE drink_list
(dlist_id NUMBER(10),
 member_id VARCHAR(15),
 cocktail_id NUMBER(10),
 dlist_join DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT dlist_id_pk PRIMARY KEY(dlist_id),
 CONSTRAINT dlist_mem_fk FOREIGN KEY(member_id) REFERENCES member(member_id),
 CONSTRAINT dlist_cock_fk FOREIGN KEY(cocktail_id) REFERENCES cocktail(cocktail_id));
 
 --칵테일의 댓글(평가 포함)
CREATE TABLE reply
(reply_id NUMBER(10),
 member_id VARCHAR(15),
 cocktail_id NUMBER(10),
 reply_score NUMBER(10) NOT NULL,
 reply_content VARCHAR(50) NOT NULL,
 reply_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT reply_id_pk PRIMARY KEY(reply_id),
 CONSTRAINT reply_mem_fk FOREIGN KEY(member_id) REFERENCES member(member_id),
 CONSTRAINT reply_cock_fk FOREIGN KEY(cocktail_id) REFERENCES cocktail(cocktail_id));
 
CREATE TABLE fav_list
(flist_id NUMBER(30),
 member_id VARCHAR(15),
 base_id NUMBER(10),
 taste_id NUMBER(10),
 cocktail_id NUMBER(10),
 reply_id NUMBER(10),
 CONSTRAINT flist_id_pk PRIMARY KEY(flist_id),
 CONSTRAINT flist_mem_fk FOREIGN KEY(member_id) REFERENCES member(member_id),
 CONSTRAINT flist_base_fk FOREIGN KEY(base_id) REFERENCES base(base_id),
 CONSTRAINT flist_taste_fk FOREIGN KEY(taste_id) REFERENCES taste(taste_id),
 CONSTRAINT flist_cock_fk FOREIGN KEY(cocktail_id) REFERENCES cocktail(cocktail_id),
 CONSTRAINT flist_reply_fk FOREIGN KEY(reply_id) REFERENCES reply(reply_id));
 
SELECT * FROM member;
SELECT * FROM base;
SELECT * FROM taste;
SELECT * FROM cocktail;
SELECT * FROM recipe;
SELECT * FROM drink_list;
SELECT * FROM reply;
SELECT * FROM fav_list;

INSERT INTO member VALUES('test','test','test','test','0','2022-04-02',SYSDATE);















