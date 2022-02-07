#include <stdio.h>

class Exception
{
};

class SubException
{
};

class SubSubException
{
};

// ******** ENTRY POINT ********
int main( int argc, char **argv )
{
	argc = 0;
	argv = NULL;
	
	try
	{
		try
		{
			try
			{
				throw SubException();
			}
			catch ( SubSubException ex )
			{
				printf( "SubSubException handler" );
			}
		}
		catch ( Exception ex )
		{
			printf( "Exception handler\n" );
		}
	}
	catch ( ... )
	{
		printf( "GLOBAL exception handler\n" );
	}
	return 0;
}
