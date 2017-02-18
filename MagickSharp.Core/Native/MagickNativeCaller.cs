using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.InteropServices;

namespace MagickSharp.Core.Native
{
    public static class MagickNativeMethods
    {
        public static int CreateMagickGenesis()
        {
            return MagickNative.MakeMagickGenesis();
        }

        public static IntPtr LoadImage(byte[] data)
        {
            CreateMagickGenesis();
            return MagickNative.LoadImage(data, (UInt64)data.Length);
        }

        public static bool AdaptiveResize(IntPtr instance, UInt64 width, UInt64 height)
        {
            return MagickNative.AdaptiveResizeImage(instance, width, height);
        }

        public static bool SaveImage(IntPtr instance, string filename)
        {
            return MagickNative.WriteImage(instance, filename);
        }

        public static bool IsPlatform(OSPlatform plat) =>
            RuntimeInformation.IsOSPlatform(plat);
    }
}
