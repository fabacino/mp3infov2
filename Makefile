#
#    MP3InfoV2 - Makefile
#    Copyright (C) 2015  Fabian Wiget <fabacino@gmail.com>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

SHELL = /bin/sh
PREFIX = $(DESTDIR)/usr/local
BINDIR = $(PREFIX)/bin

all: mp3infov2

install:
	cp mp3infov2 ${BINDIR}/mp3infov2

uninstall:
	rm -f ${BINDIR}/mp3infov2

.PHONY: install uninstall
