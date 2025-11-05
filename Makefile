build:
	docker build --network=host -t frontend-taski ./frontend
	docker build --network=host -t backend-taski ./backend

run:
	docker run  --name frontend-taski -d -p 3000:3000 frontend-taski
	docker run  --name backend-taski -d -p 8000:8000 backend-taski

clean:
	docker stop frontend-taski backend-taski || true
	docker rm frontend-taski backend-taski || true

all:
	make build
	make run
