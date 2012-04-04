program triangulo(input{teclado},output{video});{verifica se as dimensoes de um triangulo sao validas}
	const
		lado=3;
	var
		entrada: array [1..lado] of integer;
		msg,msg2:string;
		i,j:integer;{loops}
		busca,indice,temp:integer;{ordenacao}
		somaCatetos:integer;
	begin
		writeln(output,'%%%Triangulo%%%');
		writeln(output,'Escreva somente numeros inteiros ate 1000');
		i:=1;
		while i<=lado do
		begin
			Str(i,msg);
			msg:='Entre com o lado '+msg+': ';
			write(output,msg);
			read(input,entrada[i]);
			if entrada[i]>0 then
				i:=i+1
			else 
				writeln(output,'Valor Invalido!. Entrada igual ou menor que zero.');
		end;
		for i:=1 to lado do
		begin
			busca:=entrada[i];
			indice:=i;
			for j:=i+1 to lado do 
			begin
				if busca < entrada[j] then
				begin
					busca:=entrada[j];
					indice:=j;
				end;
			end;
			temp:=entrada[i];
			entrada[i]:=entrada[indice];
			entrada[indice]:=temp;
		end;
		somaCatetos:=0;
		for i:=2 to lado do
			somaCatetos:=somaCatetos+entrada[i];

		if entrada[1] < somaCatetos then
		begin
			for i:=1 to lado do
			begin
				Str(entrada[i],msg);
				if i=1 then
					msg:='Hipotenusa: '+msg+' valido!'
				else
				begin
					str(i-1,msg2);
					msg:='Cateto '+msg2+': '+msg+' valido!';
				end;
				writeln(output,msg);
			end;
		end
		else
			writeln(output,'A hipotenusa eh maior ou igual a soma dos catetos');
	end.