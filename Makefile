apache-image:
	cd apache && \
		docker build -t ba/zurmo_apache .

app-image:
	cd app && \
		if [ -d './zurmo' ]; then echo "OK"; else curl http://build.zurmo.com/downloads/zurmo-stable-3.1.5.a5a46793e4a5.tar.gz | tar -C ./ -xzf -; fi && \
		docker build -t ba/zurmo_app .

backuper-image:
	cd backuper && \
		docker build -t ba/mysql_backuper .

run:
	docker-compose up -d

all: apache-image app-image backuper-image run
