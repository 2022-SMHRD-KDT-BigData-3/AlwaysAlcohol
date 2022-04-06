--프로젝트DB의 테이블은 전부 삭제했습니다
--사용자 테이블과 이와 관련된 테이블의 경우 사용하지 않을 수도 있습니다

DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE body CASCADE CONSTRAINTS;
DROP TABLE sweet CASCADE CONSTRAINTS;
DROP TABLE country CASCADE CONSTRAINTS;
DROP TABLE kind CASCADE CONSTRAINTS;
DROP TABLE wine CASCADE CONSTRAINTS;
DROP TABLE reply CASCADE CONSTRAINTS;
DROP TABLE push CASCADE CONSTRAINTS;
DROP TABLE tanin CASCADE CONSTRAINTS;
DROP TABLE acid CASCADE CONSTRAINTS;
DROP TABLE wine2 CASCADE CONSTRAINTS;

--사용자
-- 남자 : 0, 여자 : 1
CREATE TABLE member
(member_id VARCHAR2(15),
 pw VARCHAR2(20) NOT NULL,
 nick VARCHAR2(25) NOT NULL,
 member_name VARCHAR2(25) NOT NULL,
 gender VARCHAR2(2),
 birth DATE NOT NULL,
 join_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT mem_id_pk PRIMARY KEY(member_id),
 CONSTRAINT mem_gender_ck CHECK(gender IN('0','1')));
 
--산도
CREATE TABLE acid
(acid_id NUMBER(10),
 acid_name VARCHAR2(50) NOT NULL,
 CONSTRAINT acid_id_pk PRIMARY KEY(acid_id));
 
--바디감
CREATE TABLE body
(body_id NUMBER(10),
 body_name VARCHAR2(50) NOT NULL,
 CONSTRAINT body_id_pk PRIMARY KEY(body_id));
 
--당도
CREATE TABLE sweet
(sweet_id NUMBER(10),
 sweet_name VARCHAR2(50) NOT NULL,
 CONSTRAINT sweet_id_pk PRIMARY KEY(sweet_id));
 
--국가
CREATE TABLE country
(country_id NUMBER(10),
 county_name VARCHAR2(50) NOT NULL,
 CONSTRAINT country_id_pk PRIMARY KEY(country_id));
 
--종류
CREATE TABLE kind
(kind_id NUMBER(10),
 kind_name VARCHAR2(50) NOT NULL,
 CONSTRAINT kind_id_pk PRIMARY KEY(kind_id));
 
--타닌
CREATE TABLE tanin
(tanin_id NUMBER(10),
 tanin_name VARCHAR(50) NOT NULL,
 CONSTRAINT tanin_id_pk PRIMARY KEY(tanin_id));
 
--와인
CREATE TABLE wine
(wine_id NUMBER(10),
 wine_name VARCHAR2(300) NOT NULL,
 kind_id NUMBER(10),
 country_id NUMBER(10),
 cultivar VARCHAR2(300),
 sweet_id NUMBER(10),
 acid_id NUMBER(10),
 body_id NUMBER(10),
 tanin_id NUMBER(10),
 proof VARCHAR2(300),
 price VARCHAR2(300),
 img VARCHAR2(999) NOT NULL,
 CONSTRAINT wine_id_pk PRIMARY KEY(wine_id),
 CONSTRAINT wine_kind_fk FOREIGN KEY(kind_id) REFERENCES kind(kind_id),
 CONSTRAINT wine_country_fk FOREIGN KEY(country_id) REFERENCES country(country_id),
 CONSTRAINT wine_sweet_fk FOREIGN KEY(sweet_id) REFERENCES sweet(sweet_id),
 CONSTRAINT wine_acid_fk FOREIGN KEY(acid_id) REFERENCES acid(acid_id),
 CONSTRAINT wine_body_fk FOREIGN KEY(body_id) REFERENCES body(body_id),
 CONSTRAINT wine_tanin_fk FOREIGN KEY(tanin_id) REFERENCES tanin(tanin_id));
 
 --와인
 --정보제공용
CREATE TABLE wine2
(wine_id NUMBER(10),
 wine_name VARCHAR2(300) NOT NULL,
 kind VARCHAR2(300) NOT NULL,
 country VARCHAR2(300) NOT NULL,
 cultivar VARCHAR2(300) NOT NULL,
 sweet VARCHAR2(300) NOT NULL,
 acid VARCHAR2(300) NOT NULL,
 body VARCHAR2(300) NOT NULL,
 tanin VARCHAR2(300) NOT NULL,
 proof VARCHAR2(300) NOT NULL,
 price VARCHAR2(300) NOT NULL,
 img VARCHAR2(999) NOT NULL,
 CONSTRAINT wine2_id_pk PRIMARY KEY(wine_id));
 
--와인 댓글(평가 포함)
CREATE TABLE reply
(reply_id NUMBER(10),
 member_id VARCHAR2(15),
 wine_id NUMBER(10),
 reply_score NUMBER(10) NOT NULL,
 reply_content VARCHAR(50) NOT NULL,
 reply_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT reply_id_pk PRIMARY KEY(reply_id),
 CONSTRAINT reply_mem_fk FOREIGN KEY(member_id) REFERENCES member(member_id),
 CONSTRAINT reply_cock_fk FOREIGN KEY(wine_id) REFERENCES wine(wine_id));

--추천받은 와인
CREATE TABLE push
(push_id NUMBER(10),
 member_id VARCHAR2(15),
 wine_id NUMBER(10),
 push_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT push_id_pk PRIMARY KEY(push_id),
 CONSTRAINT push_mem_fk FOREIGN KEY(member_id) REFERENCES member(member_id),
 CONSTRAINT push_cock_fk FOREIGN KEY(wine_id) REFERENCES wine(wine_id));
 
 
SELELCT * FROM wine;
SELELCT * FROM wine2;