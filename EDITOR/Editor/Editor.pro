#-------------------------------------------------
#
# Project created by QtCreator 2017-06-21T03:02:01
#
#-------------------------------------------------

QT       += core gui
QT       += xml
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Editor
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    imagedisplayer.cpp

HEADERS  += mainwindow.h \
    imagedisplayer.h

FORMS    += mainwindow.ui

win32 {
    contains(QMAKE_TARGET.arch, x86_64) {
        QMAKE_LFLAGS_WINDOWS = /SUBSYSTEM:WINDOWS,5.02
        QMAKE_LFLAGS_CONSOLE = /SUBSYSTEM:CONSOLE,5.02
    } else {
        QMAKE_LFLAGS_WINDOWS = /SUBSYSTEM:WINDOWS,5.01
        QMAKE_LFLAGS_CONSOLE = /SUBSYSTEM:CONSOLE,5.01
    }
}

DEFINES += _ATL_XP_TARGETING

