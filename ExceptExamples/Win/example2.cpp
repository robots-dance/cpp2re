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

// ******** ENTRY POINT ********
#ifdef __WATCOM_CPLUSPLUS__
int example2_main( int argc, char **argv )
#else
int main( int argc, char **argv )
#endif
{
	argc = 0;
	argv = NULL;
	
	try
	{
		BlueClass blueObj;
		try
		{
			GreenClass greenObj;
			try
			{
				RedClass redObj;
				throw SubException();
			}
			catch ( SubSubException ex )
			{
				printf( "SubSubException handler\n" );
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
