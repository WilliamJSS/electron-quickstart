.PHONY: up
up:
	@docker rm electron-quickstart -f
	@docker build -t electron-quickstart . 
	@docker run -itd \
		--name electron-quickstart \
		-v .:/node \
		-e DISPLAY=$(DISPLAY):0.0 \
		electron-quickstart
	@docker exec -i electron-quickstart npm install

.PHONY: run
run:
	@docker exec -i electron-quickstart npm run dev
