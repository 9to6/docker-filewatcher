all:
	echo 'usage: available command, "docker-build", "docker-push"'

docker-build:
	@docker build -t 9to5/filewatcher:`cat VERSION` .
docker-push:
	@docker tag 9to5/filewatcher:`cat VERSION` 9to5/filewatcher:latest
	@docker push 9to5/filewatcher:`cat VERSION`
	@docker push 9to5/filewatcher:latest
