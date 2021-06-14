class MainController < ApplicationController
  def index
  end
  
  def upload
        ActiveGraph::Base.query('
                CREATE 
                (:Mangaka{
                                neo_id: 1, 
                                name: "Makoto Yukimura", 
                                image:"https://otakuteca.com/images/people/5ff89f9437bda.jpg"
                        }
                )
        -[:CREATED_IN]->
        (:Comic{
                neo_id: 1,
                is_active: 1,
                generos:"Ficción de aventuras, Épico, Ficción histórica",
                sinopsis:"En una fría región de Islandia, Thorfinn, hijo de Thors, conocido como el Troll de Jom, vive junto a su padre, su madre y su hermana mayor. Thorfinn sueña con ser un gran guerrero, pero descubrirá lo que ello supone cuando su padre sea llamado a filas por el rey de Dinamarca para participar en la conquista de Inglaterra y este sea asesinado por el ambicioso mercenario Askeladd. Desde ese momento, Thorfinn vivirá solo para la venganza, pero para ganarse el derecho a retar al asesino de su padre a un duelo a muerte se verá obligado a pasar a formar parte de la misma tropa de Askeladd y realizar hazañas en su nombre.", 
                image: "https://somoskudasai.com/wp-content/uploads/2020/12/iLFHJ0q1_2x.jpg",
                name:"Vinland Saga"})
        -[:PUBLISHED_IN {publish_date: date("2019-07-07")}]->
        (:Magazine{neo_id: 1, name:"Afternoon"})

CREATE (:Mangaka{neo_id: 2,name: "Eiichiro Oda", image:"https://otakuteca.com/images/people/5b34c8a4bf97e.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 2,
                is_active: 1,
                generos:"Acción, Aventura, Fantasía Comedia",
                sinopsis:"Hace veintidós años, el legendario pirata, Gold Roger fue ejecutado. Sus últimas palabras fueron que su tesoro conocido como \"One Piece\" estaba escondido en algún lugar de la Grand Line. Esto dio inicio a la Era de los Piratas. Ahora, veinte dos años después, Monkey D. Luffy de diecisiete años desea encontrar el One Piece y convertirse en el Rey de los Piratas.", 
                image:"https://otakuteca.com/images/books/cover/5bc7cb37a8df5.jpg" ,
                name:"One Piece"})
        -[:PUBLISHED_IN {publish_date: date("1997-09-27")}]->
        (:Magazine{neo_id: 2,name:"Weekly Shōnen Jump"})

CREATE (:Mangaka{neo_id: 3,name: "Kōhei Horikoshi", image:"https://otakuteca.com/images/people/5d6c3bc322d2c.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 3,
                is_active: 1,
                generos: "Acción,  Comedia,  Vida Escolar,  Superpoderes,  Ciencia Ficción,  Supernatural,  Artes Marciales",
                sinopsis:"La historia está ambientada en la época actual, excepto que las personas con poderes especiales se han vuelto comunes en todo el mundo. Un chico llamado Izuku Midoriya no tiene poderes, pero sueña tenerlos.", 
                image:"https://otakuteca.com/images/books/cover/5bc8e164a3ea4.jpg" ,
                name:"Boku no Hero Academia"})
        -[:PUBLISHED_IN {publish_date: date("2014-07-07")}]->
        (:Magazine{neo_id: 3,name:"Weekly Shōnen Jump"})

CREATE (:Mangaka{neo_id: 4,name: "Inio Asano", image:"https://otakuteca.com/images/people/5d6dfa6e8f590.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 4,
                is_active: 0,
                generos:"Comedia, Drama, Recuentos de la vida, Psicológico, Romance, Tragedia",
                sinopsis:"Punpun Punyama es un niño ordinario creciendo en Japón, cuya edad de la inocencia ha llegado a su fin después de que su padre es arrestado por abuso conyugal y poner a su madre en el hospital. Con su tío cuidando de él, Punpun crece hasta la edad adulta frente a una serie de eventos que cambian, para bien o para mal, obligándolo a contemplar lo que significa ser adulto.", 
                image:"https://otakuteca.com/images/books/cover/5e3b938e9cf92.jpg" ,
                name:"Oyasumi Punpun"})
        -[:PUBLISHED_IN {publish_date:date("2007-03-15")}]->
        (:Magazine{neo_id: 4,name:"Big Comic Spirits"})

CREATE (:Mangaka{neo_id: 5,name: "Kaito"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 5,
                is_active: 0,
                generos:"Drama, Romance, Recuentos de la vida, Vida Escolar",
                sinopsis:"Esta historia de \"amor puro y juvenil\" empieza cuando tres estudiantes en su tercer y último año de preparatoria se reúnen en un momento de preocupación sobre sus futuros. Días dulces, dolorosos y desgarradores estarán esperando por ellos.", 
                image:"https://otakuteca.com/images/books/cover/5f6a30f82c7e0.jpg",
                name:"Ao no Flag"})
        -[:PUBLISHED_IN {publish_date:date("2007-02-01")}]->
        (:Magazine{neo_id: 5,name:"Shounen Jump+"})

CREATE (:Mangaka{neo_id: 6,name: "Hajime Isayama", image:"https://otakuteca.com/images/people/5b2178b225df0.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 6,
                is_active: 0,
                generos: "Acción,  Supernatural,  Horror,  Misterio,  Tragedia,  Apocaliptico,  Superpoderes",
                sinopsis:"La historia gira en torno a Eren Jaeger, su hermana adoptiva Mikasa Ackerman y su amigo Armin Arlert. En este mundo, la población humana vive dentro de ciudades rodeadas de enormes muros para protegerse de la aparición de seres gigantescos que devoran personas, los titanes. Un día, el muro que protegía a la humanidad es atacado por un titán que sobrepaso a la muralla y el resto de los titanes logran invadir la ciudad. Tras el caos ocasionado, Eren pierde a su madre, así que una vez están a salvo, Eren, Mikasa y Armin deciden unirse al ejército y combatir a los titanes por sí mismos, en ese momento es donde Eren jura vengarse de todos los titanes, exterminándolos.", 
                image:"https://otakuteca.com/images/books/cover/5d79a4c7e7f1f.jpg" ,
                name:"Shingeki no Kyojin"})
        -[:PUBLISHED_IN {publish_date: date("2009-09-09")}]->
        (:Magazine{neo_id: 6,name:"Bessatsu Shonen Magazine"})

CREATE (:Mangaka{neo_id: 7,name: "Hirohiko Araki", image:"https://otakuteca.com/images/people/5e92d6ba3e1ea.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 7,
                is_active: 1,
                generos: "Acción,  Aventura,  Supernatural,  Tragedia,  Historia,  Vampiros,  Superpoderes",
                sinopsis:"Todo comienza en el seno de la familia Joestar, una acaudalada familia noble inglesa que recibe como nuevo miembro a Dio Brando, un chico de los bajos fondos de Londres. El hijo adoptivo de los Joestar intentará por todos los medios destruir la moral de su hermano Jonathan, el legítimo heredero, para quedarse con su herencia y vivir rodeado de lujos. No obstante, sus vidas darán un vuelco por el poder de la máscara de piedra y ambos se verán sumidos en una lucha entre vampiros sedientos de sangre y protectores de la humanidad.", 
                image: "https://otakuteca.com/images/books/cover/5b8cf2af5b186.jpg",
                name:"Jojo\'s Bizarre Adventure"})
        -[:PUBLISHED_IN {publish_date: date("1986-09-02")}]->
        (:Magazine{neo_id: 7,name:"Weekly Shōnen Jump"})

CREATE (:Mangaka{neo_id: 8,name: "Shinichi Sakamoto", image:"https://otakuteca.com/images/people/5b691012e8dbf.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 8,
                is_active: 0,
                generos: "Drama, Psicológico, Romance, Tragedia, Historia",
                sinopsis:"En el siglo XVIII, buscando \"libertad e igualdad\", comenzó el evento que se convirtió en el punto de partida de la sociedad francesa moderna, la Revolución Francesa. Había un protagonista más que vivía en la oscuridad, Charles-Henri Sanson. Era el jefe de familia de cuarta generación de la familia Sanson y el verdugo de París.",
                image: "https://otakuteca.com/images/books/cover/5ff001e179503.jpg",
                name:"Innocent"})
        -[:PUBLISHED_IN {publish_date: date("1986-09-02")}]->
        (:Magazine{neo_id: 8,name:"Shuukan Young Jump"})

CREATE (:Mangaka{neo_id: 9,name: "Chika Umino", image:"https://otakuteca.com/images/people/5f6f5da92d70d.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 9,
                is_active: 1,
                generos: "Drama, Recuentos de la vida, Deporte, Comedia, Romance",
                sinopsis:"El protagonista es Rei, un jugador de shogi de 17 años de edad. Vive solo, no tiene una familia, y no va a la escuela ni tiene casi amigos. Entre sus conocidos está una familia, que consta de una mujer joven, Akari, y dos chicas jóvenes, Momo y Hinata, y que también a mantienen a un numeroso número de gatos.", 
                image:"https://otakuteca.com/images/books/cover/5e39aa234ef8d.jpg" ,
                name:"3-gatsu no Lion"})
        -[:PUBLISHED_IN {publish_date: date("2007-07-13")}]->
        (:Magazine{neo_id: 9,name:"Young Animal"})

CREATE (:Mangaka{neo_id: 10,name: "Gege Akutami", image:"https://otakuteca.com/images/people/604673b6e6e3a.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 10,
                is_active: 1,
                generos: "Acción, Supernatural, Drama, Horror, Vida Escolar, Demonios",
                sinopsis:"Yuji Itadori es un estudiante con una increíble fuerza física pero no tiene ningún interés en los deportes y prefiere ser parte del club de ocultismo. Un día, espíritu maligno real aparece en la escuela y cambia la vida de Yuji para siempre.", 
                image: "https://otakuteca.com/images/books/cover/5ea1f703b755f.jpg",
                name:"Jujutsu Kaisen"})
        -[:PUBLISHED_IN {publish_date: date("2018-03-05")}]->
        (:Magazine{neo_id: 10,name:"Weekly Shōnen Jump"})

CREATE (:Mangaka{neo_id: 11,name: "Yoshitoki Oima", image:"https://otakuteca.com/images/people/5c6c2fd990341.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 11,
                is_active: 1,
                generos: "Aventura, Drama, Fantasia, Supernatural, Tragedia, Psicológico",
                sinopsis: "Una criatura inmortal es enviada a la Tierra, donde conoce a un chico que pasa los días solo, en medio de la tundra helada. Esta entidad puede robar la apariencia de cualquier otro ser moribundo, siempre y cuando su “estimulo” sea más fuerte que el anterior. ¿Qué tipo de experiencias y aventuras le esperan a un ser cuya historia se escribirá durante toda la eternidad?", 
                image: "https://otakuteca.com/images/books/cover/6091a063545ca.jpg",
                name:"Fumetsu no Anata E"})
        -[:PUBLISHED_IN{publish_date: date("2016-11-09")}]->
        (:Magazine{neo_id: 11,name:"Weekly Shōnen Magazine"})

CREATE (oneComic:Mangaka{neo_id: 12,name: "One", image:"https://otakuteca.com/images/people/5cdb2c8f7972c.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 12,
                is_active: 0,
                generos: "Acción,  Comedia,  Recuentos de la vida,  Supernatural,  Psicológico,  Vida Escolar,  Aventura",
                sinopsis:"Kageyama Shigeo (también conocido como \"Mob\") Está en octavo grado con habilidades psíquicas. Puede doblar cucharas y levantar objetos con su mente desde una edad temprana, pero poco a poco comenzó a retener el uso de sus habilidades en público debido a la atención negativa siguió recibiendo. Ahora, lo único que quiere es llegar a ser amigos con una chica de su clase, Tsubomi. Con su \"mentor\" psíquica (que no tiene poderes psíquicos), continúa su vida de cada día, tratando de darse cuenta de su propósito en la vida.", 
                image: "https://otakuteca.com/images/books/cover/5c8c5fac3f963.jpg",
                name:"Mob Psycho 100"})
        -[:PUBLISHED_IN {publish_date: date("2012-04-18")}]->
        (:Magazine{neo_id: 12,name:"Ura Sunday"})

MERGE (oneComic)-[:CREATED_IN]-> (:Comic{neo_id: 13,
                is_active: 1,
                generos: "Acción,  Comedia,  Supernatural,  Ciencia Ficción,  Superpoderes,  Artes Marciales",
                sinopsis:"¡Sigue la vida de un héroe promedio que gana todas sus peleas con un solo puño! Esto le causa un montón de frustración, ahora ya no siente la adrenalina y la emoción de una dura pelea. Tal vez ese riguroso entrenamiento para volverse fuerte no valió la pena. Después de todo, ¿qué tiene de bueno tener un poder tan aplastante?", 
                image:"https://otakuteca.com/images/books/cover/5bc7cc1d2cf73.jpg" ,
                name:"One Punch Man"})
            -[:PUBLISHED_IN {publish_date: date("2012-06-14")}]->  
            (:Magazine{neo_id: 13,name:"Tonari no Young Jump (Shueisha)"})

CREATE (:Mangaka{neo_id: 13,name: "Sui Ishida", image:"https://otakuteca.com/images/people/60467530e5fcd.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 14,
                is_active: 0,
                generos: "Acción,  Supernatural,  Thriller,  Gore,  Policiaco,  Psicológico,  Tragedia",
                sinopsis:"Al acecho en las sombras de Tokio hay seres atemorizantes conocidos como \"ghouls\", que satisfacen su hambre alimentándose de humanos una vez que cae la noche. Se ha establecido una organización conocida como la Comisión de Contramedidas Ghoul (CCG) en respuesta a los constantes ataques a los ciudadanos y como un medio para purgar a estas criaturas. Sin embargo, el problema radica en identificar a los ghouls, ya que se disfrazan de humanos y viven entre las masas para que sea más fácil cazar presas. ", 
                image: "https://otakuteca.com/images/books/cover/604aa61aceebc.jpg",
                name:"Tokyo Ghoul"})
        -[:PUBLISHED_IN {publish_date: date("2011-09-18")}]->
        (:Magazine{neo_id: 14,name:"Weekly Young Jump"})


CREATE (:Mangaka{neo_id: 14,name: "Akihito Tukushi", image:"https://otakuteca.com/images/people/5c0ff671874e0.jpg"})
        -[:CREATED_IN]->
        (:Comic{neo_id: 15,
                is_active: 1,
                generos: "Acción,  Aventura,  Psicológico,  Supernatural,  Ciencia Ficción,  Fantasia,  Magia,  Misterio,  Supervivencia",
                sinopsis:"El enorme sistema de cuevas, conocido como El Abismo, es el último lugar inexplorado en el mundo. Nadie sabe que tan profundo es este agujero titánico, habitado por extrañas y maravillosas criaturas y lleno de misterio y reliquias antiguas de propósito desconocido para la humanidad. Generaciones de valientes aventureros han sido atraídos a las profundidades cripticas del Abismo. Con el paso del tiempo estos exploradores son conocidos como \"Exploradores de las Profundidades\".", 
                image: "https://otakuteca.com/images/books/cover/5d19c22310e6a.jpg",
                name:"Made in Abyss"})
        -[:PUBLISHED_IN {publish_date: date("2012-10-01")}]->
        (:Magazine{neo_id: 15,name:"Web Comic Gamma"})')
         redirect_to root_url 
  end

  def deleteAll
    ActiveGraph::Base.query('MATCH (n:Magazine) DETACH DELETE n')
    ActiveGraph::Base.query('MATCH (n:Mangaka) DETACH DELETE n')
    ActiveGraph::Base.query('MATCH (n:Comic) DETACH DELETE n')
     redirect_to root_url
  end
end
