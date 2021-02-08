# 
# COSOperator.cpp was removed from IRROTHEROBJ
LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)


DEMOSRC =  Demo/B2dNode.cpp Demo/Box2dTest.cpp Demo/GameObject.cpp Demo/SpriteNode.cpp Demo/Player.cpp Demo/FireworkNode.cpp Demo/BatchedSpriteNode.cpp Demo/Base2dNode.cpp
DEMOSRCROCKET= Demo/RocketInterface/CIrrRocketEventReceiver.cpp Demo/RocketInterface/CIrrRocketGUI.cpp Demo/RocketInterface/IrrRocketFileInterface.cpp Demo/RocketInterface/IrrRocketInterface.cpp Demo/RocketInterface/IrrRocketRenderer.cpp
DEMOAUDIO= Demo/Audio/AudioManager.cpp
ANDROID = app-android.cpp android-activity.cpp android-receiver.cpp


LOCAL_MODULE := gamedemo
LOCAL_ARM_MODE   := arm 
LOCAL_CFLAGS := -O3 -DANDROID_NDK -DDISABLE_IMPORTGL -I$(LOCAL_PATH)/../include/  -I$(LOCAL_PATH)/irrlicht/ -I$(LOCAL_PATH)/irrlicht/include/ -I$(LOCAL_PATH)/Demo/  -I$(LOCAL_PATH)/freetype2_static/include  -I$(LOCAL_PATH)/freetype2_static/src -I$(LOCAL_PATH)/librocket/include -I$(LOCAL_PATH)/SDL/include -I$(LOCAL_PATH)/SDL_Mixer
																							      

LOCAL_SRC_FILES := \
 	$(DEMOSRC) \
 	$(DEMOSRCROCKET) \
 	$(DEMOAUDIO) \
    $(ANDROID)


LOCAL_LDLIBS := -lGLESv1_CM -ldl -llog -lGLESv2  
LOCAL_STATIC_LIBRARIES := \
                librocket_static \
				libfreetype2_static \
				libsdl2_mixer_static \
                libsdl2_static \
                libtremor_static \
				libogg_static \
				irrlicht_static \
				box2d_static				

LOCAL_C_INCLUDES := $(LOCAL_PATH)/irrlicht/include \
 	$(LOCAL_PATH)/irrlicht \
 	$(LOCAL_PATH)/SDL/include \
 	$(LOCAL_PATH)/SDL_mixer \
 	$(LOCAL_PATH)/librocket/include \
 	$(LOCAL_PATH)/Demo


include $(BUILD_SHARED_LIBRARY)


$(call import-add-path,$(LOCAL_PATH))
$(call import-module,box2d)
$(call import-module,irrlicht)
$(call import-module,freetype2_static)
$(call import-module,librocket)
$(call import-module,libogg-1.3.0)
$(call import-module,tremor)
$(call import-module,sdl)
$(call import-module,sdl_mixer)

