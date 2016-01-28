decl
	integer pid;
	integer i;
  integer n;
enddecl
integer main(){

pid=Fork();
if(pid==-2) then
	n=0;
	while n < 100 do
		print(n);
		n = n+2;
	endwhile;
 endif;
 
 i=Wait(pid);
    n=1;
	while n < 100 do
		print(n);
		n = n+2;
	endwhile;
 
	
	return 0;
}