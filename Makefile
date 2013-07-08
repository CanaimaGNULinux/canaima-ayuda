# Makefile
#
# ==============================================================================
# PAQUETE: canaima-ayuda
# ARCHIVO: postinst
# DESCRIPCIÓN: Configura el sistema despues la instalación del paquete.
# COPYRIGHT:
#  (C) 2013 Sasha Veronica Solano Grosjean <sashasolano@gmail.com>
# LICENCIA: GPL3
# ==============================================================================
#
# Este programa es software libre. Puede redistribuirlo y/o modificarlo bajo los
# términos de la Licencia Pública General de GNU (versión 3).

SHELL := sh -e

all: build

test:



	@echo -n "\n===== Comprobando posibles errores de sintaxis en los scripts de mantenedor =====\n\n"

	@for SCRIPT in $(SCRIPTS); \
	do \
		echo -n "$${SCRIPT}\n"; \
		bash -n $${SCRIPT}; \
	done

	@echo -n "\n=================================================================================\nHECHO!\n\n"

build:


	@echo "Nada para compilar!"

install:

	mkdir -p $(DESTDIR)/usr/share/canaima/help/gnome
	mkdir -p $(DESTDIR)/etc/skel/Escritorio
	@cp -r gnome  $(DESTDIR)/usr/share/canaima/help/
	@cp ayuda-gnome.desktop $(DESTDIR)/etc/skel/Escritorio

uninstall:

	rm -r /etc/skel/canaima-ayuda/ayuda-gnome.desktop
	rm -rf /usr/share/canaima/help/gnome

	
# se creó en el install

clean:

# Borrar todo lo hecho en build para que quede todo como estaba antes de la
# compilación

reinstall: uninstall install
