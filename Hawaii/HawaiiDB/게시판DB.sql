--�Ϸù�ȣ������ü
drop   sequence seq_board_idx

create sequence seq_board_idx

drop table hawaii_board

--���̺����
create table hawaii_board
(
   board_idx 				int,						--�Ϸù�ȣ
   board_title              varchar2(100),              --����
   board_content 			clob,                       --����
   member_idx               int,                        --ȸ�� �Ϸù�ȣ
   category_idx             int,                        --ī�װ� �Ϸù�ȣ
   -- �亯���Խ�������
   ref 			int,			--�θ�۹�ȣ(�׷��ȣ)
   step 		int,			--�Խü���(������)
   depth 		int,			--����� ����
   state 		int,            --��������(0,1)
   regdate date                 --�Խ��� �� �� ����
   )

drop table hawaii_board

--�⺻Ű(����ũ ���� ���� �̸� ����)
alter table hawaii_board
  add constraint  pk_hawaii_board_idx primary key(board_idx)
  
select * from hawaii_board 

--����Ű
alter table hawaii_board 
  add constraint  fk_member_idx foreign key(member_idx)  references hawaii_member(member_idx)

commit

--����Ű
alter table hawaii_board 
  add constraint  fk_category_idx foreign key(category_idx)  references hawaii_category(category_idx)

  
-- Paging ó���� ���� SQL  
select * from
( 
  select 
       rank() over(order by ref desc,step  asc) as rank, b.*
  from   (select * from hawaii_board) b
)
where rank between 1 and 5

