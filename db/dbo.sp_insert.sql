


ALTER PROCEDURE sp_insert
	
		@name varchar(50),
		@entry1 varchar(50),
		@entry2 varchar(50),
		@entry3 varchar(50),
		@entry4 varchar(50),
		@entry5 varchar(50),
	


AS
	insert into DataStore values(@name,@entry1,@entry2,@entry3,@entry4,@entry5) 

RETURN 
