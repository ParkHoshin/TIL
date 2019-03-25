--activity 일련번호 관리객체
create sequence seq_a_idx
--삭제
drop sequence seq_a_idx

--Act 테이블
CREATE TABLE h_act 	(
	a_idx		 		int,						            				--일련번호
	a_name			varchar2(100)				Not Null,			--act이름	
	a_image_s		varchar2(255)		    	Null,					--act이미지(소)		
	a_image_l		varchar2(255)		    	Null,					--act이미지(대)	
	a_cont			clob				        	Not Null,		    --act설명(clob : 문자의 대용랑 저장타입)
	a_lat				varchar2(100)				Not Null,			--act좌표	
	a_lng				varchar2(100)				Not Null,				--act좌표
	hw_idx              int 
) ;

--삭제
drop table h_act

--기본키
alter table h_act
  add constraint  pk_a_idx primary key(a_idx)
  
--참조키
alter table h_act
  add constraint  fk_a_hw_idx foreign key(hw_idx)  references hw_island(hw_idx)
  
select * from h_act;

commit