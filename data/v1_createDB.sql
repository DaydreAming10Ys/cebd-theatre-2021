-- TODO 1.3 : Créer les tables manquantes et modifier celles ci-dessous
create table V1_LesSpectacles (
    noSpec integer not null,
    nomSpec varchar(50) not null,
    prixBaseSpec decimal (6,2) not null,
    dateRep date not null,
    constraint pk_noSpec primary key (noSpec),
    constraint ck_spec_noSpec check (noSpec > 0),
    constraint ck_spec_prixBaseSpec check (prixBaseSpec >= 0)
);

create table V1_LesRepresentations (
    dateRep date not null,
    promoRep decimal (4,2) not null,
    prixRep decimal (6,2) not null,
    constraint pk_rep_dateRep primary key (dateRep),
    constraint ck_prixRep check (prixRep >= 0),
    constraint ck_rep_promoRep check (promoRep >= 0 and promoRep <=1)
);


create table V1_LesPlaces (
    noPlace integer,
    noRang integer,
    noZone integer not null,
    constraint pk_pl_noP_noR primary key (noZone, noPlace, noRang),
    constraint ck_pl_noP check (noPlace > 0),
    constraint ck_pl_noR check (noRang > 0),
    constraint ck_pl_noZone check (noZone > 0)
);

create table V1_LesZones (
    noZone integer not null,
    catZone varchar (50) not null,
    constraint pk_noZ primary key (noZone),
    constraint ck_pl_noZone check (noZone > 0)
    constraint ck_pl_cat check (catZone in ('orchestre', 'balcon', 'poulailler'))
);

create table V1_Categorie (
    catZone varchar (50) not null,
    tauxZone decimal (4,2) not null,
    constraint ck_pl_tauxZone check (tauxZone >= 0),
    constraint ck_pl_cat check (catZone in ('orchestre', 'balcon', 'poulailler'))

);

create table V1_LesPersonnes (
    typePer varchar (50) not null,
    tauxPer decimal (4,2) not null,
    constraint ck_per_typ check (typePer in ('adherent', 'senior', 'scolaire','etudiant','sans reduction')),
    constraint ck_per_tauxPer check (tauxPer >= 0)
);

create table V1_LesVentes (
    noVente int not null,
    prixVente decimal (6,2) not null,
    constraint ck_noVente check (noVente > 0),
    constraint ck_ven_prixVente check (prixVente >= 0)
);
create table V1_LesDossiers (
    noDos int not null,
    prixDos decimal (6,2) not null,
    constraint ck_noDos check (noDos > 0),
    constraint ck_dos_prixDos check (prixDos >= 0)

);



-- TODO 1.4 : Créer une vue LesRepresentations ajoutant le nombre de places disponible et d'autres possibles attributs calculés.
-- TODO 1.5 : Créer une vue  avec le noDos et le montant total correspondant.
-- TODO 3.3 : Ajouter les éléments nécessaires pour créer le trigger (attention, syntaxe SQLite différent qu'Oracle)