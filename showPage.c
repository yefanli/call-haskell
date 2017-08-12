#include <HsFFI.h>
#include <Rts.h>
#include <stdlib.h>
#include "Page_stub.h"

int main(int argc, char* argv[])
{
	hs_init(&argc, &argv);

	char* text = (char*)getPage_hs();
	puts(text);

	free(text);

	hs_exit();
	return 0;
}
		
	


