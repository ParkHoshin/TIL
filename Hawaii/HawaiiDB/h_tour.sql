--명소 일련번호 관리객체
create sequence seq_t_idx
--삭제
drop sequence seq_t_idx

--투어 테이블
CREATE TABLE h_tour	(
	t_idx		 		int,						            				--일련번호
	t_name			varchar2(100)				Not Null,			--명소이름	
	t_image_s		varchar2(255)		    	Null,					--명소이미지(소)		
	t_image_l	  	varchar2(255)		    	Null,					--명소이미지(대)	
	t_cont			clob				        	Not Null,		    --명소설명(clob : 문자의 대용랑 저장타입)
	t_lat				varchar2(100)				Not Null,			--명소좌표	
	t_lng				varchar2(100)				Not Null				--명소좌표
) ;

--삭제
drop table h_tour

--기본키
alter table h_tour
  add constraint  pk_t_idx primary key(t_idx)
  
--참조키
alter table h_tour
  add constraint  fk_t_hw_idx foreign key(t_idx)  references hw_island(hw_idx)
  
select * from h_tour;

commit