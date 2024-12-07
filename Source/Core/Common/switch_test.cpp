#include <stdio.h>
#include "Externals/SFML/include/SFML/Config.hpp"

int main() {
#ifdef __SWITCH__
    printf("__SWITCH__ is defined\n");
#else
    printf("__SWITCH__ is not defined\n");
#endif

#ifdef SFML_SYSTEM_SWITCH
    printf("SFML_SYSTEM_SWITCH is defined\n");
#else
    printf("SFML_SYSTEM_SWITCH is not defined\n");
#endif
    return 0;
}
