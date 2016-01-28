integer main()
{
	//print("fork 1");
	integer pid;
	print ("Before Fork");
	pid = Fork();
	pid = Fork();
	print("pid :");
	print(pid);
	print ("After Fork");
	return 0;
}