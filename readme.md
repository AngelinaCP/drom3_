Запустить базу в detached режиме
docker-compose -f docker-compose.local.yml up -d

Залезть в контейнер 
docker exec -ti drom3-db bash