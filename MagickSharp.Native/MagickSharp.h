#ifndef MAGICKCORE_QUANTUM_DEPTH
#define MAGICKCORE_QUANTUM_DEPTH 8
#endif

#ifndef MAGICKCORE_HDRI_ENABLE
#define MAGICKCORE_HDRI_ENABLE 0
#endif


#include "MagickWand/MagickWand.h"

#if defined(_WIN32) || defined(_WIN64)
#define __crsplat __declspec(dllexport)
#else
#define __crsplat 
#endif

#define w MagickWand

#define MAGICK_BOOL \
	MagickBooleanType \
		result

typedef enum { false, true } bool;