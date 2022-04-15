create database film_db;
use film_db;

SET DEFAULT_STORAGE_ENGINE=INNODB;
SET FOREIGN_KEY_CHECKS = 1;
set sql_safe_updates =0;

create table IF NOT EXISTS films (
  id  int PRIMARY KEY AUTO_INCREMENT  NOT NULL unique,
  title varchar(255) NOT NULL,
  director varchar(255),
  year_release int,
  country varchar(50),
  photo varchar(255),
  child bit not null default 0,
  summary text
 );
 
 INSERT INTO films (title, director, year_release, country, photo, child, summary)
VALUES ('The Lost World', 'Steven Spielberg', 1997, 'USA', 'https://static.wikia.nocookie.net/jurassicpark/images/c/cd/TLW-MoviePoster.jpg/revision/latest/scale-to-width-down/333?cb=20090627022910',1, "Grâce à l'ADN fossilisé dans l'ambre, John Hammond donne vie à plusieurs espèces de dinosaures et crée Jurassic Park, un parc à thème sur une île du Costa Rica. Mais ce qui ressemblait à un rêve devient rapidement un cauchemar."),
('Pirates of the Caribbean: The Curse of the Black Pearl', 'Gore Verbinski', 2003, 'USA', 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5874/5874315_sa.jpg;maxHeight=640;maxWidth=550',0, "Le forgeron Will Turner fait équipe avec le pirate excentrique Capitaine Jack Sparrow pour sauver la fille du gouverneur dont il est amoureux des anciens alliés pirates de Jack, à présent devenus morts-vivants."),
('Harry Potter and Goblet of Fire', 'Mike Newell', 2005, 'UK', 'https://static.wikia.nocookie.net/harrypotter/images/b/be/GOF_soundtrack.jpg/revision/latest/scale-to-width-down/350?cb=20100606074949&path-prefix=fr',1,"Le jeune sorcier se retrouve en compétition dans un tournoi dangereux entre écoles de sorcellerie rivales, mais il est distrait par ses cauchemars récurrents.");