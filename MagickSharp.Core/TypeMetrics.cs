using System;
using System.Runtime.InteropServices;
using MagickSharp.Core.Native;

namespace MagickSharp.Core
{
    public class TypeMetrics
    {
        public double CharacterWidth { get; private set; }
        public double CharacterHeight { get; private set; }
        public double Ascender { get; private set; }
        public double Descender { get; private set; }
        public double Width { get; private set; }
        public double Height { get; private set; }
        public double MaxHorizontalDist { get; private set; }
        public double BoundingBoxX1 { get; private set; }
        public double BoundingBoxY1 { get; private set; }
        public double BoundingBoxX2 { get; private set; }
        public double BoundingBoxY2 { get; private set; }
        public double OriginX { get; private set; }
        public double OriginY { get; private set; }
        
        public TypeMetrics(MagickImage image, Drawable drawable, string text)
        {
            IntPtr ptr = MagickNative.GetTypeMetrics(image.MagickWand, drawable._instance, text);
            double[] array = new double[13];
            Marshal.Copy(ptr, array, 0, 13);

            CharacterWidth = array[0];
            CharacterHeight = array[1];
            Ascender = array[2];
            Descender = array[3];
            Width = array[4];
            Height = array[5];
            MaxHorizontalDist = array[6];
            BoundingBoxX1 = array[7];
            BoundingBoxY1 = array[8];
            BoundingBoxX2 = array[9];
            BoundingBoxY2 = array[10];
            OriginX = array[11];
            OriginY = array[12];
        }
    }
}