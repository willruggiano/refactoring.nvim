#include <stdio.h>

class Test {
    public:
        ~Test() { }
        void foo();
};

void Test::foo() {

printf("Test::foo(%d): \n", __LINE__);
}
