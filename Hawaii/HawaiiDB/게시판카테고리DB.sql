--ȸ�� �Ϸù�ȣ������ü
drop   sequence seq_category_idx

create sequence seq_category_idx

drop table hawaii_category

--���̺����
create table hawaii_category
(
   category_idx 				int,							--�Ϸù�ȣ							
	category_name               varchar2(100)        					--ī�װ� �̸�      
   )

--�⺻Ű
alter table hawaii_category
  add constraint  pk_category_idx primary key(category_idx)
  
select * from hawaii_category

commit
  

