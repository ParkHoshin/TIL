--ȯ�� �Ϸù�ȣ ������ü
create sequence seq_os_idx
--����
drop sequence seq_os_idx

--ȯ�� ���̺�
CREATE TABLE osean	(
	os_idx		 		int,						            			--�Ϸù�ȣ
	os_cont			clob				        Not Null,		    --�ؾ��������(clob : ������ ���� ����Ÿ��)	
	os_image_s		varchar2(255)		    Null,					--�ؾ��̹���(��)		
	os_image_l		varchar2(255)		    Null					--�ؾ��̹���(��)			
) ;

--����
drop table osean

--�⺻Ű
alter table osean
  add constraint  pk_os_idx primary key(os_idx)
  
--����Ű
alter table osean
  add constraint  fk_os_idx foreign key(os_idx)  references en(en_idx)
  
select * from osean;

commit