# Docker container with Slicer build for development
# (based on https://github.com/pieper/SlicerDockers)

ARG VERSION="5.0.3"

FROM stevepieper/x11:${VERSION}
LABEL maintainer="mcespedes99@gmail.com"

RUN apt-get update

# core Slicer dependencies
RUN apt-get install -y git subversion libglu1-mesa libpulse-dev libnss3 libglu1-mesa \
                       libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 libxcb-xkb1 libxkbcommon-x11-0\
                       libxcb-shape0 libxcb-xinerama0 libxcb-xinerama0-dev \
                       libxcb-icccm4-dev libxcb-image0-dev libxcb-keysyms1-dev libxcb-randr0 libxcb-xkb-dev libxkbcommon-x11-dev \
                       build-essential cmake libqt5x11extras5-dev libxt-dev libssl-dev
  # build-essential cmake cmake-curses-gui cmake-qt-gui \
  # qt5-default qtmultimedia5-dev qttools5-dev libqt5xmlpatterns5-dev libqt5svg5-dev qtwebengine5-dev qtscript5-dev \
  # qtbase5-private-dev libqt5x11extras5-dev libxt-dev

# for Qt5 binaries
RUN mkdir /opt/D && mkdir /opt/D/Slicer-superbuild && cd /tmp \
    && curl -LO http://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run \
    && chmod +x qt-unified-linux-x64-online.run

# includes our version of cmake
# COPY usr /usr