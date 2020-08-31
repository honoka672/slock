VERSION = 1.4


# Paths
PREFIX    = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/include/X11
X11LIB = /usr/lib/X11


# Includes and Libs
INCS = -I. -I/usr/include -I${X11INC}
LIBS = -L/usr/lib -lc -lcrypt -L${X11LIB} -lX11 -lXext -lXrandr


# Flags
CPPFLAGS  = -DVERSION=\"${VERSION}\" -D_DEFAULT_SOURCE -DHAVE_SHADOW_H
CFLAGS    = -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS   = -s ${LIBS}
COMPATSRC = explicit_bzero.c


# Compiler and Linker
CC = cc
