--activity �Ϸù�ȣ ������ü
create sequence seq_a_idx
--����
drop sequence seq_a_idx

--Act ���̺�
CREATE TABLE h_act 	(
	a_idx		 		int,						            				--�Ϸù�ȣ
	a_name			varchar2(100)				Not Null,			--act�̸�	
	a_image_s		varchar2(255)		    	Null,					--act�̹���(��)		
	a_image_l		varchar2(255)		    	Null,					--act�̹���(��)	
	a_cont			clob				        	Not Null,		    --act����(clob : ������ ���� ����Ÿ��)
	a_lat				varchar2(100)				Not Null,			--act��ǥ	
	a_lng				varchar2(100)				Not Null,				--act��ǥ
	hw_idx              int 
) ;

--����
drop table h_act

--�⺻Ű
alter table h_act
  add constraint  pk_a_idx primary key(a_idx)
  
--����Ű
alter table h_act
  add constraint  fk_a_hw_idx foreign key(hw_idx)  references hw_island(hw_idx)
  
select * from h_act;

commit