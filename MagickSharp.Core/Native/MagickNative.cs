using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Text;



namespace MagickSharp.Core.Native
{
    using size_t = UInt64;

    internal static class MagickNative
    {
        private const string dllName = "magicksharp.native";
        
        [DllImport(dllName, EntryPoint = "MakeMagickGenesis", CallingConvention = CallingConvention.Cdecl)]
        public static extern int MakeMagickGenesis();

        [DllImport(dllName, EntryPoint = "MagickSharpLoadImage", CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr LoadImage([In] byte[] data, [In] size_t length);

        [DllImport(dllName, EntryPoint = "SharpLoadImage", CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr LoadImageFilename([MarshalAs(UnmanagedType.LPStr)] string filename);

        [DllImport(dllName, EntryPoint = "SharpCopyImage", CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr CopyImage(IntPtr image);

        [DllImport(dllName, EntryPoint = "SharpDisposeWand", CallingConvention = CallingConvention.Cdecl)]
        public static extern void DisposeImage(IntPtr wand);

        [DllImport(dllName, EntryPoint = "SharpAdaptiveResizeImage", CallingConvention = CallingConvention.Cdecl)]
        [return : MarshalAs(UnmanagedType.Bool)]
        public static extern bool AdaptiveResizeImage(IntPtr wand, [In] size_t c, [In] size_t r);

        [DllImport(dllName, EntryPoint = "SharpResizeImage", CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool ResizeImage(IntPtr wand, [In] size_t c, [In] size_t r);

        [DllImport(dllName, EntryPoint = "SharpLiquidRescaleImage", CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool LiquidResizeImage(IntPtr wand, [In] size_t c, [In] size_t r, double delta_x, double rigidity);

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

        [DllImport(dllName, EntryPoint = "SharpCrop", CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool Crop(IntPtr wand, [In] size_t width, [In] size_t height, [In] IntPtr x, [In] IntPtr y);

        [DllImport(dllName, EntryPoint =  "SharpEvaluate")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool Evaluate(IntPtr wand, [In] IntPtr channelType, [In] IntPtr meo, [In] double d);
        
        [DllImport(dllName, EntryPoint = "SharpCreateCollection")]
        public static extern IntPtr CreateWand();
        
        [DllImport(dllName, EntryPoint = "SharpGetImageDelay")]
        public static extern size_t GetImageDelay(IntPtr wand);
        
        [DllImport(dllName, EntryPoint = "SharpSetImageDelay")]
        public static extern bool SetImageDelay(IntPtr wand, size_t delay);
        
        [DllImport(dllName, EntryPoint = "SharpCompositeImage")]
        public static extern bool Composite(IntPtr wand, IntPtr source, ulong co, 
            int cts, IntPtr x, IntPtr y);
        
        [DllImport(dllName, EntryPoint = "SharpCopyImage")]
        public static extern IntPtr Copy(IntPtr duplicate);
        
        [DllImport(dllName, EntryPoint = "SharpAddCollection")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool AddCollection(IntPtr wand, [In] IntPtr targetWand);
        
        [DllImport(dllName, EntryPoint = "SharpOptimizeCollection")]
        public static extern IntPtr OptimizeCollection(IntPtr wand);
        
        [DllImport(dllName, EntryPoint = "SharpLoadImage")]
        public static extern IntPtr LoadImage([MarshalAs(UnmanagedType.LPStr)] string filename);
        
        [DllImport(dllName, EntryPoint = "SharpCollectionGetImage")]
        public static extern IntPtr CollectionGetImageAtIndex(IntPtr wand, IntPtr index);
        
        [DllImport(dllName, EntryPoint = "SharpCollectionGetCount")]
        public static extern IntPtr CollectionGetCount(IntPtr wand);
        
        [DllImport(dllName, EntryPoint = "SharpNewDrawingWand")]
        public static extern IntPtr NewDrawingWand();
        
        [DllImport(dllName, EntryPoint = "SharpSetFont")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool SetFont(IntPtr dw, [MarshalAs(UnmanagedType.LPStr)] string fontname);
        
        [DllImport(dllName, EntryPoint = "SharpWriteCollection")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool WriteCollection(IntPtr wand, [MarshalAs(UnmanagedType.LPStr)] string filename);
        
        [DllImport(dllName, EntryPoint = "SharpGetFont")]
        [return: MarshalAs(UnmanagedType.LPStr)]
        public static extern string GetFont(IntPtr dw);
        
        [DllImport(dllName, EntryPoint = "SharpSetFontSize")]
        public static extern void SetFontSize(IntPtr dw, double s);
        
        [DllImport(dllName, EntryPoint = "SharpSetFillColor")]
        public static extern void SetFillColor(IntPtr dw, double r, double g, double b, double a);
        
        [DllImport(dllName, EntryPoint = "SharpGetTypeMetrics")]
        public static extern IntPtr GetTypeMetrics(IntPtr wand, IntPtr drawingWand, [MarshalAs(UnmanagedType.LPStr)] string text);
        
        [DllImport(dllName, EntryPoint = "SharpAnnotateImage")]
        public static extern IntPtr AnnotateImage(IntPtr wand, IntPtr drawingWand, double x, double y, double angle, 
            [MarshalAs(UnmanagedType.LPStr)] string text);
        
    }
}
