TEMPLATE = app
QT += core quick widgets
SOURCES += main.cpp
RESOURCES += thymio-adventure.qrc
include(thymio-ar/thymio-ar.pri)
include(deployment.pri)

QT3D_MODELS += assets/cave.dae
QGLTF_PARAMS = -g
load(qgltf)

android {
    DISTFILES += \
        android/AndroidManifest.xml \
        android/res/values/libs.xml \
        android/build.gradle
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
}
