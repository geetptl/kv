#include <iostream>
#include <string>
#include <cstring>

int main(int argc, char **argv) {
    if (!strcasecmp(argv[1], "get")) {
        if (argc == 3) {
            std::cout << argv[1] << " " << argv[2] << std::endl;
        } else {
            std::cout << "ERROR: Invalid number of arguments" << std::endl;
        }
    } else if (!strcasecmp(argv[1], "set")) {
        if (argc == 4) {
            std::cout << argv[1] << " " << argv[2] << " " << argv[3] << std::endl;
        } else {
            std::cout << "ERROR: Invalid number of arguments" << std::endl;
        }
    } else if (!strcasecmp(argv[1], "delete") || !strcasecmp(argv[1], "del")) {
        if (argc == 3) {
            std::cout << argv[1] << " " << argv[2] << std::endl;
        } else {
            std::cout << "ERROR: Invalid number of arguments" << std::endl;
        }
    } else {
        std::cout << "ERROR: Unrecognised command" << std::endl;
    }
    return 0;
}