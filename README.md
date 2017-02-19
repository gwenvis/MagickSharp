# MagickSharp
Cross-platform interface for ImageMagick (personal project)

MagickSharp is a cross-platform .Net Core interface for ImageMagick.  
ImageMagick is a powerful image manipulation library that supports over [100 major file formats](www.imagemagick.org/script/formats.php) (not including sub-formats).

This is a **personal project**, to learn C, and more about the fundamentals of C#, and .Net Core.  
Instead of using this library, use [Magick.Net](https://github.com/dlemstra/Magick.NET), although this does not work outside of Windows. (yet?)  
This project takes some influence from Magick.Net, for example if I do not know how to do something I'll look through the code of it to see  
how they implemented it. An example of this is an `IntPtr` as MagickWand instance, which I did not know was possible.

I came across Magick.Net and ImageMagick when I wanted to make a stupid little command for my [Discord bot](https://github.com/stepperman/qtbot), 
which liquid resizes the image and completely distorts it giving it an hilarious end result.  
I implemented and tested the command on Windows first, it worked and I was happy. Until I found out that it didn't work on Linux.  
Not to blame anyone, .Net Core is still very new.  

I wanted to learn C for a while, so the bot command right now is just 1 function that returns the image blob.  
And now I'm setting out to learn more C, by creating a cross-platform interface for .Net Core.

## Supported Operating Systems  

This project is being developed for and tested on:  
  - Windows 10
  - Debian 8.6 *
  ( as of writing this, the project has only been tested on Windows, as soon as it works and has been tested on Linux I'll remove this. )
  
## Supported Platforms

The only platform that is supported, and will be supported is
  - .Net Core 1.1 (or higher)
  
## Code review

If you happen to stumble upon this project and you're interested in help me out,  
please do as you wish, it would in fact help me out a lot. Just open an issue!  
