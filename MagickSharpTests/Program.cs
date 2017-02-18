using System;
using MagickSharp.Core;
using System.IO;
using System.Linq;

namespace MagickSharpTests
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("hey");

            using (var image = new MagickImage(File.ReadAllBytes("image.png")))
            {
                image.LiquidResize(new Percentage(50, 100));
                image.SaveImage("img.png");
            }
        }
    }
}