--�³�ȭ �Ϸù�ȣ ������ü
create sequence seq_wa_idx
--����
drop sequence seq_wa_idx

--�³�ȭ ���̺�
CREATE TABLE warm	(
	wa_idx		 		int,						            			--�Ϸù�ȣ
	wa_cont			clob				        Not Null,		    --�³�ȭ����(clob : ������ ���� ����Ÿ��)	
	wa_image_s		varchar2(255)		    Null,					--�³�ȭ�̹���(��)		
	wa_image_l		varchar2(255)		    Null					--�³�ȭ�̹���(��)			
) ;

--����
drop table warm

--�⺻Ű
alter table warm
  add constraint  pk_wa_idx primary key(wa_idx)
  
--����Ű
alter table warm
  add constraint  fk_wa_idx foreign key(wa_idx)  references en(en_idx)
  
select * from warm;

commit