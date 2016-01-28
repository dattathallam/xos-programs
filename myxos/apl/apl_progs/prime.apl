decl
	integer isprime(integer i),n;
enddecl

integer isprime(integer i)
{
	integer j,ans,flag;
	flag = 0;
	j = 2;
	if (i==2) then
				ans = 1;
	else
				while j<i-1 do
						if (i%j==0) then 
								ans = 0;
								flag = 1;
						endif;
						j = j+1;
				endwhile;
				if (flag==0) then
				ans = 1;
				endif;
				
	endif;
	return ans;
}

integer main()
{
	integer k;
	read(n);
	k = 2;
	while k<n do
			if (isprime(k)==1) then 
							print(k);
			endif;
			k = k+1;
	endwhile;
	return 0;
}
