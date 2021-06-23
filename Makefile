ifneq (,$(wildcard ./order/.env))
    include ./order/.env
    export
endif
ifneq (,$(wildcard ./store/.env))
    include ./store/.env
    export
endif

source:
	rm -rf store
	rm -rf order
	git clone https://github.com/luchininaanna/fabric-storeservice store
	git clone https://github.com/luchininaanna/fabric-orderservice order

build:
	cd store && make build
	cd order && make build
	docker-compose -f docker/docker-compose.yml build

up:
	docker-compose -f docker/docker-compose.yml up -d

down:
	docker-compose -f docker/docker-compose.yml down

logs:
	docker-compose -f docker/docker-compose.yml logs