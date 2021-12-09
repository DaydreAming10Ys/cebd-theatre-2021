-- TODO 1.3 : Inventer des données dans les nouvelles tables (tout ce qui concerne les tickets). Par contre, utiliser une requête avec insert into qui transfère les données des tables de la V0 à celles de cette nouvelle version.


insert into V1_Categorie(catZone,tauxZone) values('orchestre',1);
insert into V1_Categorie(catZone,tauxZone) values('balcon',1);
insert into V1_Categorie(catZone,tauxZone) values('poulailler',1.5);

insert into V1_LesSpectacles(noSpec,nomSpec,prixBaseSpec,dateRep)  values (1,'toto',100.00,'24/12/2019 17:00');
insert into V1_LesSpectacles(noSpec,nomSpec,prixBaseSpec,dateRep)  values (2,'titi',120.00,'25/12/2019 17:00');
insert into V1_LesSpectacles(noSpec,nomSpec,prixBaseSpec,dateRep)  values (3,'tata',140.00,'26/12/2019 17:00');

insert into V1_LesPlaces(noPlace, noRang, noZone) values (1, 2, 3);
insert into V1_LesPlaces(noPlace, noRang, noZone) values (21, 33, 12);
insert into V1_LesPlaces(noPlace, noRang, noZone) values (32, 23, 22);

insert into V1_LesZones(noZone,catZone) values(1,'orchestre');
insert into V1_LesZones(noZone,catZone) values(2,'balcon');
insert into V1_LesZones(noZone,catZone) values(3,'poulailler');

insert into V1_LesVentes(noVente,prixVente) values (1,120.00);
insert into V1_LesVentes(noVente,prixVente) values (2,120.00);
insert into V1_LesVentes(noVente,prixVente) values (3,120.00);

insert into V1_LesDossiers(noDos,prixDos) values (1,240.00);
insert into V1_LesDossiers(noDos,prixDos) values (2,360.00);
insert into V1_LesDossiers(noDos,prixDos) values (3,240.00);

insert into V1_LesPersonnes(typePer,tauxPer) values ('adherent',0.8);
insert into V1_LesPersonnes(typePer,tauxPer) values ('senior',0.7);
insert into V1_LesPersonnes(typePer,tauxPer) values ('scolaire',0.7);

insert into V1_LesRepresentations(dateRep,promoRep,prixRep) values ('24/12/2019 17:00',0.9,100.00);
insert into V1_LesRepresentations(dateRep,promoRep,prixRep) values ('25/12/2019 17:00',0.9,100.00);
insert into V1_LesRepresentations(dateRep,promoRep,prixRep) values ('26/12/2019 17:00',0.9,100.00);