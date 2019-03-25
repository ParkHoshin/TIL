--���� �Ϸù�ȣ ������ü
create sequence seq_an_idx
--����
drop sequence seq_an_idx

--���� ���̺�
CREATE TABLE animal	(
	an_idx		 		int,	
	--�Ϸù�ȣ
	an_cont			clob				        Not Null,		    --��������(clob : ������ ���� ����Ÿ��)	
	an_image_s		varchar2(255)		    Null,					--�����̹���(��)		
	an_image_l		varchar2(255)		    Null					--�����̹���(��)			
) ;

--����
drop table animal

--�⺻Ű
alter table animal
  add constraint  pk_an_idx primary key(an_idx)
  
--����Ű
alter table animal
  add constraint  fk_an_idx foreign key(an_idx)  references en(en_idx)
  
select * from animal;

commit