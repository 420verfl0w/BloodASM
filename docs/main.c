#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct opcodes_t opcodes_t;

struct opcodes_t
{
    char *var[0x8];
    uint8_t opcode;
};

int main(void)
{
    int i = 0;
    const opcodes_t codes[] = {
        {{"ADD"}, 0x2A}
    };
    printf("%d\n", codes[i].opcode);
    return (0);
}
