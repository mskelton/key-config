TIMESTAMP := $(shell date -u +"%Y%m%d%H%M")
COMMIT := $(shell git rev-parse --short HEAD 2>/dev/null)

.PHONY: all clean sync

all:
	$(shell bin/get_version.sh >> /dev/null)
	docker build --tag zmk --file Dockerfile .
	docker run --rm -it --name zmk \
		-v $(PWD)/firmware:/app/firmware \
		-v $(PWD)/config:/app/config:ro \
		-e TIMESTAMP=$(TIMESTAMP) \
		-e COMMIT=$(COMMIT) \
		zmk

clean:
	rm -f firmware/*.uf2
	docker image rm zmk docker.io/zmkfirmware/zmk-build-arm:stable

sync:
	git fetch upstream
	git merge upstream/V2.0 || true
	git checkout --ours README.md
	git add README.md
