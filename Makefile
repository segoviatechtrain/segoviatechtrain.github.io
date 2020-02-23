
#---------------------------------------------------------------------
#        DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
# Copyright (C) 2019 Agustín Herranz
#
# Everyone is permitted to copy and distribute verbatim or modified
# copies of this license document, and changing it is allowed as long
# as the name is changed.
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#---------------------------------------------------------------------

SERVER_CMD := docker-compose up
JECKYLL_CMD := docker-compose run --rm jekyll jekyll
BUNDLER_CMD := docker-compose run --rm jekyll bundle

run:
	docker-compose run --rm jekyll

build:
	$(JECKYLL_CMD) build

serve:
	$(SERVER_CMD)

bundle-install:
	$(BUNDLER_CMD) install

bundle-update:
	$(BUNDLER_CMD) update
