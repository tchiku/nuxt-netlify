npx:
	docker container run -it --rm -v $(PWD):/app --workdir /app node:8 npx create-nuxt-app nuxt-netlify