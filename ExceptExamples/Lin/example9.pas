program Example9(output);

{$mode objfpc}{$H+}

uses sysutils;

type EMyOwnException = class( Exception );

var
	x, y: Integer;
	p: ^Integer;

begin
	y:= 0;
	try
		raise EMyOwnException.Create( 'Try!' );
	except
		on ex : EMyOwnException do
		begin
			writeln( ex.Message );
			try
				x:= x div y;
				x:= p^;
			except
				on ex : EDivByZero do writeln( 'Division by zero' );
				on ex : EAccessViolation do writeln( 'Access violation' );
			end;
		end;
		on ex : Exception do writeln( 'Exception class' );
	end;
	writeln( 'Hello, world!' );
end.
