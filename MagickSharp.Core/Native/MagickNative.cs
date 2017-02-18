using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Text;



namespace MagickSharp.Core.Native
{
    using size_t = UInt64;

    internal static class MagickNative
    {
        private const string dllName = "MagickSharp_Native";
        
        [DllImport(dllName, EntryPoint = "MakeMagickGenesis", CallingConvention = CallingConvention.Cdecl)]
        public static extern int MakeMagickGenesis();
        [DllImport(dllName, EntryPoint = "MagickSharpLoadImage", CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr LoadImage([In] byte[] data, [In] size_t length);
        [DllImport(dllName, EntryPoint = "SharpAdaptiveResizeImage", CallingConvention = CallingConvention.Cdecl)]
        [return : MarshalAs(UnmanagedType.Bool)]
        public static extern bool AdaptiveResizeImage(IntPtr wand, [In] size_t c, [In] size_t r);
        [DllImport(dllName, EntryPoint = "SharpResizeImage", CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool ResizeImage(IntPtr wand, [In] size_t c, [In] size_t r);
        [DllImport(dllName, EntryPoint = "SharpLiquidRescaleImage", CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool LiquidResizeImage(IntPtr wand, [In] size_t c, [In] size_t r);
        [DllImport(dllName, EntryPoint = "SharpSaveToFile", CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool WriteImage(IntPtr wand, [MarshalAs(UnmanagedType.LPStr)] string name);
        [DllImport(dllName, EntryPoint = "SharpGetImageFormat", CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.LPStr)]
        public static extern string GetImageFormat(IntPtr wand);
        [DllImport(dllName, EntryPoint = "SharpGetImageFormat", CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool SetImageFormat(IntPtr wand, [MarshalAs(UnmanagedType.LPStr)] string format);
        [DllImport(dllName, EntryPoint = "SharpGetImageWidth", CallingConvention = CallingConvention.Cdecl)]
        public static extern ulong GetImageWidth(IntPtr wand);
        [DllImport(dllName, EntryPoint = "SharpGetImageHeight", CallingConvention = CallingConvention.Cdecl)]
        public static extern ulong GetImageHeight(IntPtr wand);
    }
}
