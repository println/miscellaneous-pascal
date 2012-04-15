program combinacao(input{teclado},output{video});{algoritmo de combinacao}
         uses crt;
	const
		limiteMin=1;
		limiteMax=10;
	var
		resultado:string;
		n,p:integer;{resultado}
		total:integer;{resultado}
	
	function fatorial(x:longint):longint;
	begin
		if x=0 then
			fatorial:=1
		else
			fatorial:= x*fatorial(x-1);
	end;
	
	begin
		writeln(output,'%%%Combinacao%%%');
		writeln(output,'Escreva somente numeros inteiros');
		write(output,'Escreva n: ');
		read(input,n);
		write(output,'Escreva p: ');
		read(input,p);
		if ((n>=limiteMin) and (n<=limiteMax)) and ((p>=limiteMin) and (p<=limiteMax)) then
		begin
			if n>=p then
			begin
				total := trunc(fatorial(n) / (fatorial(p)*fatorial(n-p)));
				Str(total,resultado);
			end
			else
				resultado := 'p maior que n';
		end
		else
			resultado := 'Erro, numeros fora da faixa permitida';
		writeln(output,resultado);
         readkey;
	end.