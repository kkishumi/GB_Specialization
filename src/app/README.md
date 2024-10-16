## Информация о проекте
Необходимо организовать систему учета для питомника, в котором живут
домашние и вьючные животные.

## Задание 1 - 5
```
1-2. Использование команды cat в Linux

  820  cat > Pets.txt
  821*  Pets.txt
  822  cat > Pets.txt
  823  cat Pets.txt
  824  cat > PackAnimal.txt
  825  cat  PackAnimal.txt
  826  cat Pets.txt PackAnimal.txt > HumanFriends.txt
  827  ls
  828  cat humanfriends.txt
  829  cat HumanFriends.txt
  830  mv HumanFriends.txt HumanFriends.txt
  831  mkdir animals
  832  mv HumanFriends.txt animals/
  833  ls
  834  cd animals/
  835  ls

3-5. Работа с директориями в Linux

  836  sudo apt-get update
  837  cdc
  838  cd
  839  sudo dpkg i
  840  sudo dpkg i ~/Загрузки/mysql-apt-config
  841  dpkg --help
  842  sudo dpkg i mysql-apt-config_0.8.32-1_all.deb
  843  sudo dpkg -i mysql-apt-config_0.8.32-1_all.deb
  844  sudo dpkg -i ~/Загрузки/mysql-apt-config
  845  sudo dpkg -i ~/Загрузки/mysql-apt-config_0.8.32-1_all.deb
  846  sudo apt update
  847  sudo apt install mysql-server mysql-client
  848  sudo dpkg --remove mysql-client
  849  sudo dpkg --remove mysql-server
  850  sudo dpkg --remove mysql-client
  851  history
  852  history > history.log
```
 [логи](https://github.com/kkishumi/GB_Specialization/blob/main/1-5%20%D0%9E%D0%BF%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B%20%D0%B8%20%D0%B2%D0%B8%D1%80%D1%82%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F%20(Linux).log)

6. Нарисовать [диаграмму](https://github.com/kkishumi/GB_Specialization/blob/main/6.%20%D0%9E%D0%9E%D0%9F%20%D0%94%D0%B8%D0%B0%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0%20%D0%BA%D0%BB%D0%B0%D1%81%D1%81%D0%BE%D0%B2%20%D0%96%D0%B8%D0%B2%D0%BE%D1%82%D0%BD%D1%8B%D0%B5.drawio) 
в которой есть класс родительский класс, домашние животные и вьючные животные,
в составы которых в случае домашних
животных войдут классы: собаки, кошки, хомяки, а в класс вьючные животные
войдут: Лошади, верблюды и ослы).

![диаграмма](https://github.com/kkishumi/GB_Specialization/blob/main/6.%20%D0%9E%D0%9E%D0%9F%20%D0%94%D0%B8%D0%B0%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0%20%D0%BA%D0%BB%D0%B0%D1%81%D1%81%D0%BE%D0%B2%20%D0%96%D0%B8%D0%B2%D0%BE%D1%82%D0%BD%D1%8B%D0%B5.jpg)

9. В подключенном MySQL репозитории создать базу данных “Друзья
человека”
```
CREATE SCHEMA `human_friends` ;
```
8. Создать таблицы с иерархией из диаграммы в БД
```
Первая таблица - animals :

-	CREATE TABLE `human_friends`.`animals` (
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50) NULL,
`birthdate` DATE NULL,
`command` VARCHAR(45) NULL,
`species` VARCHAR(45) NULL,
PRIMARY KEY (`id`));


Затем идут таблицы Pets и Pack animals: 

-	CREATE TABLE `human_friends`.`pets` (
  `animals_id` INT NOT NULL,
  `owner` VARCHAR(45) NULL,
    PRIMARY KEY (`animals_id`));

-	CREATE TABLE `human_friends`.`pack_animals` (
  `animals_id` INT NOT NULL,
  `equids` VARCHAR(45) NULL,
  PRIMARY KEY (`animals_id`));


После создаем таблицы с животными, которые указаны в нашей диаграмме  : 

-	CREATE TABLE `human_friends`.`dogs` (
  `animals_id` INT NOT NULL,
  `breed` VARCHAR(45) NULL,
  PRIMARY KEY (`animals_id`));

-	CREATE TABLE `human_friends`.`cats` (
  `animals_id` INT NOT NULL,
  `coat_color` VARCHAR(45) NULL,
  PRIMARY KEY (`animals_id`));

-	CREATE TABLE `human_friends`.`hamsters` (
  `animals_id` INT NOT NULL,
  `cheek_size` VARCHAR(45) NULL,
  PRIMARY KEY (`animals_id`));

-	CREATE TABLE `human_friends`.`horses` (
  `animals_id` INT NOT NULL,
  `height` VARCHAR(45) NULL,
  PRIMARY KEY (`animals_id`));

-	CREATE TABLE `human_friends`.`camels` (
  `animals_id` INT NOT NULL,
  `number_of_humps` VARCHAR(45) NULL,
  PRIMARY KEY (`animals_id`));

-	CREATE TABLE `human_friends`.`donkeys` (
  `animals_id` INT NOT NULL,
  `dwarf` VARCHAR(45) NULL,
  PRIMARY KEY (`animals_id`));

```
9. Заполнить низкоуровневые таблицы именами(животных), командами
которые они выполняют и датами рождения

```
-	BEGIN;
INSERT INTO (name, birthdate,command, species) VALUES ('...');
INSERT INTO (...) VALUES (LAST_INSERT_ID(), '...');
INSERT INTO (...) VALUES (LAST_INSERT_ID(),'...');
COMMIT;

```

10. Удаляем  записи о верблюдах :
```
DELETE human_friends.camels, human_friends.animals, human_friends.pack_animals 
FROM human_friends.camels, human_friends.animals, human_friends.pack_animals
WHERE human_friends.animals.id = human_friends.camels.animals_id 
AND human_friends.animals.id = human_friends.pack_animals.animals_id
AND human_friends.animals.species = 'camel';
```

11. Объединяем таблицы лошадей и ослов, и создать общую :
```
create table horses_donkeys
Select 
human_friends.animals.id,
human_friends.animals.name,
human_friends.animals.birthdate,
human_friends.animals.command,
human_friends.animals.species,
pack_animals.equids,
horses.height,
donkeys.dwarf
from human_friends.animals
left join pack_animals ON human_friends.animals.id = human_friends.pack_animals.animals_id
left join horses ON human_friends.animals.id = human_friends.horses.animals_id
left join donkeys ON human_friends.animals.id = human_friends.donkeys.animals_id
WHERE  human_friends.animals.species = 'horse'
or human_friends.animals.species = 'donkey'; 
```
12. Создаём новую таблицу для животных в возрасте от 1 до 3 лет и вычислить их возраст с точностью до месяца :
```
-	CREATE TEMPORARY TABLE animals AS 
SELECT *, 'horse' as species FROM horses
UNION SELECT *, 'donkey' AS species FROM donkeys
UNION SELECT *, 'dog' AS species FROM dogs
UNION SELECT *, 'cat' AS species FROM cats
UNION SELECT *, 'hamster' AS species FROM hamsters;

CREATE TABLE young_animals AS
SELECT id, Name, Birthdate, Command, species, TIMESTAMPDIFF(MONTH, Birthdate, CURDATE()) AS Age_in_month
FROM animals WHERE Birthdate BETWEEN ADDDATE(curdate(), INTERVAL -3 YEAR) AND ADDDATE(CURDATE(), INTERVAL -1 YEAR);

```

13. Объединяем все созданные таблицы в одну, сохраняя информацию о принадлежности к исходным таблицам:
```
create table all_animals
Select 
human_friends.animals.id,
human_friends.animals.name,
human_friends.animals.birthdate,
human_friends.animals.command,
human_friends.animals.species,
pack_animals.equids,
pets.owner,
horses.height,
donkeys.dwarf,
cats.coat_color,
dogs.breed,
hamsters.cheek_size,
young_animals.Age_in_month
from human_friends.animals
left join pack_animals ON human_friends.animals.id = human_friends.pack_animals.animals_id
left join pets ON  human_friends.animals.id = human_friends.pets.animals_id
left join young_animals ON human_friends.animals.id = human_friends.young_animals.id
left join horses ON human_friends.animals.id = human_friends.horses.animals_id
left join donkeys ON human_friends.animals.id = human_friends.donkeys.animals_id
left join cats ON human_friends.animals.id = human_friends.cats.animals_id
left join dogs ON human_friends.animals.id = human_friends.dogs.animals_id
left join hamsters ON human_friends.animals.id = human_friends.hamsters.animals_id;

```


 [DUMP datadase](https://github.com/kkishumi/GB_Specialization/blob/main/7.%20%D0%A0%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%D1%81%20mysql.Dump20241013.sql)
