-- Active: 1681304732736@@127.0.0.1@3306@the_district

--Ecrire des requêtes d'interrogation de la base de données
 --Afficher la liste des commandes ( la liste doit faire apparaitre la date, les informations du client, le plat et le prix )
SELECT `a`.`id`,`a`.`id_plat`,`a`.`date_commande` ,`a`.`nom_client`,`a`.`telephone_client`,`a`.`email_client`,`a`.`adresse_client`,`p`.`prix` FROM `commande` AS `a` RIGHT JOIN `plat` as `p` ON p.id=a.id_plat;

 --Afficher la liste des plats en spécifiant la catégorie
SELECT `p`.`id`,`p`.`id_categorie`,`p`.`libelle`,`ca`.`libelle` FROM `plat` AS `p` JOIN `categorie` AS `ca` ON ca.id=p.id_categorie;

 --Afficher les catégories et le nombre de plats actifs dans chaque catégorie
 SELECT  `p`.`id`,`ca`.`id`,`ca`.`libelle`, `p`.`active`   FROM `plat` AS `p` JOIN `categorie` AS `ca` ON ca.id=p.id_categorie WHERE p.active='Yes'; 

 --Liste des plats les plus vendus par ordre décroissant
SELECT `co`.`id`,`co`.`id_plat`,`p`.`id`,`p`.`libelle`,`co`.`total` FROM `commande` AS `co`  JOIN `plat` as `p` ON p.id=co.id_plat ORDER BY `co`.`total` DESC;

 --Le plat le plus rémunérateur


 --Liste des clients et le chiffre d'affaire généré par client (par ordre décroissant)
SELECT `co`.`id`,`co`.`id_plat`,`co`.`date_commande` ,`co`.`nom_client`,`co`.`telephone_client`,`co`.`email_client`,`co`.`adresse_client`,`co`.`total` FROM `commande` AS `co`  JOIN `plat` as `p` ON p.id=co.id_plat ORDER BY `co`.`total` DESC;





--Ecrire des requêtes de modification de la base de données
 --Ecrivez une requête permettant de supprimer les plats non actif de la base de données
DELETE FROM `plat` WHERE `active`='No';

 --Ecrivez une requête permettant de supprimer les commandes avec le statut livré
DELETE FROM `commande` WHERE `etat`='Livrée';

 --Ecrivez un script sql permettant d'ajouter une nouvelle catégorie et un plat dans cette nouvelle catégorie.
INSERT INTO `categorie`(`id`, `libelle`, `image`, `active`) VALUES ('15','Wrap','wrap_cat.jpg','No');

INSERT INTO `plat`(`id`, `libelle`, `description`, `prix`, `image`, `id_categorie`, `active`) VALUES ('18','Wrap','wrap test.txt','8.00','wrap_cat.jpg','15','No');

 --Ecrivez une requête permettant d'augmenter de 10% le prix des plats de la catégorie 'Pizza'

