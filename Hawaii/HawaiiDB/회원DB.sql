--ȸ�� �Ϸù�ȣ������ü
drop   sequence seq_member_idx

create sequence seq_member_idx



--���̺����
create table hawaii_member
(
   member_idx 		int,						--�Ϸù�ȣ
   id						varchar2(100),			--���̵�							
   name			varchar2(100)			--�г���
)
drop table hawaii_member
--�⺻Ű
alter table hawaii_member
  add constraint  pk_hawaii_member_idx primary key(member_idx)
  
select * from hawaii_member 

commit
  

