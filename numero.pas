program numeros(input{teclado},output{video});{contador de ocorrencias para numeros}
	const
		numero=100;
	var
		vetor: array [1..numero] of integer;
		entrada:integer;{entrada de dados}
		i:integer;{loops}
		msg,msg2:string;
		
	begin
		writeln(output,'%%%Numeros%%%');
		writeln(output,'Escreva somente numeros inteiros');
		writeln(output,'');
		entrada:=-1;
		while entrada<>0 do
		begin
			str(numero,msg);
			writeln(output,'Entre com um numero de 1 a '+msg+' ou zero para encerrar');
			read(input,entrada);
			if (entrada>0) and (entrada <=numero) then
			begin
				if vetor[entrada]=0 then
					vetor[entrada]:=0+1
				else
					vetor[entrada]:=vetor[entrada]+1;
			end
			else if entrada>numero then
			begin
				writeln(output,'');
				writeln(output,'----- 1 a '+msg+' -----');
				writeln(output,'');
			end;	
		end;
		for i:=1 to numero do
		begin
			if vetor[i]<>0 then
			begin
				str(i,msg);
				str(vetor[i],msg2);
				writeln(output,'O numero '+msg+' ocorreu '+msg2+' vezes');
			end;
		end;		
	end.