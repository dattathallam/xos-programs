decl
	integer status;
	integer filedescriptor1;
	integer filedescriptor2;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print(status);
	filedescriptor1 = Open("myfile.dat");
	print(filedescriptor1);
	status = Write(filedescriptor1,"123456789101112");
	print(status);
	status = Seek(filedescriptor1,23);
	print(status);
	status = Write(filedescriptor1,"123456789101112");
	print(status);
	status = Seek(filedescriptor1,513);	
	print(status);
	return 0;
}