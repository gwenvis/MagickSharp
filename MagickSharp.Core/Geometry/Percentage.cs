using System;
using System.Collections.Generic;
using System.Text;

namespace MagickSharp.Core
{
    public class Percentage
    {
        public int x, y;

        public Percentage(int percentage)
        {
            x = y = percentage;
        }

        public Percentage(int x, int y)
        {
            this.x = x;
            this.y = y;
        }

        public Percentage(Percentage p)
        {
            this.x = p.x;
            this.y = p.y;
        }
    }

    public partial class MagickImage : IDisposable
    {
        public Point PercentageToPoint(Percentage p)
        {
            return new Point(
                Width / 100 * (ulong)p.x,
                Height / 100 * (ulong)p.y);
        }
    }

}
