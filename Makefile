
dc:
	docker-compose up -d

dc-stop:
	docker-compose stop

dc-rm: dc-stop
	docker-compose rm -f

d-start-dev:
	docker run \
		-d \
		-p 8080:8080 \
		-e KEYCLOAK_ADMIN=admin \
		-e KEYCLOAK_ADMIN_PASSWORD=admin \
		--name keycloak \
		quay.io/keycloak/keycloak:18.0.0 \
		start-dev

d-rm:
	docker rm keycloak -f
