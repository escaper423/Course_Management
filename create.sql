connect db13/db131234;

drop table �����ð�ǥ;
drop table ����;
drop table ������;
drop table �ð�;
drop table ����;
drop table ���ǽ�;
drop table �ǹ�;
drop table �л�;
drop table ����;
drop table ����;
drop table ������;
drop table �а�;

create table ������ (
	������ID varchar2(10), 
	�����ڹ�ȣ varchar2(10),
	��й�ȣ varchar2(8), 
	primary key(������ID)
);

insert into ������ (������ID, �����ڹ�ȣ, ��й�ȣ) values ('admin', '0000', '1234');

create table �а�(
	�а��ڵ� varchar2(10), 
	�а��̸� varchar2(30), 
	primary key(�а��ڵ�)
);

insert into �а� (�а��ڵ�, �а��̸�) values ('245', '������ǻ�Ͱ��к�');
insert into �а� (�а��ڵ�, �а��̸�) values ('220', '�����к�');
insert into �а� (�а��ڵ�, �а��̸�) values ('225', 'ȭ���������к�');
insert into �а� (�а��ڵ�, �а��̸�) values ('241', '������а�');
insert into �а� (�а��ڵ�, �а��̸�) values ('420', '�����к�');

create table ���� (
	������ȣ varchar2(10), 
	��й�ȣ varchar2(10), 
	�����̸� varchar2(10), 
	�ֹε�Ϲ�ȣ varchar2(20),
	�а��ڵ� varchar2(10), 
	��ȭ��ȣ varchar2(20), 
	primary key(������ȣ),
	unique(�ֹε�Ϲ�ȣ),
	foreign key(�а��ڵ�) references �а�
);

insert into ���� (������ȣ, ��й�ȣ, �����̸�, �ֹε�Ϲ�ȣ, �а��ڵ�, ��ȭ��ȣ) 
values ('100','111','��漮','701212-1871111','245', '010-0000-0000');
insert into ���� (������ȣ, ��й�ȣ, �����̸�, �ֹε�Ϲ�ȣ, �а��ڵ�, ��ȭ��ȣ) 
values ('200','222','�Ѽ���','711212-1871111','420', '010-0000-0000');
insert into ���� (������ȣ, ��й�ȣ, �����̸�, �ֹε�Ϲ�ȣ, �а��ڵ�, ��ȭ��ȣ) 
values ('300','333','Ź����','721212-1871113','245', '010-0000-0000');
insert into ���� (������ȣ, ��й�ȣ, �����̸�, �ֹε�Ϲ�ȣ, �а��ڵ�, ��ȭ��ȣ) 
values ('400','444','������','731212-1861113','245', '010-0000-0000');
insert into ���� (������ȣ, ��й�ȣ, �����̸�, �ֹε�Ϲ�ȣ, �а��ڵ�, ��ȭ��ȣ) 
values ('500','555','��ȣ��','741212-1851113','245', '010-0000-0000');
insert into ���� (������ȣ, ��й�ȣ, �����̸�, �ֹε�Ϲ�ȣ, �а��ڵ�, ��ȭ��ȣ) 
values ('600','666','������','751212-1861113','245', '010-0000-0000');
insert into ���� (������ȣ, ��й�ȣ, �����̸�, �ֹε�Ϲ�ȣ, �а��ڵ�, ��ȭ��ȣ) 
values ('700','777','����ö','761212-1871113','245', '010-0000-0000');


create table ���� (
	������ȣ varchar2(10), 
	��й�ȣ varchar2(8), 
	�����̸� varchar2(10), 
	�а��ڵ� varchar2(10),  
	primary key(������ȣ), 
	foreign key(�а��ڵ�) references �а�
);

insert into ���� (������ȣ, ��й�ȣ, �����̸�, �а��ڵ�) 
values ('1000', '1111', '�߽ż�', '245');
insert into ���� (������ȣ, ��й�ȣ, �����̸�, �а��ڵ�) 
values ('1111', '1111', '������', '420');
insert into ���� (������ȣ, ��й�ȣ, �����̸�, �а��ڵ�) 
values ('2222', '2222', '����ȯ', '220');

create table �л� (
	�й� varchar2(10), 
	��й�ȣ varchar2(8), 
	�̸� varchar2(10), 
	�ֹε�Ϲ�ȣ varchar2(20),
	�г� varchar2(5), 
	�ּ� varchar2(150), 
	��ȭ��ȣ varchar2(20),
	�а��ڵ� varchar2(10), 
	�������� varchar2(10), 
	primary key(�й�), 
	unique(�ֹε�Ϲ�ȣ),
	foreign key(�а��ڵ�) references �а�
);

insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2007111', '1111', '������', '810000-1800001', '1', '�λ�', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2007222', '1111', 'ȫ����', '820000-1800001', '2', 'â��', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2007333', '1111', '�̴�ȣ', '830000-1800001', '2', '����', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2007444', '1111', 'ȫ�浿', '840000-1800001', '3', '���', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2007555', '1111', '����ȣ', '850000-1800001', '4', '����', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2007666', '1111', '��ö��', '860000-1800001', '2', '�뱸', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2007777', '1111', '��ö��', '870000-1800001', '3', '����', '010-0000-0000', '420', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2007888', '1111', '�迵��', '880000-1800001', '2', '����', '010-0000-0000', '420', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2007999', '1111', '�����', '890000-1800001', '3', '�뿵', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2008111', '1111', '������', '900000-1800001', '2', '����', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2008222', '1111', '�ƹ���', '910000-1800001', '3', '����', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2008333', '1111', '�����', '920000-1800001', '4', '�λ�', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2008444', '1111', '�վƼ�', '930000-1800001', '4', '�λ�', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2008555', '1111', '���ؿ�', '790000-1800001', '3', 'â��', '010-0000-0000', '245', '����');
insert into �л� (�й�, ��й�ȣ, �̸�, �ֹε�Ϲ�ȣ, �г�, �ּ�, ��ȭ��ȣ, �а��ڵ�, ��������) 
values ('2008666', '1111', '�ڱ���', '800000-1800001', '2', '����', '010-0000-0000', '245', '����');

create table �ǹ� (
	�ǹ���ȣ varchar2(10), 
	�ǹ��̸� varchar2(20), 
	primary key(�ǹ���ȣ)
);

insert into �ǹ� (�ǹ���ȣ, �ǹ��̸�) values ('201', '������');
insert into �ǹ� (�ǹ���ȣ, �ǹ��̸�) values ('301', '�ι���');
insert into �ǹ� (�ǹ���ȣ, �ǹ��̸�) values ('401', '��ȸ��');

create table ���ǽ� (
	�ǹ���ȣ varchar2(10),
	���ǽǹ�ȣ varchar2(10), 
	primary key(���ǽǹ�ȣ), 
	foreign key(�ǹ���ȣ) references �ǹ�
);

insert into ���ǽ� (�ǹ���ȣ, ���ǽǹ�ȣ) values ('201', '6503');
insert into ���ǽ� (�ǹ���ȣ, ���ǽǹ�ȣ) values ('201', '6504');
insert into ���ǽ� (�ǹ���ȣ, ���ǽǹ�ȣ) values ('201', '6505');
insert into ���ǽ� (�ǹ���ȣ, ���ǽǹ�ȣ) values ('301', '1203');
insert into ���ǽ� (�ǹ���ȣ, ���ǽǹ�ȣ) values ('401', '2307');

create table ���� (
	���� varchar2(10),
	primary key(����)
);

insert into ���� (����) values ('��');
insert into ���� (����) values ('ȭ');
insert into ���� (����) values ('��');
insert into ���� (����) values ('��');
insert into ���� (����) values ('��');

create table �ð� (
	�ð� varchar2(10),
	primary key(�ð�)
);

insert into �ð� (�ð�) values ('1');
insert into �ð� (�ð�) values ('2');
insert into �ð� (�ð�) values ('3');
insert into �ð� (�ð�) values ('4');
insert into �ð� (�ð�) values ('5');
insert into �ð� (�ð�) values ('6');
insert into �ð� (�ð�) values ('7');
insert into �ð� (�ð�) values ('8');
insert into �ð� (�ð�) values ('9');

create table ������ (
	�г� varchar2(10), 
	�������ȣ varchar2(10), 
	������� varchar2(30),
	�й� varchar2(10), 
	���� varchar2(10), 
	�а��ڵ� varchar2(10),
	�ð� varchar2(10), 
	�⵵ varchar2(10), 
	�б� varchar2(5), 
	���� varchar2(10), 
	�����̸� varchar2(10),
	������ȣ varchar2(10),
	�ǹ���ȣ varchar2(10),
	���ǽǹ�ȣ varchar2(10),
	primary key(�������ȣ, �й�),
	foreign key(�а��ڵ�) references �а�, 
	foreign key(�ǹ���ȣ) references �ǹ�,
	foreign key(���ǽǹ�ȣ) references ���ǽ�,
	foreign key(����) references ����,
	foreign key(�ð�) references �ð�,
	foreign key(������ȣ) references ����
);

