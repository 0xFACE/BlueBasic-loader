AME=bbload

PREFIX?=/usr/local
DOC_DIR=$(PREFIX)/share/doc/$(NAME)

DOC_FILES=LICENSE README.md

default: help

install:
        mkdir -p $(PREFIX)/bin
        mkdir -p $(DOC_DIR)
        cp bbload $(PREFIX)/bin/bbload
        cp $(DOC_FILES) $(DOC_DIR)/
        chmod a+x $(PREFIX)/bin/bbload

uninstall:
        rm -f $(PREFIX)/bin/bbload
        rm -rf $(DOC_DIR)

help:

        @echo "Usage:"
        @echo "      "
        @echo "make help       [Show this help]"
        @echo "make install    [Install the program]"
        @echo "make uninstall  [Uninstall the program]"

.PHONY: install uninstall help default
