program string_monotona(input{teclado},output{video});{verifica se a palavra eh constituida de letras repetidas}
	var
		entrada:string;{entrada de dados}
		monotona:boolean;{marcador}
		entTam,i:integer;{aux e loops}
	begin
		writeln(output,'%%%Monotona%%%');
		while entrada<>'tchau' do
		begin
			monotona:=true;
			writeln(output,'Escreva palavras com no minimo 2 letras. Digite "tchau" para encerrar.');
			readln(input,entrada);
			entTam:=length(entrada);
			if (entrada<>'tchau') and (entTam>1) then
			begin
				for i:=1 to entTam-1 do
				begin
					if entrada[i]>entrada[i+1] then
						monotona:=false;
				end;
				if monotona=true then
					writeln(output,'monotona')
				else
					writeln(output,'nao monotona');
			end;
			
		end;
	end.