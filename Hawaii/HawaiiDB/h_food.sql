--식당 일련번호 관리객체
create sequence seq_hf_idx
--삭제
drop sequence seq_hf_idx

--식당 테이블
CREATE TABLE h_food	(
	hf_idx		 		int,						            				--일련번호
	hf_name			varchar2(100)				Not Null,			--식당이름	
	hf_image_s		varchar2(255)		    	Null,					--식당이미지(소)		
	hf_image_l		varchar2(255)		    	Null,					--식당이미지(대)	
	hf_cont			clob				        	Not Null,		    --식당설명(clob : 문자의 대용랑 저장타입)
	hf_lat				varchar2(100)				Not Null,			--식당좌표	
	hf_lng				varchar2(100)				Not Null,				--식당좌표
	hw_idx              int      
) ;

--삭제
drop table h_food

--기본키
alter table h_food
  add constraint  pk_hf_idx primary key(hf_idx)
  
--참조키
alter table h_food
  add constraint  fk_hf_hw_idx foreign key(hw_idx)  references hw_island(hw_idx)
  
select * from h_food;

commit