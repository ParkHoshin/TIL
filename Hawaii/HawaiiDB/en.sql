--ȯ�� �Ϸù�ȣ ������ü
create sequence seq_en_idx
--����
drop sequence seq_en_idx

--ȯ�� ���̺�
CREATE TABLE en	(
	en_idx		 		int,						            				--�Ϸù�ȣ
	en_title			varchar2(100)				Not Null				--ȯ������	
) ;

--����
drop table en

--�⺻Ű ����
alter table en
	add constraint pk_en_idx primary key(en_idx);		
	
select * from en;

commit