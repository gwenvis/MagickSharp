// Created by Antonio Bottelier on 12/02/2018.

#include "MagickSharp.h"

__crsplat w *SharpCreateCollection()
{
    return NewMagickWand();
}

__crsplat bool SharpAddCollection(w *wand, const w *targetwand)
{
    MagickSetLastIterator(wand);
    return (bool) MagickAddImage(wand, targetwand);
}

__crsplat w *SharpOptimizeCollection(w *wand)
{
    return MagickOptimizeImageLayers(wand);
}

__crsplat w *SharpCollectionGetImage(w *wand, ssize_t index)
{
    MagickSetIteratorIndex(wand, index);
    return MagickGetImage(wand);
}

__crsplat ssize_t SharpCollectionGetCount(w *wand)
{
    MagickSetLastIterator(wand);
    return MagickGetIteratorIndex(wand);
}

__crsplat bool SharpWriteCollection(w *wand, const char *filename)
{
    MAGICK_BOOL;
    MagickSetFirstIterator(wand);
    result = MagickWriteImages(wand, filename, MagickTrue);


    return (bool) result;
}