--�Ĵ� �Ϸù�ȣ ������ü
create sequence seq_hf_idx
--����
drop sequence seq_hf_idx

--�Ĵ� ���̺�
CREATE TABLE h_food	(
	hf_idx		 		int,						            				--�Ϸù�ȣ
	hf_name			varchar2(100)				Not Null,			--�Ĵ��̸�	
	hf_image_s		varchar2(255)		    	Null,					--�Ĵ��̹���(��)		
	hf_image_l		varchar2(255)		    	Null,					--�Ĵ��̹���(��)	
	hf_cont			clob				        	Not Null,		    --�Ĵ缳��(clob : ������ ���� ����Ÿ��)
	hf_lat				varchar2(100)				Not Null,			--�Ĵ���ǥ	
	hf_lng				varchar2(100)				Not Null,				--�Ĵ���ǥ
	hw_idx              int      
) ;

--����
drop table h_food

--�⺻Ű
alter table h_food
  add constraint  pk_hf_idx primary key(hf_idx)
  
--����Ű
alter table h_food
  add constraint  fk_hf_hw_idx foreign key(hw_idx)  references hw_island(hw_idx)
  
select * from h_food;

commit