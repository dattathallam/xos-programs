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
	filedescriptor2 = 0;
	while(filedescriptor2 < 513) do
		status = Write(filedescriptor1,"123456789101112");
		print(status);
		filedescriptor2 = filedescriptor2 + 1;		
	endwhile;
	return 0;
}