#include <stdio.h>
#include <string>

#define FLOAT_EXCEPT_MESSAGE "Float exception handler: %f\n"
#define DOUBLE_EXCEPT_MESSAGE "Double exception handler: %f\n"
#define STDSTR_EXCEPT_MESSAGE "STDSTRING exception handler\n"

// ******** ENTRY POINT ********
#ifdef __WATCOM_CPLUSPLUS__
int example5_main( int argc, char **argv )
#else
int main( int argc, char **argv )
#endif
{
	argc = 0;
	argv = NULL;
	
	try
	{
		throw 666;
	}
	catch ( int ex )
	{
		printf( "Integer exception handler: %d\n", ex );
	}
	
	try
	{
		throw 1.1;
	}
	catch ( float ex )
	{
		printf( FLOAT_EXCEPT_MESSAGE, ex );
	}
	catch ( double ex )
	{
		printf( DOUBLE_EXCEPT_MESSAGE, ex );
	}
	
	try
	{
		throw ( float )1.1;
	}
	catch ( float ex )
	{
		printf( FLOAT_EXCEPT_MESSAGE, ex );
	}
	catch ( double ex )
	{
		printf( DOUBLE_EXCEPT_MESSAGE, ex );
	}
	
	try
	{
		throw ( float )1.1;
	}
	catch ( double ex )
	{
		printf( DOUBLE_EXCEPT_MESSAGE, ex );
	}
	catch ( float ex )
	{
		printf( FLOAT_EXCEPT_MESSAGE, ex );
	}
	
	try
	{
		throw "My Exception";
	}
	catch ( const std::string &ex )
	{
		printf( STDSTR_EXCEPT_MESSAGE );
	}
	catch ( const char *ex )
	{
		printf( "CHARPTR exception handler: %s\n", ex );
	}
	
	try
	{
		throw "My Exception Next";
	}
	catch ( const std::string &ex )
	{
		printf( STDSTR_EXCEPT_MESSAGE );
	}
	catch ( ... )
	{
		printf( "Global exception handler\n" );
	}
	
	return 0;
}
