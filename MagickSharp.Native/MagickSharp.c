#include "MagickSharp.h"
#include <stddef.h>


#define INIT_MAGICK \
	if (!IsMagickWandInstantiated()) MagickWandGenesis()

__crsplat int MakeMagickGenesis(void)
{
	if(IsMagickWandInstantiated() == MagickFalse) MagickWandGenesis();
	else return 1;

	return 0;
}

__crsplat w *MagickSharpLoadImage(unsigned char *image, size_t size)
{
	MagickBooleanType
		result;

	MagickWand
		*wand;

	INIT_MAGICK;
	wand = NewMagickWand();
	result = MagickReadImageBlob(wand, image, size);

	if (!result)
		return (w *)NULL;
	return wand;
}

__crsplat bool SharpDisposeWand(w *wand)
{
	wand = DestroyMagickWand(wand);
}