# slicer-dev
Container with a builded Slicer dev environment

## Instructions to use:
1. Build the container: docker build -t mcespedes/devel-slicer:latest .
2. Run the container: docker run -d -p 8080:8080 --name devel-slicer mcespedes/devel-slicer:latest
3. Execute the container: docker exec -it <image ID> (you can run 'docker ps' to obtain the image ID)
4. Within the container execute:
    4.a) cd /tmp/
    4.b) export QT_ACCOUNT_LOGIN=<your qt account>
    4.c) export QT_ACCOUNT_PASSWORD=<your password>
    4.d) ./qt-unified-linux-x64-online.run install qt.qt5.5152.gcc_64 qt.qt5.5152.qtscript qt.qt5.5152.qtscript.gcc_64 qt.qt5.5152.qtwebengine qt.qt5.5152.qtwebengine.gcc_64 --root /opt/qt --email $QT_ACCOUNT_LOGIN --pw $QT_ACCOUNT_PASSWORD
    4.e) cd /opt/D
    4.f) git clone https://github.com/Slicer/Slicer
    4.g) cd Slicer-superbuild
    4.h) cmake -DQt5_DIR:PATH=/opt/qt/5.15.2/gcc_64/lib/cmake/Qt5 ../Slicer
    4.i) make -j8
5. Open the localhost in your browser (ex: http://localhost:8083/) and choose the x11 session.
6. Right-click and choose terminal emulator. Then run: /opt/D/Slicer-superbuild/Slicer-build/Slicer
7. Slicer should be opened by this point.