# Manga Neo4j Ruby

## De forma nativa
Para comenzar necesitas tener instalado Ruby y Ruby on Rails.

Descarga [Ruby](https://www.ruby-lang.org/en/downloads/ "Ruby") (Debes instalar la versión 2.7)

Descarga [Ruby on Rails](https://rails.github.io/download/ "Ruby on Rails") (Debes tener Ruby instalado primero)

Una vez instalados debes de instalar via consola los siguientes paquetes:

 `gem install bundler`

 `gem install rack`

`gem install neo4j`

`gem install rake`

------------

Una vez instalados debes de clonar el proyecto y dirigirte hacia la carpeta raíz de la misma, en ella debes correr el comando:

 `bundle install`
 `yarn install`

Luego de esto, correr el siguiente comando para hacer las migraciones (eliminar el archivo schema.yml está ubicado en la carpeta db/neo4j)

`rake neo4j:migrate`

En cualquier caso que no funcione notificarme.

## Con docker

Ingresar los siguientes comandos:


`docker-compose build`  **Construye la aplicación**

`docker-compose up` **Correr la aplicación**

Luego de la instalación dependiendo de tu sistema operativo, hacer los siguiente:
#### Para Linux:

`./run_migrations.sh`

En caso de error en Linux:

`sudo chmod 775 ./run_migrations.sh`

Luego correr el comando anterior

#### Para Windows:

`docker exec -it 'manga_app' rake neo4j:migrate --trace`


`docker exec -it 'manga_app' rake webpacker:install`

