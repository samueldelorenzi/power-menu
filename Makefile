# Makefile para instalar o Power Menu sem criar atalho na área de trabalho

PREFIX ?= /usr/bin/
ICON_NAME := power-on.png
ICON_SRC := $(ICON_NAME)
ICON_DEST := /usr/share/icons/

install:
	@echo "Instalando script em $(PREFIX)..."
	install -m 755 power-menu $(PREFIX)power-menu
	@echo "Instalando ícone em $(ICON_DEST)..."
	install -m 644 $(ICON_SRC) $(ICON_DEST)
	@echo "Instalação concluída com sucesso!"

uninstall:
	@echo "Removendo script de $(PREFIX)..."
	rm -f $(PREFIX)power-menu
	@echo "Removendo ícone de $(ICON_DEST)$(ICON_NAME)..."
	rm -f $(ICON_DEST)$(ICON_NAME)
	@echo "Desinstalação concluída."

.PHONY: install uninstall
