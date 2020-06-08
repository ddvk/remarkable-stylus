TARGET = qevdevlamyplugin
TEMPLATE = lib
CONFIG += plugin
CONFIG += release
QT += core-private gui-private input_support-private

SOURCES = *.cpp
OTHER_FILES += \
    evdevtablet.json

