# postgres_pro_book_db
Стоит подождать 2-3 минуты, пока база данных полностью развенется!

После можно использовать **\dt**

```
demo=# \dt
               List of relations
  Schema  |      Name       | Type  |  Owner   
----------+-----------------+-------+----------
 bookings | aircrafts_data  | table | postgres
 bookings | airports_data   | table | postgres
 bookings | boarding_passes | table | postgres
 bookings | bookings        | table | postgres
 bookings | flights         | table | postgres
 bookings | seats           | table | postgres
 bookings | ticket_flights  | table | postgres
 bookings | tickets         | table | postgres
(8 rows)
```

Для запкска использовать
```
sudo chmod 777 -R postgres_pro_book_db
cd postgres_pro_book_db
./start.sh
```
