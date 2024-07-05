#include "hash_table.h"
#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    if (!strcmp(argv[1], "get")) {
        if (argc == 3) {
            printf("%s %s\n", argv[1], argv[2]);
        } else {
            printf("ERROR: Invalid number of arguments\n");
        }
    } else if (!strcmp(argv[1], "set")) {
        if (argc == 4) {
            printf("%s %s %s\n", argv[1], argv[2], argv[3]);
        } else {
            printf("ERROR: Invalid number of arguments\n");
        }
    } else if (!strcmp(argv[1], "del")) {
        if (argc == 3) {
            printf("%s %s\n", argv[1], argv[2]);
        } else {
            printf("ERROR: Invalid number of arguments\n");
        }
    } else {
        printf("ERROR: Unrecognised command\n");
    }
}