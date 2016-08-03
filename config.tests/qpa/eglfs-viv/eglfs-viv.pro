SOURCES = eglfs-viv.cpp
integrity {
  DEFINES += EGL_API_FB=1
} else {
  DEFINES += LINUX=1 EGL_API_FB=1
}
CONFIG -= qt

for(p, QMAKE_LIBDIR_OPENGL_EGL) {
    exists($$p):LIBS += -L$$p
}

!isEmpty(QMAKE_INCDIR_EGL): INCLUDEPATH += $$QMAKE_INCDIR_EGL
!isEmpty(QMAKE_LIBS_EGL): LIBS += $$QMAKE_LIBS_EGL
