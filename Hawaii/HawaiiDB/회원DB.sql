--회원 일련번호관리객체
drop   sequence seq_member_idx

create sequence seq_member_idx



--테이블생성
create table hawaii_member
(
   member_idx 		int,						--일련번호
   id						varchar2(100),			--아이디							
   name			varchar2(100)			--닉네임
)
drop table hawaii_member
--기본키
alter table hawaii_member
  add constraint  pk_hawaii_member_idx primary key(member_idx)
  
select * from hawaii_member 

commit
  

