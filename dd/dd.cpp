
extern "C" {
#include <stdio.h>
}

int main(int argc, char** argv)
{

    if (argc < 3) {
        printf("");
        return 1;
    }

    auto ifp = fopen(argv[1], "rb");
    auto ofp = fopen(argv[2], "rb+");

    fseek(ofp, 0, SEEK_SET);

    unsigned char buf[1024];

    while (auto r = fread(buf, 1, sizeof buf, ifp)) {
        printf("read %llu bytes\n", r);
        auto bytes = fwrite(buf, 1, r, ofp);
        printf("write %llu bytes\n", bytes);
    }

    fclose(ofp);

    return 0;
}
