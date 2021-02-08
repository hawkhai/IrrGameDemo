APP_MODULES :=  \
  box2d_static \
  irrlicht_static \
  libogg_static \
  libtremor_static \
  libsdl2_static \
  libsdl2_mixer_static \
  libfreetype2_static \
  librocket_static \
  gamedemo


APP_PROJECT_PATH := .
APP_STL := c++_static
APP_ABI := arm64-v8a

APP_CPPFLAGS += -fexceptions -frtti

APP_CFLAGS += -Wno-error=format-security -Wreturn-type
APP_CPPFLAGS += -Wno-error=c++11-narrowing -Wno-error=format-security -Wreturn-type

APP_SHORT_COMMANDS := true # ndk 编译报 make (e=87): 参数错误
