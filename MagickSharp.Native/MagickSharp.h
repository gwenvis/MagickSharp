#include "MagickWand\MagickWand.h"

#if defined(_WIN32) || defined(_WIN64)
#define __crsplat __declspec(dllexport)
#else
#define __crsplat 
#endif

#define w MagickWand

typedef enum { false, true } bool;