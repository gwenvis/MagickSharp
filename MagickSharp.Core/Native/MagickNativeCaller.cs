using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.InteropServices;

namespace MagickSharp.Core.Native
{
    public static partial class MagickNativeMethods
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

        public static bool Crop(IntPtr instance, ulong x, ulong y, ulong width, ulong height)
        {
            return MagickNative.Crop(instance, x, y, (IntPtr)width, (IntPtr)height);
        }

        public static bool Evaluate(IntPtr instance, ChannelType channelType, EvaluateOperator evalOprator, double d)
        {
            return MagickNative.Evaluate(instance, (IntPtr)channelType, (IntPtr)evalOprator, d);
        }

        public static ulong GetImageDelay(IntPtr instance)
        {
            return MagickNative.GetImageDelay(instance);
        }

        public static bool SetImageDelay(IntPtr instance, ulong delay)
        {
            return MagickNative.SetImageDelay(instance, delay);
        }

        public static bool IsPlatform(OSPlatform plat) =>
            RuntimeInformation.IsOSPlatform(plat);
    }

    public enum EvaluateOperator
    {
        UndefinedEvaluateOperator,
        AbsEvaluateOperator,
        AddEvaluateOperator,
        AddModulusEvaluateOperator,
        AndEvaluateOperator,
        CosineEvaluateOperator,
        DivideEvaluateOperator,
        ExponentialEvaluateOperator,
        GaussianNoiseEvaluateOperator,
        ImpulseNoiseEvaluateOperator,
        LaplacianNoiseEvaluateOperator,
        LeftShiftEvaluateOperator,
        LogEvaluateOperator,
        MaxEvaluateOperator,
        MeanEvaluateOperator,
        MedianEvaluateOperator,
        MinEvaluateOperator,
        MultiplicativeNoiseEvaluateOperator,
        MultiplyEvaluateOperator,
        OrEvaluateOperator,
        PoissonNoiseEvaluateOperator,
        PowEvaluateOperator,
        RightShiftEvaluateOperator,
        RootMeanSquareEvaluateOperator,
        SetEvaluateOperator,
        SineEvaluateOperator,
        SubtractEvaluateOperator,
        SumEvaluateOperator,
        ThresholdBlackEvaluateOperator,
        ThresholdEvaluateOperator,
        ThresholdWhiteEvaluateOperator,
        UniformNoiseEvaluateOperator,
        XorEvaluateOperator
    }
    
    public enum CompositeOperator
    {
        UndefinedCompositeOp,
        AlphaCompositeOp,
        AtopCompositeOp,
        BlendCompositeOp,
        BlurCompositeOp,
        BumpmapCompositeOp,
        ChangeMaskCompositeOp,
        ClearCompositeOp,
        ColorBurnCompositeOp,
        ColorDodgeCompositeOp,
        ColorizeCompositeOp,
        CopyBlackCompositeOp,
        CopyBlueCompositeOp,
        CopyCompositeOp,
        CopyCyanCompositeOp,
        CopyGreenCompositeOp,
        CopyMagentaCompositeOp,
        CopyAlphaCompositeOp,
        CopyRedCompositeOp,
        CopyYellowCompositeOp,
        DarkenCompositeOp,
        DarkenIntensityCompositeOp,
        DifferenceCompositeOp,
        DisplaceCompositeOp,
        DissolveCompositeOp,
        DistortCompositeOp,
        DivideDstCompositeOp,
        DivideSrcCompositeOp,
        DstAtopCompositeOp,
        DstCompositeOp,
        DstInCompositeOp,
        DstOutCompositeOp,
        DstOverCompositeOp,
        ExclusionCompositeOp,
        HardLightCompositeOp,
        HardMixCompositeOp,
        HueCompositeOp,
        InCompositeOp,
        IntensityCompositeOp,
        LightenCompositeOp,
        LightenIntensityCompositeOp,
        LinearBurnCompositeOp,
        LinearDodgeCompositeOp,
        LinearLightCompositeOp,
        LuminizeCompositeOp,
        MathematicsCompositeOp,
        MinusDstCompositeOp,
        MinusSrcCompositeOp,
        ModulateCompositeOp,
        ModulusAddCompositeOp,
        ModulusSubtractCompositeOp,
        MultiplyCompositeOp,
        NoCompositeOp,
        OutCompositeOp,
        OverCompositeOp,
        OverlayCompositeOp,
        PegtopLightCompositeOp,
        PinLightCompositeOp,
        PlusCompositeOp,
        ReplaceCompositeOp,
        SaturateCompositeOp,
        ScreenCompositeOp,
        SoftLightCompositeOp,
        SrcAtopCompositeOp,
        SrcCompositeOp,
        SrcInCompositeOp,
        SrcOutCompositeOp,
        SrcOverCompositeOp,
        ThresholdCompositeOp,
        VividLightCompositeOp,
        XorCompositeOp,
        StereoCompositeOp
    }

    public enum ChannelType
    {
        UndefinedChannel = 0x0000,
        RedChannel = 0x0001,
        GrayChannel = 0x0001,
        CyanChannel = 0x0001,
        GreenChannel = 0x0002,
        MagentaChannel = 0x0002,
        BlueChannel = 0x0004,
        YellowChannel = 0x0004,
        BlackChannel = 0x0008,
        AlphaChannel = 0x0010,
        OpacityChannel = 0x0010,
        IndexChannel = 0x0020,             
        ReadMaskChannel = 0x0040,          
        WriteMaskChannel = 0x0080,         
        MetaChannel = 0x0100,              
        CompositeChannels = 0x001F,
        AllChannels = 0x7ffffff,
        TrueAlphaChannel = 0x0100, 
        RGBChannels = 0x0200,      
        GrayChannels = 0x0400,
        SyncChannels = 0x20000,    
        DefaultChannels = AllChannels
    }
}
