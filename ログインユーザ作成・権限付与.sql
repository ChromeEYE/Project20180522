
	--���[�U�쐬�E�����t�^
	CREATE LOGIN [crow] WITH PASSWORD='crow', DEFAULT_DATABASE=[crow_emp_sys_db];
	USE[crow_emp_sys_db];
	CREATE USER [crow] FOR LOGIN [crow];
	
	GRANT CONTROL TO [crow];