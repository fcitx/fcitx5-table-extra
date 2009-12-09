# vim:set ts=4
#
# ibus-table-boshiamy - The Boshiamy for IBus Tables.
#
# Copyright (c) 2009 You-Sheng Yang <vicamo@gmail.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#
# $Id: $
#

createdb = \
	$(IBUS_TABLE_CREATEDB) 

tables_DATA = \
	boshiamy.db

tables_DATA += $(NULL)

tablesdir = $(datadir)/ibus-table/tables

EXTRA_DIST = \
	boshiamy.txt \
	$(NULL)

DISTCLEANFILES = \
	*.db \
	$(NULL)

.txt.db:
	$(createdb) -n $@ -s $<

