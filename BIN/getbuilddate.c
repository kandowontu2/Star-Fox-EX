// long-winded fix for ARGSFXX not being Y2K compliant

#include <stdio.h>
#include <time.h>

int main();

int main() {

    FILE *File;

	time_t timer;
	struct tm* tm_info;

	time(&timer);
	tm_info = localtime(&timer);

	char time_str2[64];
	strftime(time_str2, 64, "%A %B %d %Y", tm_info); // full day/month/year

	char time_str[64];
	strftime(time_str, 64, "%a %m/%d/%y %H:%M:%S", tm_info); // abbr. day/month/year, 24h time

    File = fopen("BLDDAT.ASM", "w+");

    fprintf(File,"\tSTRING\tASMTITLEDATE[64]=\"%s\"\n", time_str2); // date for assembler welcome msg

    fprintf(File,"\tSTRING\tBUILDDATE[64]=\"%s\"\n", time_str); // date you can include as an assembly date

    fclose(File);

	return 0;

}
