using System;
using System.Collections.Generic;
using System.Text;

namespace MagickSharp.Core
{
    public class Point
    {
        public ulong x, y;

        public Point(ulong x, ulong y)
        {
            this.x = x;
            this.y = y;
        }
    }
}
