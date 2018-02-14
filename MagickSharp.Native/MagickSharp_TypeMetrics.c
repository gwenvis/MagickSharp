// Created by Antonio Bottelier on 13/02/2018.

#include "MagickSharp.h"

__crsplat double *SharpGetTypeMetrics(w *wand, DrawingWand *dw, const char *text)
{
    double *a = MagickQueryFontMetrics(wand, dw, text);
    return a;
}