all:
	nvcc src/hello.cu
docker:
	docker build -t frederickollinger/cuda:latest .
push:
	docker push frederickollinger/cuda:latest
