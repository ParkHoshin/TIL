--�Ͽ��� �� �Ϸù�ȣ ������ü
create sequence seq_hw_idx
--����
drop sequence seq_hw_idx

--�� ���̺�
CREATE TABLE hw_island	(
	hw_idx		 		int,						            				--�Ϸù�ȣ
	land_name			varchar2(100)				Not Null,			--�� �̸�	
	land_cont			varchar2(100)				Not Null,			--�� ����
	hw_lat				varchar2(100)				Not Null,	 		--��ǥ	
	hw_lng				varchar2(100)				Not Null				--��ǥ
) ;

--����
drop table hw_island

--�⺻Ű ����
alter table hw_island
	add constraint pk_hw_idx primary key(hw_idx)	
	
	
select * from hw_island;

commit