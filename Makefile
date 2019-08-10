DOCKER := docker container run -it --rm -v $(PWD):/app --workdir /app
PORT := -p 3000:3000
IMAGE := node:8

.PHONY: bash build generate dev create

bash:
	$(DOCKER) $(IMAGE) bash

build:
	$(DOCKER) $(IMAGE) yarn run build

generate:
	$(DOCKER) $(IMAGE) yarn run generate

dev:
	$(DOCKER) $(PORT) $(IMAGE) yarn run dev

create:
	$(DOCKER) $(IMAGE) npx create-nuxt-app nuxt-netlify
