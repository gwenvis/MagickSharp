cmake_minimum_required(VERSION 3.9)
project(magicksharp.native LANGUAGES C VERSION 0.0.1 DESCRIPTION "stupid fucking shit")

set(CMAKE_CXX_STANDARD 11)
include(GNUInstallDirs)

include_directories("/usr/local/include/ImageMagick-7/")

set(CMAKE_BUILD_TYPE Debug)

add_library(${PROJECT_NAME} SHARED
        MagickSharp.c
        MagickSharp.h
        MagickSharp_Image.c
        MagickSharp_Image.h
        MagickSharp_Drawable.c
        MagickSharp_Drawable.h MagickSharp_PixelWand.c MagickSharp_PixelWand.h MagickSharp_ImageCollection.c MagickSharp_TypeMetrics.c)

target_link_libraries(${PROJECT_NAME} libMagickCore-7.Q8.a)
target_link_libraries(${PROJECT_NAME} libMagickWand-7.Q8.a)


install(TARGETS ${PROJECT_NAME}
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})