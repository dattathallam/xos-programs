integer main()
{
	integer b,a,pid;
	print("start");
	pid = Fork();
	if(pid != -2) then
		print("wating for child to complete");
		b = Wait(pid);
		a = Exec("oddno.xsm");
	else
		print("I am child");
		print("123");
		print("123");
		print("123");
		print("123");
		print("123");
		print("123");
		print("123");
		print("123");
		print("123");
		print("123");
		print("123");
		print("123");
		print("123");
		print("123");
		print("123");
		
		b = Signal();
		print(b);
	endif;
	return 0;
}