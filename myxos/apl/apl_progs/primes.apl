integer main()
{
	integer n,i,k,j;
	read(n);
	i = 1;
		while i < n do
			i = i + 1;
			if i < 2 then
				continue;
			endif;
			if i==2 then
				print(i);
				continue;
			endif;	
			if i % 2 == 0 then
				continue;
			endif;
			j = 3;
			k = 1;
			while j < i/2 do
			k = 1;
				if i % j == 0 then
					k = 0;
					break;
				endif;
				j = j+2;
			endwhile;
			if k ==1 then 
			print(i);
			endif;
		endwhile;
	return 0;
}

