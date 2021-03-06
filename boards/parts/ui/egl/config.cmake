link_directories("/opt/vc/lib")
set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} "/opt/vc/lib")
find_library(BCM_HOST bcm_host)
find_library(BCM_EGL brcmEGL)
find_library(BCM_GLES brcmGLESv2)
target_link_libraries(otto PUBLIC ${BCM_HOST})
target_link_libraries(otto PUBLIC ${BCM_EGL})
target_link_libraries(otto PUBLIC ${BCM_GLES})
target_link_libraries(otto PUBLIC dl)
target_include_directories(otto PUBLIC "/opt/vc/include")

otto_option(USE_FBCP "Use FBCP to copy each frame from /dev/fb0 to /dev/fb1. Disable if you dont use FBTFT" OFF)
