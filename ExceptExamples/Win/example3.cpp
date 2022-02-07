#include <stdio.h>

class Exception
{
public:
	Exception()
	{
		m_v1 = true;
	}

private:
	bool m_v1;
};

class SubException: public Exception
{
public:
	SubException(): Exception()
	{
		m_v2 = 0xAABBCCDD;
	}

private:
	int m_v2;
};

class SubSubException: public SubException
{
public:
	SubSubException(): SubException()
	{
		;
	}

private:
	char *m_v3;
};

class SubSubSubException: public SubSubException
{
public:
	SubSubSubException(): SubSubException()
	{
		;
	}
};

class SepException {};
class IntException {};

class BlueClass
{
public:
	BlueClass()
	{
		m_var1 = new unsigned char[ 12 ];
	}

	~BlueClass()
	{
		delete[] m_var1;
	}

private:
	unsigned char *m_var1;
};

class GreenClass
{
public:
	GreenClass()
	{
		m_var2 = new unsigned char[ 2021 ];
	}

	~GreenClass()
	{
		delete[] m_var2;
	}

private:
	unsigned char *m_var2;
};

class RedClass
{
public:
	RedClass()
	{
		m_var3 = new unsigned char[ 365 ];
	}

	~RedClass()
	{
		delete[] m_var3;
	}

private:
	unsigned char *m_var3;
};

class OrangeClass
{
public:
	OrangeClass()
	{
		m_var4 = new unsigned char[ 100 ];
	}

	~OrangeClass()
	{
		delete[] m_var4;
	}

private:
	unsigned char *m_var4;
};

void func();
void subfunc();
void subsubfunc();

// ******** ENTRY POINT ********
#ifdef __WATCOM_CPLUSPLUS__
int example3_main( int argc, char **argv )
#else
int main( int argc, char **argv )
#endif
{
	argc = 0;
	argv = NULL;
	
	func();
	
	return 0;
}

void func()
{
	try
	{
		subfunc();
	}
	catch ( IntException ex )
	{
		printf( "IntException handler\n" );
	}
}

void subfunc()
{
	OrangeClass orangeObj;
	try
	{
		subsubfunc();
	}
	catch ( SepException ex )
	{
		printf( "SepException handler\n" );
	}
}

void subsubfunc()
{
	try
	{
		BlueClass blueObj;
		try
		{
			GreenClass greenObj;
			try
			{
				RedClass redObj;
				throw IntException();
			}
			catch ( SubSubException ex )
			{
				printf( "SubSubException handler\n" );
			}
		}
		catch ( SubException ex )
		{
			printf( "Exception handler\n" );
		}
	}
	catch ( Exception ex )
	{
		printf( "GLOBAL exception handler\n" );
	}
}
