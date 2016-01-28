integer main()
{
	integer pid;
	pid = Fork();
	pid = Fork();
	pid = Fork();
	
	if(pid == -2) then
		print("In child");
	else
		print("In parent");
	endif;
	return 0;
}
