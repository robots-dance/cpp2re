#include <iostream>
#include <excpt.h>

using namespace std;

void fail()
{
	try
	{
		int *ptr = NULL;
		*ptr = 1;
	}
	catch (...)
	{
		// catch block will only be executed under /EHa
		cout << "Caught an exception in catch(...)." << endl;
	}
}

// ******** ENTRY POINT ********
int main( int argc, char **argv )
{
	argc = 0;
	argv = NULL;
	
	__try
	{
		fail();
	}
	__except( EXCEPTION_EXECUTE_HANDLER )
	{
		// if the exception was not caught by the catch(...) inside fail()
		cout << "An exception was caught in __except." << endl;
	}
	
	return 0;
}
