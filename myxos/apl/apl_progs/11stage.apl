integer main()
{
	integer pid;
	print ("Before Fork");
	print (Getpid());
	print (Getppid());
	pid = Fork();
	print("After Fork");
	if(pid != -2) then
		print ("parent died");
		print (Getpid());
		Exit();
	endif;
	pid = Fork();
	print("In Child");
	print(Getpid());
	print(Getppid());
	return 0;
}