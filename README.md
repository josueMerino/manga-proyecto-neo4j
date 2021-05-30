# Manga Neo4j Ruby

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
