integer main()
{
	integer shell,status,a;
	string fileName;
	shell = 1;
	while(shell != 0) do
		read(shell);
	status = Fork();
	if(status == -2) then
		print ("filename? :");
		read (fileName);
		a = Exec(fileName);
	else
		a = Wait(status);
		status = Fork();
	endif;
	endwhile;
	return 0;
}