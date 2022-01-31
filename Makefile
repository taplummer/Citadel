.PHONY: default
default: run ;

displayhelp:
	@echo Use "run, or runlocal".

# dockerbuild:
# 	@echo Building fun docker things
# 	docker build -t citadel .

# dockerrun: dockerbuild
# 	@echo Running Docker Run
# 	docker run -v $(pwd):/host -it citadel:latest /bin/bash

runlocal:
	@echo Run without docker. This will download necessary tools to your host machine. 
	./citadel $(target)

run:
	docker build -t citadel .
	docker run -v $(PWD):/host -it citadel:latest /host/citadel $(target)

action:
	echo target is $(target)
