--�� �Ϸù�ȣ ������ü
create sequence seq_h_info_idx
--����
drop sequence seq_in_idx

--�Ĵ� ���̺�
CREATE TABLE h_info	(
	in_idx		 		int,						            				--�Ϸù�ȣ
	in_name			varchar2(100)				Not Null,			--�� �̸�	
	in_image_s		varchar2(255)		    	Null,					--�� �̹���(��)		
	in_image_l		varchar2(255)		    	Null,					--�� �̹���(��)
	in_cont			varchar2(255)				Not Null,				--�� ����	
	hw_idx              int 
) ;

--����
drop table h_info

--�⺻Ű
alter table h_info
  add constraint  pk_in_idx primary key(in_idx)
  
--����Ű
alter table h_info
  add constraint  fk_in_hw_idx foreign key(hw_idx)  references hw_island(hw_idx)
  
select * from h_info;

commit