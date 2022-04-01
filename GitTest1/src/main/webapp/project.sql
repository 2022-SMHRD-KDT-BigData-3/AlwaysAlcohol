--사용자 테이블에서 선호관련된 내용을 추가해야합니다
--기주 테이블은 칵테일 테이블과 서로 foreign key로 연결이 되길래 만들지 않았습니다
--프로젝트DB의 테이블은 전부 삭제했습니다

DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE cocktail CASCADE CONSTRAINTS;
DROP TABLE recipe CASCADE CONSTRAINTS;
DROP TABLE fav_list CASCADE CONSTRAINTS;
DROP TABLE reply CASCADE CONSTRAINTS;

--사용자
--선호 관련 구문 추가 필요
CREATE TABLE member
(member_id VARCHAR(15),
 pw VARCHAR(20) NOT NULL,
 nick VARCHAR(25) NOT NULL,
 member_name VARCHAR(25) NOT NULL,
 gender VARCHAR(15),
 birth DATE NOT NULL,
 join_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT mem_id_pk PRIMARY KEY(member_id),
 CONSTRAINT mem_gender_ck CHECK(gender IN('MALE','FEMALE')));
 
 --칵테일
CREATE TABLE cocktail
(cocktail_id NUMBER(10),
 cocktail_name VARCHAR(15) NOT NULL,
 base VARCHAR(15) NOT NULL,
 proof NUMBER(5) NOT NULL,
 taste VARCHAR(15) NOT NULL,
 CONSTRAINT cocktail_id_pk PRIMARY KEY(cocktail_id));
 
 --칵테일 레시피
CREATE TABLE recipe
(recipe_id NUMBER(10),
 cocktail_id NUMBER(10),
 material VARCHAR(100) NOT NULL,
 recipe_content VARCHAR(100) NOT NULL,
 CONSTRAINT recipe_id_pk PRIMARY KEY(recipe_id),
 CONSTRAINT recipe_cock_fk FOREIGN KEY(cocktail_id) REFERENCES cocktail(cocktail_id));
 
 --사용자의 선호 목록
CREATE TABLE fav_list
(fav_id NUMBER(10),
 member_id VARCHAR(15),
 cocktail_id NUMBER(10),
 fav_join DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT fav_id_pk PRIMARY KEY(fav_id),
 CONSTRAINT fav_mem_fk FOREIGN KEY(member_id) REFERENCES member(member_id),
 CONSTRAINT fav_cock_fk FOREIGN KEY(cocktail_id) REFERENCES cocktail(cocktail_id));
 
 --칵테일의 댓글(평가 포함)
CREATE TABLE reply
(reply_id NUMBER(10),
 member_id VARCHAR(15),
 cocktail_id NUMBER(10),
 reply_score NUMBER(10) NOT NULL,
 reply_content VARCHAR(20) NOT NULL,
 reply_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT reply_id_pk PRIMARY KEY(reply_id),
 CONSTRAINT reply_mem_fk FOREIGN KEY(member_id) REFERENCES member(member_id),
 CONSTRAINT reply_cock_fk FOREIGN KEY(cocktail_id) REFERENCES cocktail(cocktail_id));
 
SELECT * FROM member;
SELECT * FROM cocktail;
SELECT * FROM recipe;
SELECT * FROM fav_list;
SELECT * FROM reply;



















