*** test cases ***

TC_0101 test hello world
	[Tags]    sprint1	regression
	log		hello world

TC_0102 say hello to
	[Tags]    sprint1
	say hello to	JOHN

TC_0103 test say hello to friends
	[Tags]    sprint1	regression
	say hello to friends	John	David	Marry
	say hello to friends	John
	say hello to friends	John	friend3=Billy
	say hello to friends	friend3=Marry	friend1=John	friend3=David

*** keywords *** 
say hello to
	[arguments]   ${name}
	log	  hello ${name}

say hello to friends
	[Tags]		
	[Arguments]   ${friend1}  ${friend2}=David  ${friend3}=Marry
	log   hello ${friend1}, ${friend2} and ${friend3}