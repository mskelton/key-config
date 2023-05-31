TIMESTAMP := $(shell date -u +"%Y%m%d%H%M%S")

.PHONY: all clean sync

all:
	docker build --tag zmk --file Dockerfile .
	docker run --rm -it --name zmk \
		-v $(PWD)/firmware:/app/firmware \
		-v $(PWD)/config:/app/config:ro \
		-e TIMESTAMP=$(TIMESTAMP) \
		zmk

clean:
	rm -f firmware/*.uf2
	docker image rm zmk docker.io/zmkfirmware/zmk-build-arm:stable

sync:
	git merge upstream/V2.0 || true
	git checkout --ours README.md
	git add README.md
