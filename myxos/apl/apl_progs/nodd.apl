decl
	integer pid;
	integer num;
enddecl
integer main(){
	print("Before Fork");
	pid = Fork();
	if(pid!=-2) then
		num = Exec("even.xsm");
	endif;
	integer n;
	n = 1;
	while n < 2000 do
		print(n);
		n = n+2;
	endwhile;
	return 0;
}