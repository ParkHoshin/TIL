--동물 일련번호 관리객체
create sequence seq_an_idx
--삭제
drop sequence seq_an_idx

--동물 테이블
CREATE TABLE animal	(
	an_idx		 		int,	
	--일련번호
	an_cont			clob				        Not Null,		    --동물설명(clob : 문자의 대용랑 저장타입)	
	an_image_s		varchar2(255)		    Null,					--동물이미지(소)		
	an_image_l		varchar2(255)		    Null					--동물이미지(대)			
) ;

--삭제
drop table animal

--기본키
alter table animal
  add constraint  pk_an_idx primary key(an_idx)
  
--참조키
alter table animal
  add constraint  fk_an_idx foreign key(an_idx)  references en(en_idx)
  
select * from animal;

commit