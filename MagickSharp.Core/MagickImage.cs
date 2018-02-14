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

        public MagickImage()
        {
            MagickWand = MagickNative.CreateWand();
        }

        public MagickImage(MagickImage image)
        {
            Copy(image);
        }
        
        public MagickImage(byte[] data)
        {
            Read(data);
        }
        
        public MagickImage(string data)
        {
            Read(data);
        }

        public MagickImage(IntPtr ptr)
        {
            MagickWand = ptr;
        }

        public ulong ImageDelay
        {
            set => MagickNative.SetImageDelay(MagickWand, value);
            get => MagickNative.GetImageDelay(MagickWand);
        }

        private void Read(byte[] data)
        {
            MagickWand = Native.MagickNative.LoadImage(data, (UInt64)data.Length);
        }

        private void Read(string filename)
        {
            MagickWand = MagickNative.LoadImageFilename(filename);
        }

        private void Copy(MagickImage image)
        {
            MagickWand = MagickNative.CopyImage(image.MagickWand);
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

        public bool Composite(MagickImage source, CompositeOperator co, int x, int y)
        {
            return MagickNative.Composite(MagickWand, source.MagickWand, (ulong)co, 0, 
                new IntPtr(x), new IntPtr(y));
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

        public bool Crop(int xOffset, int yOffset, int width, int height)
        {
            return MagickNative.Crop(MagickWand, (ulong)width, (ulong)height, new IntPtr(xOffset), new IntPtr(yOffset));
        }

        public bool Evaluate(ChannelType c, EvaluateOperator op, double d)
        {
            return MagickNative.Evaluate(MagickWand, new IntPtr((int)c), new IntPtr((int)op), d);
        }

        public bool Write(string filename)
        {
            return Native.MagickNative.WriteImage(MagickWand, filename);
        }

        public string ImageFormat
        {
            get { return Native.MagickNative.GetImageFormat(MagickWand); }
        }

        public ulong Width => MagickNative.GetImageWidth(MagickWand);
        public ulong Height => MagickNative.GetImageHeight(MagickWand);

        public bool IsNull()
        {
            return MagickWand == IntPtr.Zero;
        }

        public void Dispose()
        {
            MagickNative.DisposeImage(MagickWand);
        }
    }
}
