#include <stdio.h>
#include <signal.h>
#include <unistd.h>

#include <setjmp.h>

// SIGBUS, SIGFPE, SIGILL, or SIGSEGV: #UD

jmp_buf oldContext;

void segv_handler( int signum )
{
	printf( "SEGV SIGNAL handler: %x\n", signum );	
	longjmp( oldContext, 1 );
}

void fpe_handler( int signum )
{
	printf( "FPE SIGNAL handler: %x\n", signum );
	size_t sn = signum;
	*( int* )sn = 1;
}

int main( int argc, char **argv )
{
	signal( SIGFPE, fpe_handler ); // works only once
	signal( SIGSEGV, segv_handler ); // works only once
	if ( !setjmp( oldContext ) )
	{
		try
		{
			int a = 10;
			while ( a > 0 ) a--;
			int b = 20;
			b = b / a;
		}
		catch ( ... )
		{
			printf( "ULTRA exception handler\n" );
		}
	}
	printf( "main::exit\n" );
	return 0;
}
