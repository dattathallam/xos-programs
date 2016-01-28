decl
	integer c,pid,i,s;
enddecl
integer main()
{
	print ("Before Fork");
	i = 0;
	s = -1;
	while(i<24) do
		pid = Fork();
		if(pid == -2) then
			s=Exec("ex101.xsm");
		endif;
		i=i+1;
	endwhile;
	s = Wait(pid);
	return 0;
}
