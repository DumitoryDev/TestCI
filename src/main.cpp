#include <iostream>
#include "version.h"

template<typename ...Argv>
void print(Argv &&...  argv) {
    ((std::cout << argv), ...);
}

int main(void) {
    try {
        print('H', 'E', 'L', 'L', 'O', ' ', 'W', 'O', 'R', 'L', 'D');
        std::cout << "Version - " << PROJECT_VERSION_PATCH;
        return std::cout.fail();
    }
    catch (std::exception const &error) {
        std::cerr << error.what() << std::endl;
    }
}
