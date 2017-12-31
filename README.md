# todoApp_be
create a folder in www directory called `todoApp`
## How to install via shell
clone repository `git clone https://github.com/atlkuk/todoApp_be.git` into **todoApp** folder in www directory

move into **todoApp_be** folder and run `composer update`

## DB configuration
open **.env** file and set 
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=todoapp
DB_USERNAME=USERNAME
DB_PASSWORD=PASSWORD
```
save the file

then import **dump.sql** file in your db

## Endpoint
go to http://localhost/todoApp/todoApp_be/public/api/mylists to see API REST working
