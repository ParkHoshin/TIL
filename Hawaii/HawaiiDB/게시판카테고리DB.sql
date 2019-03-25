--회원 일련번호관리객체
drop   sequence seq_category_idx

create sequence seq_category_idx

drop table hawaii_category

--테이블생성
create table hawaii_category
(
   category_idx 				int,							--일련번호							
	category_name               varchar2(100)        					--카테고리 이름      
   )

--기본키
alter table hawaii_category
  add constraint  pk_category_idx primary key(category_idx)
  
select * from hawaii_category

commit
  

