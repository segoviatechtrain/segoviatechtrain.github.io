

JECKYLL_CMD := docker-compose run --rm --service-ports jekyll jekyll
BUNDLER_CMD := docker-compose run --rm jekyll bundle

run:
	docker-compose run --rm jekyll

build:
	$(JECKYLL_CMD) build

serve:
	$(JECKYLL_CMD) serve --watch --force_polling --verbose

bundle-install:
	$(BUNDLER_CMD) install

bundle-update:
	$(BUNDLER_CMD) update
