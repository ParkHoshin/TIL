--�Ϸù�ȣ
create sequence seq_comment_idx

drop sequence seq_comment_idx

drop table hawaii_comment_tb

--������̺�
create table hawaii_comment_tb
(
	comment_idx				int,
	comment_content 		clob,
	regdate 				date,
	member_idx				int,					--ȸ���Ϸù�ȣ							
    name					varchar2(100),			--����
	board_idx  				int						--�Խ��ǹ�ȣ
)

--�⺻Ű
alter table hawaii_comment_tb
   add constraint pk_hawaii_comment_idx primary key(comment_idx)
                                  
select * from hawaii_comment_tb   

commit
   
--����¡ ó���� ���� SQL
select * from     	
(
	select 
	    rank() over(order by idx desc) rank, c.*
	from
	  ( select * from hawaii_comment_tb where hawaii_board_idx=35 ) c
)
where rank between 1 and 5   
   
commit
   
   