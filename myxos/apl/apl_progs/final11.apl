integer main()
{
	integer n;
	integer status,pid,childpid;
	print("Before Fork");
	pid = Getpid();
	print (pid);
	print ("child PID");
	childpid = Fork();
	print(childpid);
	if(childpid != -2) then
		print("Waiting");
		pid = Getpid();
		print (pid);
		status = Wait(childpid);
		print(status);
		n = 2001;
		while n < 2020 do
			print(n);
			n = n+2;
		endwhile;
	else
		n = 0;
		while n < 200 do
			print(n);
			n = n+2;
		endwhile;
		status = Signal();
	endif;
	return 0;
}