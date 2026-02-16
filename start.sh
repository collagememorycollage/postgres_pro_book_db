if [ -f "./demo-medium.zip" ]; then 
	echo "Файл уже есть"; 
else
       	curl -o demo-medium.zip https://edu.postgrespro.ru/demo-medium.zip ; 
fi


if [ -f "./demo-medium-20170815.sql" ]; then
       	echo "Файл уже есть"; 
else 
	sudo unzip demo-medium.zip; 
	sed -i 's/DROP DATABASE demo;/DROP DATABASE IF EXISTS demo;/' "./demo-medium-20170815.sql"
fi


sudo docker compose up -d 

echo "Ждем старта контейнера..."
sleep 3 

#sudo docker exec -it postgres_pro_book_db-pgdatabase-1 psql -U postgres -d postgres -f /docker-entrypoint-initdb.d/demo-medium-20170815.sql
sudo docker exec -it postgres_pro_book_db-pgdatabase-1 psql -U postgres -d demo 


