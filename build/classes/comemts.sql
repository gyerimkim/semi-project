DROP TABLE COMMENTS
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_COMMENTS;




CREATE TABLE COMMENTS(
   RENUMBER NUMBER(8) PRIMARY KEY, 	-- 댓글 글번호
   NICKNAME VARCHAR2(50) NOT NULL,  -- 댓글작성자
   WDATE DATE NOT NULL,				-- 작성일
   SEQ NUMBER(8) NOT NULL, 			-- 부모글
   CONTENT VARCHAR2(4000) NOT NULL 	-- 댓글 내용
);


ALTER TABLE COMMENTS
ADD CONSTRAINT FK_COMMENTS_NICKNAME FOREIGN KEY(NICKNAME)
REFERENCES MEMBER(NICKNAME);

ALTER TABLE COMMENTS
ADD CONSTRAINT FK_COMMENTS_SEQ FOREIGN KEY(SEQ)
REFERENCES BBS(SEQ);

-- 댓글 시퀀스 
CREATE SEQUENCE SEQ_COMMENTS
START WITH 1
INCREMENT BY 1; 

INSERT INTO COMMENTS
VALUES (SEQ_COMMENTS.NEXTVAL, '비땡땡', SYSDATE, 1, '하하하');

SELECT * FROM BBS;



SELECT * FROM MEMBER;