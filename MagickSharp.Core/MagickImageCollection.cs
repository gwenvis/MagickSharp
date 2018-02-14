using System;
using System.Collections;
using System.Collections.Generic;
using MagickSharp.Core.Native;

namespace MagickSharp.Core
{
    public class MagickImageCollection : ICollection
    {
        private IntPtr _instance { get; set; }

        private List<MagickImage> _images = new List<MagickImage>();
        
        public MagickImageCollection()
        {
            _instance = MagickNative.CreateWand();
        }

        public MagickImage this[int i]
        {
            get => _images[i];
            set => _images[i] = value;
        }

        public void Add(MagickImage image)
        {
            _images.Add(image);
        }

        public void Optimize()
        {
            foreach (var image in _images)
            {
                MagickNative.AddCollection(_instance, image.MagickWand);
            }
            
            _instance = MagickNative.OptimizeCollection(_instance);
        }

        public void Write(string filename)
        {
            MagickNative.WriteCollection(_instance, filename);
            
            // dereference them again...I think.
        }

        public IEnumerator GetEnumerator()
        {
            throw new NotImplementedException();
        }

        public void CopyTo(Array array, int index)
        {
            throw new NotImplementedException();
        }

        public int Count => _images.Count;

        public bool IsSynchronized => throw new NotImplementedException();
        public object SyncRoot => throw new NotImplementedException();
    }
}