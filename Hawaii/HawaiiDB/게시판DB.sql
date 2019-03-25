--일련번호관리객체
drop   sequence seq_board_idx

create sequence seq_board_idx

drop table hawaii_board

--테이블생성
create table hawaii_board
(
   board_idx 				int,						--일련번호
   board_title              varchar2(100),              --제목
   board_content 			clob,                       --내용
   member_idx               int,                        --회원 일련번호
   category_idx             int,                        --카테고리 일련번호
   -- 답변형게시판정보
   ref 			int,			--부모글번호(그룹번호)
   step 		int,			--게시순서(수직적)
   depth 		int,			--답글의 깊이
   state 		int,            --삭제상태(0,1)
   regdate date                 --게시판 글 쓴 일자
   )

drop table hawaii_board

--기본키(유니크 제약 조건 이름 지정)
alter table hawaii_board
  add constraint  pk_hawaii_board_idx primary key(board_idx)
  
select * from hawaii_board 

--참조키
alter table hawaii_board 
  add constraint  fk_member_idx foreign key(member_idx)  references hawaii_member(member_idx)

commit

--참조키
alter table hawaii_board 
  add constraint  fk_category_idx foreign key(category_idx)  references hawaii_category(category_idx)

  
-- Paging 처리를 위한 SQL  
select * from
( 
  select 
       rank() over(order by ref desc,step  asc) as rank, b.*
  from   (select * from hawaii_board) b
)
where rank between 1 and 5

