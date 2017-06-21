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
