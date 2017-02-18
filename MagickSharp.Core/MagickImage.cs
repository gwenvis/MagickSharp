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
        private IntPtr _instance;

        public IntPtr Instance
        {
            get { return _instance; }
            set
            {
                if (Instance != IntPtr.Zero)
                    DisposeInstance(Instance);
                _instance = value;
            }
        }

        public MagickImage(byte[] data)
        {
            Read(data);
        }

        private void Read(byte[] data)
        {
            Instance = Native.MagickNative.LoadImage(data, (UInt64)data.Length);
        }
        
        public bool AdaptiveResize(UInt64 width, UInt64 height)
        {
            return Native.MagickNative.AdaptiveResizeImage(Instance, width, height);
        }

        public bool AdaptiveResize(Percentage percentage)
        {
            var p = PercentageToPoint(percentage);
            return AdaptiveResize(p.x,p.y);
        }

        public bool LiquidResize(ulong width, ulong height)
        {
            return MagickNative.LiquidResizeImage(Instance, width, height);
        }

        public bool LiquidResize(Percentage percentage)
        {
            var p = PercentageToPoint(percentage);
            return LiquidResize(p.x, p.y);
        }

        public bool SaveImage(string filename)
        {
            return Native.MagickNative.WriteImage(Instance, filename);
        }

        public string ImageFormat
        {
            get { return Native.MagickNative.GetImageFormat(Instance); }
        }

        public ulong Width
        {
            get { return MagickNative.GetImageWidth(Instance); }
        }

        public ulong Height
        {
            get { return MagickNative.GetImageHeight(Instance); }
        }

        public void Dispose()
        {
            
        }

        public void DisposeInstance(IntPtr ptr)
        {
            ptr = IntPtr.Zero;
            GC.SuppressFinalize(this);
        }
    }
}
