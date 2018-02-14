#include "MagickSharp.h"

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

	ExceptionType type;

	printf(MagickGetException(wand, &type));
	printf("\n");

	if (result == MagickFalse)
		return (w *)NULL;
	return wand;
}

bool read_file(const char *filename, char **output, size_t *length)
{
    size_t size;
    FILE *input_file;

    input_file = fopen(filename, "rb");

    if(input_file == (FILE *) NULL) return false;

    fseek(input_file, 0, SEEK_END);
    size = (size_t) ftell(input_file);
    rewind(input_file);

    *output = malloc(size * sizeof(char));
    fread(*output, sizeof(char), size, input_file);
    *length = size * sizeof(char);
    fclose(input_file);
    return true;
}

__crsplat w *SharpLoadImage(const char *filename)
{
	w *wand;
	INIT_MAGICK;
    char *blob;
    size_t length;
    bool read_file_result;

    read_file_result = read_file(filename, &blob, &length);

    if(read_file_result == false) return (w *)NULL;

	wand = MagickSharpLoadImage((unsigned char *) blob, length);

	return wand;
}

__crsplat w *SharpCopyImage(w* duplicate)
{
	w *wand;
	wand = CloneMagickWand(duplicate);
	return wand;
}

__crsplat void SharpDisposeWand(w *wand)
{
	wand = DestroyMagickWand(wand);
}