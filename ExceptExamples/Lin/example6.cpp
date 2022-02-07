#include <stdio.h>

class MyException
{
};

int main( int argc, char **argv )
{
	try
	{
		throw new MyException();
	}
	catch ( MyException ex )
	{
		printf( "MyException exception handler\n" );	
	}
	catch ( ... )
	{
		printf( "Global exception handler\n" );
	}
	
	try
	{
		throw new MyException();
	}
	catch ( MyException *ex )
	{
		printf( "MyExceptionPtr exception handler\n");
	}
	
	try
	{
		throw new MyException[ 333 ]();
	}
	catch ( MyException *ex )
	{
		printf( "MyExceptionArray exception handler\n");
	}
	
	try
	{
		MyException **exception = new MyException*[ 666 ];
		throw exception;
	}
	catch ( MyException *ex )
	{
		printf( "MyExceptionArray exception handler\n");
	}
	catch ( ... )
	{
		printf( "Global exception handler\n" );
	}
	
	return 0;
}
