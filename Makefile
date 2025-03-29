.PHONY: up
up:
	@docker rm electron-quickstart -f
	@docker build -t electron-quickstart . 
	@docker run \
		--name electron-quickstart \
		-v .:/node \
		-e DISPLAY=$(DISPLAY):0.0 \
		electron-quickstart
