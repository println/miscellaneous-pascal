program nomes(input{teclado},output{video});
	const
		nome=10;
	var
		entrada: array [1..nome] of string[25];
		aux: array [1..nome] of string[25];
		i,j,k:integer;{loops}
		indice,palavra:integer;{ordenacao}
		temp,temp2,busca,consulta,msg:string[25];
	begin
		str(nome,msg);
		writeln(output,'%%%Nomes%%%');
		writeln(output,'Escreva '+msg+' nomes');
		writeln(output,'');
		i:=1;
		while i<=nome do
		begin
			str(i,msg);
			writeln(output,'Entre com o nome '+msg);
			readln(input,entrada[i]);
			if length(entrada[i])>2 then
				i:=i+1;
		end;
		for i:=1 to nome do
			aux[i]:= LowerCase(entrada[i]);
		for i:=1 to nome do
		begin
			busca:=aux[i];
			indice:=i;
			for j:=i+1 to nome do
			begin
				if length(busca)<length(aux[j]) then
					palavra:=length(busca)
				else
					palavra:=length(aux[j]);
				k:=1;
				while k<=palavra do
				begin
					if busca[k]>aux[j][k] then
					begin
						busca:=aux[j];
						indice:=j;
						k:=palavra+1;
					end
					else if busca[k]=aux[j][k] then
					begin
						if k=palavra then
						begin
							if palavra=length(aux[j]) then
								busca:=aux[j];
								indice:=j;
						
						end;
						k:=k+1;
					end
					else
						k:=palavra+1;
				end;
			end;
			temp2:=aux[i];
			aux[i]:=aux[indice];
			aux[indice]:=temp2;
			temp:=entrada[i];
			entrada[i]:=entrada[indice];
			entrada[indice]:=temp;
		end;
		repeat
			writeln(output,'');
			writeln(output,'Digite um nome a ser consultado. Para sair, deixe vazio e aperte enter');
			readln(input,consulta);
			consulta:=LowerCase(consulta);
			if consulta<>'' then
			begin
				i:=1;
				while i<=nome do
				begin
					if consulta=aux[i] then
					begin
						str(i,msg);
						writeln(output,'nome encontrado na posicao '+msg);
						i:=nome+1;
					end
					else if i=nome then
					begin
						writeln(output,'nome nao encontrado');
						i:=nome+1;
					end;
					i:=i+1;
				end;
			end;
		until consulta='';
	end.