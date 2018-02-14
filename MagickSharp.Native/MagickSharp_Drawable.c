//
// Created by Antonio Bottelier on 12/02/2018.
//

#include "MagickSharp_Drawable.h"


__crsplat DrawingWand *SharpNewDrawingWand()
{
    DrawingWand *wand;
    wand = NewDrawingWand();
    return wand;
}


// Set / Get font

__crsplat bool SharpSetFont(DrawingWand *dw, const char *f)
{
    return (bool) DrawSetFont(dw, f);
}

__crsplat char *SharpGetFont(DrawingWand *dw)
{
    return DrawGetFont(dw);
}

// Set / Get font size

__crsplat void SharpSetFontSize(DrawingWand *dw, const double s)
{
    DrawSetFontSize(dw, s);
}

__crsplat double SharpGetFontSize(DrawingWand *dw)
{
    return DrawGetFontSize(dw);
}

// Set / Get fill colour

__crsplat void SharpSetFillColor(DrawingWand *dw,
                                 const double r, const double g, const double b, const double a)
{
    PixelWand *px = NewPixelWand();

    PixelSetAlpha(px, a);
    PixelSetRed(px, r);
    PixelSetBlue(px, b);
    PixelSetGreen(px, g);

    DrawSetFillColor(dw,px);

    free(px);
}

__crsplat PixelWand *SharpGetFillColor(DrawingWand *dw)
{
    PixelWand *pixelWand;
    DrawGetFillColor(dw, pixelWand);
    return pixelWand;
}

__crsplat bool SharpAnnotateImage(w *wand, DrawingWand *drawingwand,
    const double x, const double y, const double angle, const char *text)
{
    return (bool) MagickAnnotateImage(wand, drawingwand, x, y, angle, text);
}

__crsplat bool SharpDraw(w *wand, DrawingWand *drawingWand)
{
    return (bool) MagickDrawImage(wand, drawingWand);
}