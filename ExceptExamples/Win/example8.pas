program Example8(output);

{$MODE DELPHI}

var
x: Integer;
y: Integer;
p: ^Integer;

procedure Recursion;
begin
	Recursion;
end;

begin
	try
		x:= p^;
	except
		writeln( 'Pointer Dereference occured' );
	end;
	
	try
		y:= 0;
		x:= x div y;
	except
		writeln( 'Division by zero occured' );
	end;
	
	try
		Recursion;
	except
		writeln( 'Stack Overflow occured' );
	end;
	
	writeln( 'Hello, world!' );
end.
