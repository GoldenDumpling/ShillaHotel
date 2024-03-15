/*
	프로젝트명 : 신라호텔 리뉴얼 서버프로그램 구현
	작업명 : 게시판, 로그인 구현
	로그인 테이블명 : shilla_users
	게시판 테이블명 : shilla_board
*/

--shilla_USERS
--테이블 생성
Create Table shilla_users (
    email       varchar2(40)      primary key,
    password    varchar2(20)      not null,
    name        varchar2(20)      not null,
    gender      CHAR(1)           CHECK (gender IN ('F', 'M')),
    birth       varchar(15)       not null,
    tel         varchar(15)       not null,
    role        varchar(15)       default user CHECK (role IN ('admin', 'user'))
);
--존재하는 테이블 삭제
drop table shilla_users;

--로그인 쿼리
select * from shilla_users where email='zig@gmail.com' and password = '1111';

--select 쿼리
--모든 유저 가져오기
select * from shilla_users;
--비밀번호 조회
select Count(*) from shilla_users where email = 'zig2@gmail.com';

--insert 쿼리(회원가입)
insert into shilla_users values('zig2@gmail.com','1111','김태영','M','1992-01-01','010-5620-0123','admin');

------------------------------------------------------------------------------------------------------

--shilla_Board
--테이블 생성
create Table shilla_board(
num         number          primary key,
subject     varchar2(50)    not null,
content     varchar2(4000)  not null,
reg_date    Date            not null,
readcount   number          default 0 not null,
category varchar2(10) default 'NOTICE' check (category IN ('NOTICE','NEWS','EVENT')),
file_path VARCHAR2(255)
);

--존재하는 테이블 삭제
drop table shilla_board;

--시퀀스 만들기
Create SEQUENCE shilla_board_seq increment by 1 start with 1;

--insert 쿼리
--글 작성
insert into shilla_BOARD values(SHILLA_BOARD_SEQ.nextval,'공지','공지사항 내용',sysdate,0,'EVENT',null);


--select 쿼리
--특정 글 가져오기

SELECT * FROM shilla_board;

-- 주어진 num보다 작은 num 중 가장 큰 것을 찾는 쿼리 
select * from shilla_board where num = (select max(num) from shilla_board where num < 7);
-- 주어진 num보다 큰 num 중 가장 작은 것을 찾는 쿼리 
select * from shilla_board where num = (select min(num) from shilla_board where num > 7);




--게시글 갯수 
select count(*) from SHILLA_BOARD;
--10개씩 가져오기
SELECT * FROM (SELECT A.*, ROWNUM Rnum FROM (SELECT * FROM shilla_board ORDER BY num DESC)A) WHERE Rnum >= 1 AND Rnum <= 10;
--작성자 확인
SELECT * FROM shilla_board
WHERE UPPER(subject) LIKE UPPER('%검색어%');
--내용 확인
SELECT * FROM shilla_board
WHERE UPPER(content) LIKE UPPER('%검색어%');

--update 쿼리
--글 조회수 증가
update shilla_board set readcount = readcount+1 where num = 1;
--특정 글 수정
update shilla_board set subject = '수정', content = '내용수정', category = 'NEWS' where num = 2;

--delete 쿼리
--모든 게시글 삭제
delete from shilla_board;
--특정 글 삭제 
delete from shilla_board where num=14;

--제약사항 조회
SELECT 
    ac.constraint_name, 
    ac.constraint_type, 
    ac.table_name, 
    acc.column_name, 
    ac.search_condition
FROM 
    all_constraints ac 
    JOIN all_cons_columns acc ON ac.constraint_name = acc.constraint_name 
WHERE 
    ac.constraint_name = 'SYS_C007225'
    AND ac.owner = 'HR';

--임시
select * from shilla_board where subject LIKE '%공지%' order by num desc;
select * from shilla_board WHERE subject LIKE '%공지%' OR content LIKE '%공지%' order by num desc;
commit;


