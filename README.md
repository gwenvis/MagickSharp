# MagickSharp
Cross-platform interface for ImageMagick (personal project)

MagickSharp is a cross-platform .Net Core interface for ImageMagick.  
ImageMagick is a powerful image manipulation library that supports over [100 major file formats](www.imagemagick.org/script/formats.php) (not including sub-formats).

This is a **personal project**, to learn C, and more about the fundamentals of C#, and .Net Core.  
Instead of using this library, use [Magick.Net](https://github.com/dlemstra/Magick.NET), although this does not work outside of Windows. (yet?)  
This project takes some influence from Magick.Net, for example if I do not know how to do something I'll look through the code of it to see  
how they implemented it. An example of this is an `IntPtr` as MagickWand instance, which I did not know was possible.

Magick.Net is now open source, it works on Linux and it works quite well!  
After some adjustments, Magick.Net should also work on Mac after having built Magick.Net.Native and installed it's libraries.  
I haven't fiddled with this yet, so I am not 100% sure.  

Again, this is a personal project. So expect some things to outright work weirdly if you ever use this.  
I'd love for this project to ever be released on all platforms, but I am not quite sure how this would be possible via NuGet.  
Window has the benefit of also searching dynamic libraries that are also near the executable, this makes it very easy to build.  
But both macOS and Unix need it in /usr/local/libs, or have a environment variable point to the folder that contains them.  
And to make it work without having ImageMagick installed, it'd also have to deliver the ImageMagick libraries depending on the platform.  
I'm not sure if this is possible, but if it is. Please learn me how! First is making this project usable, though.

## Installation

Alright, so while this project is very, _very_ barebones. I suggest you not to use it and to use [Magick.Net](https://github.com/dlemstra/Magick.NET).  
I actually **command** you to. But alright, I'll be explaining how to install and use this anyway.

### ImageMagick

First and foremost, you need ImageMagick and it's dependencies.  
So follow those instructions, and you'll be ready to go.

If you have any problems on macOS or Linux, specifically with PNG and TIFF (like I had), make sure to install pkgconfig and zlib, and build it again.  

### MagickSharp.Native 

Now we'll have to set up MagickSharp.Native (which is a C project)  
You need cmake, so install that via brew or apt-get.  

If you've installed cmake and imagemagick correctly, you should be able to build it immediately.  
Navigate to the `MagickSharp.Native` folder and run `make install`. Now it should be installed in your libs folderand is ready for use!

If it didn' work, I have a couple solutions I can think of.

Navigate to the `MagickSharp.Native` folder, and open `CMakeLists.txt`  
In there, edit `include_directories("/usr/local/include/ImageMagick-7/")` to point to the ImageMagick include folders. It contains the folders MagickWand, and MagickCore. It needs those.  
If that didn't work, edit these two lines:

```
target_link_libraries(${PROJECT_NAME} libMagickCore-7.Q8.a)
target_link_libraries(${PROJECT_NAME} libMagickWand-7.Q8.a)
```
These need to be either the DLL files for windows, but _should_ work immediately on macOS and Linux. I am not sure of this, so bare with me until I ever finish this project.

## Supported Operating Systems  

This project is being developed for and tested on:  
  - Windows 10 *
  - Debian 8.6 
  - macOS High Sierra
  
\* The project is being built on macOS, and tested on Debian a lot. It's _not_ being tested on Windows. But will be after.
   
## Supported Platforms

The only platform that is supported, and will be supported is
  - .Net Core 2.0 (or higher)
  
## Code review

If you happen to stumble upon this project and you're interested in help me out,  
please do as you wish, it would in fact help me out a lot. Just open an issue!  
