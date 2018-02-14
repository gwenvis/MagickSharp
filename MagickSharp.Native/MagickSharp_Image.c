#include "MagickSharp_Image.h"
#include "MagickSharp.h"

__crsplat bool SharpResizeImage(w *wand, size_t c, size_t r)
{
	MAGICK_BOOL;
	result = MagickResizeImage(wand, c, r, LanczosFilter);
	return (bool) result;
}

__crsplat bool SharpAdaptiveResizeImage(w *wand, size_t c, size_t r)
{
	MAGICK_BOOL;
	result = MagickAdaptiveResizeImage(wand, c, r);
	return (bool) result;
}

__crsplat bool SharpLiquidRescaleImage(w *wand, size_t c, size_t r, double delta_x, double rigidity)
{
	MAGICK_BOOL;
	result = MagickLiquidRescaleImage(wand, c, r, delta_x, rigidity);
	return (bool) result;
}

__crsplat bool SharpBlurImage(w *wand, double c, double r)
{
	MAGICK_BOOL;
	result = MagickBlurImage(wand, c, r);
	return (bool) result;
}

__crsplat bool SharpSaveToFile(w *wand, char *name)
{
	MAGICK_BOOL;
	result = MagickWriteImage(wand, name);
	return (bool) result;
}

__crsplat char *SharpGetImageFormat(w *wand)
{
	return MagickGetImageFormat(wand);
}

__crsplat bool SharpSetImageFormat(w *wand, char *format)
{
	MAGICK_BOOL;
	result = MagickSetImageFormat(wand, format);
	return (bool) result;
}

__crsplat bool SharpCompositeImage
        (w *destwand, const w *target, CompositeOperator co,
         const MagickBooleanType cts, const ssize_t x, const ssize_t y)
{
    MAGICK_BOOL;
    result = MagickCompositeImage(destwand, target, co, cts, x, y);
    return (bool) result;
}

__crsplat bool SharpEvaluate(w *wand, const ChannelType channelType,
							 const MagickEvaluateOperator meo, const double d)
{
	MAGICK_BOOL;
	MagickSetImageChannelMask(wand, channelType);
	result = MagickEvaluateImage(wand, meo, d);
	MagickSetImageChannelMask(wand, DefaultChannels);
	return (bool) result;
}

__crsplat bool SharpCrop(w *wand, const size_t wi, const size_t h,
						 const ssize_t x, const ssize_t y)
{
	return (bool) MagickCropImage(wand, wi, h, x, y);
}

__crsplat size_t SharpGetImageWidth(w *wand)
{
	return MagickGetImageWidth(wand);
}

__crsplat size_t SharpGetImageHeight(w *wand)
{
	return MagickGetImageHeight(wand);
}

__crsplat bool SharpSetImageDelay(w *wand, const size_t delay)
{
	return (bool) MagickSetImageDelay(wand, delay);
}

__crsplat size_t SharpGetImageDelay(w *wand)
{
	return MagickGetImageDelay(wand);
}