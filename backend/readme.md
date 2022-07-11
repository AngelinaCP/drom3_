Запустить docker для локальной разработки в detached режиме
docker-compose -f docker-compose.local.yml up -d

Чтоб смотреть прогресс заполнения тестовой базы запускать без ключа -d

Остановить стереть всю что он написал в ДБ
docker-compose -f docker-compose.local.yml down --volumes

Залезть в контейнер 
docker exec -ti drom3-db bash
