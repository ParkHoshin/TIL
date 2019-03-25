--환경 일련번호 관리객체
create sequence seq_os_idx
--삭제
drop sequence seq_os_idx

--환경 테이블
CREATE TABLE osean	(
	os_idx		 		int,						            			--일련번호
	os_cont			clob				        Not Null,		    --해양오염설명(clob : 문자의 대용랑 저장타입)	
	os_image_s		varchar2(255)		    Null,					--해양이미지(소)		
	os_image_l		varchar2(255)		    Null					--해양이미지(대)			
) ;

--삭제
drop table osean

--기본키
alter table osean
  add constraint  pk_os_idx primary key(os_idx)
  
--참조키
alter table osean
  add constraint  fk_os_idx foreign key(os_idx)  references en(en_idx)
  
select * from osean;

commit