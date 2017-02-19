using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Runtime.InteropServices;
using MagickSharp.Core.Native;

namespace MagickSharp.Core
{
    public partial class MagickImage : IDisposable
    {
        public IntPtr MagickWand { get; private set; }

        public MagickImage(byte[] data)
        {
            Read(data);
        }

        private void Read(byte[] data)
        {
            MagickWand = Native.MagickNative.LoadImage(data, (UInt64)data.Length);
        }
        
        public bool AdaptiveResize(UInt64 width, UInt64 height)
        {
            return Native.MagickNative.AdaptiveResizeImage(MagickWand, width, height);
        }

        public bool AdaptiveResize(Percentage percentage)
        {
            var p = PercentageToPoint(percentage);
            return AdaptiveResize(p.x,p.y);
        }

        public bool LiquidResize(ulong width, ulong height, double delta_x = 0, double rigidity = 0)
        {
            return MagickNative.LiquidResizeImage(MagickWand, width, height, delta_x, rigidity);
        }

        public bool LiquidResize(Percentage percentage, double delta_x = 0, double rigidity = 0)
        {
            var p = PercentageToPoint(percentage);
            return LiquidResize(p.x, p.y, delta_x, rigidity);
        }

        public bool SaveImage(string filename)
        {
            return Native.MagickNative.WriteImage(MagickWand, filename);
        }

        public string ImageFormat
        {
            get { return Native.MagickNative.GetImageFormat(MagickWand); }
        }

        public ulong Width
        {
            get { return MagickNative.GetImageWidth(MagickWand); }
        }

        public ulong Height
        {
            get { return MagickNative.GetImageHeight(MagickWand); }
        }

        public void Dispose()
        {
            MagickNative.DisposeImage(MagickWand);
        }
    }
}
