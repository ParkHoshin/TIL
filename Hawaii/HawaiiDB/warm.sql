--온난화 일련번호 관리객체
create sequence seq_wa_idx
--삭제
drop sequence seq_wa_idx

--온난화 테이블
CREATE TABLE warm	(
	wa_idx		 		int,						            			--일련번호
	wa_cont			clob				        Not Null,		    --온난화설명(clob : 문자의 대용랑 저장타입)	
	wa_image_s		varchar2(255)		    Null,					--온난화이미지(소)		
	wa_image_l		varchar2(255)		    Null					--온난화이미지(대)			
) ;

--삭제
drop table warm

--기본키
alter table warm
  add constraint  pk_wa_idx primary key(wa_idx)
  
--참조키
alter table warm
  add constraint  fk_wa_idx foreign key(wa_idx)  references en(en_idx)
  
select * from warm;

commit