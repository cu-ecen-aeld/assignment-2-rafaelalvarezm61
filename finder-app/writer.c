#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>
#include <string.h>

int main(int argc, char *argv[]) {
	printf("empezo el c");
	openlog("assignment_2", LOG_PID, LOG_USER);
	if (argc != 3){
		printf("error: insuficient arguments provided");
		printf("Usage  writer <argument1> <argument2>");
		syslog(LOG_ERR, "insuficient arguments provided");
		return 1;
	}
	char writefile[100];
 	strcpy(writefile, argv[1]);
	char writestr[100];
 	strcpy(writestr, argv[2]);
	printf("%s\n", writefile);
	printf("%s\n", writestr);
	printf("capto las variables");
	char mesage[100] = "Writing";
	strcat(mesage, writestr);
	strcat(mesage, " to ");
	strcat(mesage, writefile);
	syslog(LOG_DEBUG, mesage, "prueba");
	FILE *fptr;
	fptr = fopen(writefile, "w");
	fprintf(fptr, writestr);
	fclose(fptr);
	closelog();
	printf("termino el c");
	return 0;
}
