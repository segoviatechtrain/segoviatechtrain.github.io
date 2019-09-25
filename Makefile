
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
