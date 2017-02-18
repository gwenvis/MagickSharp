#include "MagickSharp_Image.h"
#include "MagickSharp.h"
#include "MagickCore\MagickCore.h"
#include <stddef.h>
#include <string.h>

#define MAGICK_BOOL \
	MagickBooleanType \
		result

__crsplat bool SharpResizeImage(w *wand, size_t c, size_t r)
{
	MAGICK_BOOL;
	result = MagickResizeImage(wand, c, r, LanczosFilter);
	return result;
}

__crsplat bool SharpAdaptiveResizeImage(w *wand, size_t c, size_t r)
{
	MAGICK_BOOL;
	result = MagickAdaptiveResizeImage(wand, c, r);
	return result;
}

__crsplat bool SharpLiquidRescaleImage(w *wand, size_t c, size_t r)
{
	MAGICK_BOOL;
	result = MagickLiquidRescaleImage(wand, c, r, 0, 0);
	return result;
}

__crsplat bool SharpBlurImage(w *wand, double c, double r)
{
	MAGICK_BOOL;
	result = MagickBlurImage(wand, c, r);
	return result;
}

__crsplat bool SharpSaveToFile(w *wand, char *name)
{
	MAGICK_BOOL;
	result = MagickWriteImage(wand, name);
	return result;
}

__crsplat char *SharpGetImageFormat(w *wand)
{
	return MagickGetImageFormat(wand);
}

__crsplat bool SharpSetImageFormat(w *wand, char *format)
{
	MAGICK_BOOL;
	result = MagickSetImageFormat(wand, format);
	return result;
}

__crsplat size_t SharpGetImageWidth(w *wand)
{
	return MagickGetImageWidth(wand);
}

__crsplat size_t SharpGetImageHeight(w *wand)
{
	return MagickGetImageHeight(wand);
}