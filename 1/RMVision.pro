TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += c++11
QMAKE_CXXFLAGS_RELEASE += -O3
CONFIG += qt thread debug

INCLUDEPATH += -I/usr/local/include/opencv
               -I/usr/local/include
               -I/usr/local/include/opencv2


LIBS += -L/usr/local/lib -lopencv_shape -lopencv_stitching -lopencv_superres -lopencv_videostab -lopencv_calib3d -lopencv_features2d -lopencv_objdetect -lopencv_highgui -lopencv_videoio -lopencv_photo -lopencv_imgcodecs -lopencv_video -lopencv_ml -lopencv_imgproc -lopencv_flann -lopencv_core
SOURCES += main.cpp \
    serial.cpp \
    RuneDetector.cpp \
    RuneResFilter.cpp \
    ArmorDetector.cpp \
    Predictor.cpp \
    ImageConsProd.cpp \
    RemoteController.cpp \
    AngleSolver.cpp \
    RMVideoCapture.cpp

HEADERS += \
    serial.h \
    cmdline.h \
    RuneDetector.hpp \
    RuneResFilter.hpp \
    Settings.hpp \
    ArmorDetector.hpp \
    Predictor.hpp \
    ImageConsProd.hpp \
    RemoteController.hpp \
    AngleSolver.hpp \
    sse_to_neon.hpp \
    RMVideoCapture.hpp \
    LedController.hpp

