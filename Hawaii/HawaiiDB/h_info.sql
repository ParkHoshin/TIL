--섬 일련번호 관리객체
create sequence seq_h_info_idx
--삭제
drop sequence seq_in_idx

--식당 테이블
CREATE TABLE h_info	(
	in_idx		 		int,						            				--일련번호
	in_name			varchar2(100)				Not Null,			--섬 이름	
	in_image_s		varchar2(255)		    	Null,					--섬 이미지(소)		
	in_image_l		varchar2(255)		    	Null,					--섬 이미지(대)
	in_cont			varchar2(255)				Not Null,				--섬 정보	
	hw_idx              int 
) ;

--삭제
drop table h_info

--기본키
alter table h_info
  add constraint  pk_in_idx primary key(in_idx)
  
--참조키
alter table h_info
  add constraint  fk_in_hw_idx foreign key(hw_idx)  references hw_island(hw_idx)
  
select * from h_info;

commit