decl
	integer status;
	integer filedescriptor1;
	integer filedescriptor2;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print(status);
	status = Create("myfile1.dat");
	print(status);
	filedescriptor1 = Open("myfile.dat");
	print(filedescriptor1);
	filedescriptor2 = Open("myfile2.dat");
	print(filedescriptor2);
	filedescriptor2 = Open("myfile1.dat");
	print(filedescriptor2);
	status = Delete("myfile1.dat");
	print(status);
	status = Close(filedescriptor1);
	print(status);
	status = Close(filedescriptor2);
	print(status);
	status = Delete("myfile.dat");
	print(status);
	return 0;
}
