# Auto-generated by IDE. All changes by user will be lost!
# Created at 1/19/13 12:15 AM

BASEDIR = $$_PRO_FILE_PWD_

INCLUDEPATH +=  \
    $$BASEDIR/src

SOURCES +=  \
    $$BASEDIR/src/Datecalculator.cpp \
    $$BASEDIR/src/main.cpp \
    $$BASEDIR/src/qtimespan.cpp

HEADERS +=  \
    $$BASEDIR/src/Datecalculator.hpp \
    $$BASEDIR/src/qtimespan.h

CONFIG += precompile_header
PRECOMPILED_HEADER = $$BASEDIR/precompiled.h

lupdate_inclusion {
    SOURCES += \
        $$BASEDIR/../assets/*.qml
}

TRANSLATIONS = \
    $${TARGET}.ts
