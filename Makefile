run: start-mysql
	php bin/console server:run

start-mysql:
	sh bin/start-mysql.sh

stop-mysql:
	docker stop allocate_mysql

rm-mysql: stop-mysql
	docker rm allocate_mysql

restart-mysql: rm-mysql
	sh bin/start-mysql.sh

migrate-latest:
	php bin/console doctrine:migrations:migrate

view-mysql:
	docker exec -it allocate_mysql sh -c "mysql -u root -p"