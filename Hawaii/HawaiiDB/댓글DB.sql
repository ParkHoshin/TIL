--일련번호
create sequence seq_comment_idx

drop sequence seq_comment_idx

drop table hawaii_comment_tb

--댓글테이블
create table hawaii_comment_tb
(
	comment_idx				int,
	comment_content 		clob,
	regdate 				date,
	member_idx				int,					--회원일련번호							
    name					varchar2(100),			--별명
	board_idx  				int						--게시판번호
)

--기본키
alter table hawaii_comment_tb
   add constraint pk_hawaii_comment_idx primary key(comment_idx)
                                  
select * from hawaii_comment_tb   

commit
   
--페이징 처리를 위한 SQL
select * from     	
(
	select 
	    rank() over(order by idx desc) rank, c.*
	from
	  ( select * from hawaii_comment_tb where hawaii_board_idx=35 ) c
)
where rank between 1 and 5   
   
commit
   
   