insert into ������ (�г�, �������ȣ, �������, �й�, ����, �а��ڵ�, �ð�, �⵵, �б�, ����, �����̸�, ������ȣ, �ǹ���ȣ, ���ǽǹ�ȣ) 
values ('3','CP100','�����ͺ��̽�','059','3','245','3','2013','2','��', '��漮', '100' ,'201','6503');
insert into ������ (�г�, �������ȣ, �������, �й�, ����, �а��ڵ�, �ð�, �⵵, �б�, ����, �����̸�, ������ȣ, �ǹ���ȣ, ���ǽǹ�ȣ) 
values ('3','CP200','��ǻ�;˰�����','060','3','245','2','2013','2','ȭ', '������', '400' ,'201','6504');
insert into ������ (�г�, �������ȣ, �������, �й�, ����, �а��ڵ�, �ð�, �⵵, �б�, ����, �����̸�, ������ȣ, �ǹ���ȣ, ���ǽǹ�ȣ) 
values ('1','CP300','�����ذ���','004','3','245','5','2013','2','��','Ź����', '300' ,'201','6505');
insert into ������ (�г�, �������ȣ, �������, �й�, ����, �а��ڵ�, �ð�, �⵵, �б�, ����, �����̸�, ������ȣ, �ǹ���ȣ, ���ǽǹ�ȣ) 
values ('3','CP400','��ǻ�ͳ�Ʈ��ũ','060','3','245','6','2013','2','��','Ź����','300','201','6505');
insert into ������ (�г�, �������ȣ, �������, �й�, ����, �а��ڵ�, �ð�, �⵵, �б�, ����, �����̸�, ������ȣ, �ǹ���ȣ, ���ǽǹ�ȣ) 
values ('2','EC500','����Ͻ�������','003','3','420','7','2013','2','��','�Ѽ���','200','301','1203');
insert into ������ (�г�, �������ȣ, �������, �й�, ����, �а��ڵ�, �ð�, �⵵, �б�, ����, �����̸�, ������ȣ, �ǹ���ȣ, ���ǽǹ�ȣ) 
values ('2','EC600','��ġ�������̷�','004','3','420','9','2013','2','ȭ','�Ѽ���','200','401','2307');
insert into ������ (�г�, �������ȣ, �������, �й�, ����, �а��ڵ�, �ð�, �⵵, �б�, ����, �����̸�, ������ȣ, �ǹ���ȣ, ���ǽǹ�ȣ) 
values ('4','CP700','�����͸��̴�','061','3','245','7','2013','2','��','������','400','201','6505');

create table ���� (
	�������ȣ varchar2(10),
	�й� varchar2(10),
	�й� varchar2(10),
	���� varchar2(10),
	�ð� varchar2(10),
	���� varchar2(10),
	primary key(�������ȣ, �й�, �й�),
	foreign key(�������ȣ, �й�) references ������,
	foreign key(�й�) references �л�,
	foreign key(����) references ����,
	foreign key(�ð�) references �ð�
);

insert into ���� 
values ('CP100', '059', '2007111', '��', '3', 'A0');
insert into ���� 
values ('CP100', '059', '2007222', '��', '3', 'B+');
insert into ���� 
values ('CP100', '059', '2007333', '��', '3', 'B0');
insert into ���� 
values ('CP100', '059', '2007444', '��', '3', 'F');
insert into ���� 
values ('CP100', '059', '2007555', '��', '3', 'C+');
insert into ���� 
values ('CP100', '059', '2007666', '��', '3', 'A+');
insert into ���� 
values ('CP100', '059', '2007777', '��', '3', 'F');
insert into ���� 
values ('CP100', '059', '2007888', '��', '3', 'C0');
insert into ���� 
values ('CP100', '059', '2007999', '��', '3', 'D+');
insert into ���� 
values ('CP100', '059', '2008111', '��', '3', 'B0');
insert into ���� 
values ('CP200', '060', '2007222', 'ȭ', '3', 'B+');
insert into ���� 
values ('CP200', '060', '2007333', 'ȭ', '3', 'D0');
insert into ���� 
values ('CP200', '060', '2007444', 'ȭ', '3', 'A0');
insert into ���� 
values ('CP200', '060', '2007555', 'ȭ', '3', 'D+');
insert into ���� 
values ('CP200', '060', '2007666', 'ȭ', '3', 'B0');
insert into ���� 
values ('CP200', '060', '2008222', 'ȭ', '3', 'B+');
insert into ���� 
values ('CP200', '060', '2008333', 'ȭ', '3', 'C0');
insert into ���� 
values ('CP200', '060', '2008444', 'ȭ', '3', 'B0');
insert into ���� 
values ('CP200', '060', '2008555', 'ȭ', '3', 'B+');
insert into ���� 
values ('CP200', '060', '2008666', 'ȭ', '3', 'A+');

create table �����ð�ǥ (
	�������ȣ varchar2(10),
	�й� varchar2(10),
	������ȣ varchar2(10),
	���� varchar2(10),
	�ð� varchar2(10),
	primary key(�������ȣ, �й�, ������ȣ),
	foreign key(�������ȣ, �й�) references ������,
	foreign key(������ȣ) references ����,
	foreign key(����) references ����,
	foreign key(�ð�) references �ð�
);

insert into �����ð�ǥ 
values ('CP100', '059', '100', '��', '3');
insert into �����ð�ǥ 
values ('CP200', '060', '400', 'ȭ', '2');
insert into �����ð�ǥ 
values ('CP300', '004', '300', '��', '5');
insert into �����ð�ǥ 
values ('CP400', '060', '300', '��', '6');
insert into �����ð�ǥ 
values ('EC500', '003', '200', '��', '7');
insert into �����ð�ǥ 
values ('EC600', '004', '200', 'ȭ', '9');
insert into �����ð�ǥ 
values ('CP700', '061', '400', '��', '7');