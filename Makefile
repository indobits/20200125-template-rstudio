run:
	docker build . -f Dockerfile -t dsrp/20200125-rstudio:1.0
	docker run \
		-it \
		--rm \
		-v $(PWD):/home/user:rw \
		-v null:/home/user/.rstudio \
		-v null:/home/user/rstudio \
		-p 8787:8787 \
		-e USER=user \
		-e PASSWORD=123 \
		dsrp/20200125-rstudio:1.0