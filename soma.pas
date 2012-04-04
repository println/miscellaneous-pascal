program soma(input{teclado},output{video});{desenha um triangulo com o numero de linhas entrada pelo utilizador}
	var
		resultado,msg:string;
		i,j:integer;{loops}
		num,total:integer;{resultado}
	
	function somaTotal(x:integer):integer;
	begin
		if x=1 then
			somaTotal:=1
		else
			somaTotal:= x+somaTotal(x-1);
	end;
	
	begin
		writeln(output,'%%%Soma%%%');
		writeln(output,'Escreva somente numeros inteiros');
		read(input,num);
		if num>1 then
		begin
		total:= somaTotal(num);
			for i:=num downto 1 do
			begin
				resultado:='';
				for j:=i downto 1 do
				begin
					str(total,msg);
					resultado := resultado+msg+' ';
					total := total-1;
				end;
				writeln(output,resultado);
			end;
		end
		else
			writeln(output,'erro');
	end.