--하와이 섬 일련번호 관리객체
create sequence seq_hw_idx
--삭제
drop sequence seq_hw_idx

--섬 테이블
CREATE TABLE hw_island	(
	hw_idx		 		int,						            				--일련번호
	land_name			varchar2(100)				Not Null,			--섬 이름	
	land_cont			varchar2(100)				Not Null,			--섬 내용
	hw_lat				varchar2(100)				Not Null,	 		--좌표	
	hw_lng				varchar2(100)				Not Null				--좌표
) ;

--삭제
drop table hw_island

--기본키 제약
alter table hw_island
	add constraint pk_hw_idx primary key(hw_idx)	
	
	
select * from hw_island;

commit