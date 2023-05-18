CREATE SCHEMA `dbfilmes` DEFAULT CHARACTER SET utf8;

use dbfilmes;
CREATE TABLE users(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150),
   ultimonome VARCHAR(150),
    email VARCHAR(100),
    password VARCHAR(200),
    imagem VARCHAR(200),
    bio TEXT,
   token VARCHAR(200)
);

use dbfilmes;
CREATE TABLE categoria(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    genero VARCHAR(200)
);

use dbfilmes;
CREATE TABLE filme(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150),
   descricao TEXT,
    capa VARCHAR(200),
   classificacao VARCHAR(200),
  idcategoria INT UNSIGNED,
  iduser INT UNSIGNED,
  FOREIGN KEY(idcategoria) references categoria(id),
  FOREIGN KEY(iduser) references users(id)
);

use dbfilmes;
CREATE TABLE reviews(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nota INT,
   review TEXT,
   iduser INT UNSIGNED,
   idfilme INT UNSIGNED,
  FOREIGN KEY(iduser) references users(id),
 FOREIGN KEY(idfilme) references filme(id)
);