--환경 일련번호 관리객체
create sequence seq_en_idx
--삭제
drop sequence seq_en_idx

--환경 테이블
CREATE TABLE en	(
	en_idx		 		int,						            				--일련번호
	en_title			varchar2(100)				Not Null				--환경제목	
) ;

--삭제
drop table en

--기본키 제약
alter table en
	add constraint pk_en_idx primary key(en_idx);		
	
select * from en;

commit