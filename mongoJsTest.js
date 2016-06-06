var selectDB = function(port, dbName){
	if(!port){
		port = 27017;
	}

	if(!dbName){
		dbname = "mocap_development";
	}

	db = connect("localhost:" + port + "/" + dbName);
	
	return db;
}