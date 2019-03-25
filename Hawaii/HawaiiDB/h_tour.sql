--��� �Ϸù�ȣ ������ü
create sequence seq_t_idx
--����
drop sequence seq_t_idx

--���� ���̺�
CREATE TABLE h_tour	(
	t_idx		 		int,						            				--�Ϸù�ȣ
	t_name			varchar2(100)				Not Null,			--����̸�	
	t_image_s		varchar2(255)		    	Null,					--����̹���(��)		
	t_image_l	  	varchar2(255)		    	Null,					--����̹���(��)	
	t_cont			clob				        	Not Null,		    --��Ҽ���(clob : ������ ���� ����Ÿ��)
	t_lat				varchar2(100)				Not Null,			--�����ǥ	
	t_lng				varchar2(100)				Not Null				--�����ǥ
) ;

--����
drop table h_tour

--�⺻Ű
alter table h_tour
  add constraint  pk_t_idx primary key(t_idx)
  
--����Ű
alter table h_tour
  add constraint  fk_t_hw_idx foreign key(t_idx)  references hw_island(hw_idx)
  
select * from h_tour;

commit