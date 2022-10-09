#include <std/mem.pat>

struct ASLDirEntry {
    char fileName[0x40];
    le u32 fileSize;
    le u32 fileAddress;
};

struct ASLDir {
    le u32 entryCount;
    ASLDirEntry entries[entryCount];
};

ASLDir dir @ 0x00;
