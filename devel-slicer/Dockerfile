# Docker container with Slicer build for development
# (based on https://github.com/pieper/SlicerDockers)

ARG VERSION="5.0.3"

FROM mcespedes/x11:${VERSION}
LABEL maintainer="mcespedes99@gmail.com"

RUN apt-get update

# core Slicer dependencies
RUN apt-get install -y git subversion build-essential cmake cmake-curses-gui cmake-qt-gui \
  qt5-default qtmultimedia5-dev qttools5-dev libqt5xmlpatterns5-dev libqt5svg5-dev qtwebengine5-dev qtscript5-dev \
  qtbase5-private-dev libqt5x11extras5-dev libxt-dev

# for Qt5 binaries
RUN mkdir /opt/slicer

# includes our version of cmake
COPY usr /usr
