using System;
using MagickSharp.Core.Native;

namespace MagickSharp.Core
{
    public class Drawable
    {
        public IntPtr _instance { get; private set; }

        private string _text = null;
        private double x, y, angle;
        
        public Drawable()
        {
            _instance = MagickNative.NewDrawingWand();
        }

        public Drawable SetFont(string font)
        {
            MagickNative.SetFont(_instance, font);
            return this;
        }

        public Drawable SetFontSize(double size)
        {
            MagickNative.SetFontSize(_instance, size);
            return this;
        }

        public Drawable SetFillColour(double r, double g, double b, double a)
        {
            MagickNative.SetFillColor(_instance, r, g, b, a);
            return this;
        }

        public Drawable SetText(string text)
        {
            _text = text;
            return this;
        }

        public Drawable SetPosition(double x, double y)
        {
            this.x = x;
            this.y = y;
            return this;
        }

        public Drawable SetAngle(double angle)
        {
            this.angle = angle;
            return this;
        }

        public void Draw(MagickImage image)
        {
            if (!string.IsNullOrEmpty(_text))
                AnnotateImage(image, x, y, angle);
        }

        private void AnnotateImage(MagickImage image, double x, double y, double angle)
        {
            MagickNative.AnnotateImage(image.MagickWand, _instance, x, y, angle, _text);
        }
    }
}