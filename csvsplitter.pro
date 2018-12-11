#-------------------------------------------------
#
# Project created by QtCreator 2018-08-24T16:19:27
#
#-------------------------------------------------

QT       += gui

TEMPLATE = lib
CONFIG += staticlib

DEFINES += CSVSPLITTER_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

CONFIG(debug, debug|release) {
    TARGET = csvsplitterd
    DESTDIR = ../../build/csvsplitter
    OBJECTS_DIR = $$DESTDIR/.objd
    MOC_DIR = $$DESTDIR/.mocd
    RCC_DIR = $$DESTDIR/.qrcd
    UI_DIR = $$DESTDIR/.uid
}

CONFIG(release, debug|release) {
    TARGET = csvsplitter
    DESTDIR = ../../build/csvsplitter
    OBJECTS_DIR = $$DESTDIR/.obj
    MOC_DIR = $$DESTDIR/.moc
    RCC_DIR = $$DESTDIR/.qrc
    UI_DIR = $$DESTDIR/.ui
}

SOURCES += \
        csvsplitter.cpp

HEADERS += \
        csvsplitter.h \
        csvsplitter_global.h

unix {
    header_files.files = $$HEADERS
    header_files.path = /usr/local/include/csvsplitter
    INSTALLS += header_files
    target.path = /usr/local/lib
    INSTALLS += target
}

#DISTFILES += \
#    testdata.txt


