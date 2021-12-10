# cebd-theatre-2021

## Members

- Yubing ZHU 
- Guizhe ZHANG 

## Question 1

V0_LesRepresentations (PK: noSpec) 
noSpec --> nomSpec,prixBaseSpec,dateRep,promoRep
dateRep --> promoRep,prixRep

1FN:oui,type atomiques
2FN:oui,dépend une seul clé noSpec
3FN:non car noSpec--> dateRep-->promoRep,prixRep

V0_LesPlaces  (PK: noPlace)  2NF
noPlace --> noRang,noZone    
noZone --> catZone
catZone--> tauxZone

1FN:oui,type atomiques
2FN:oui,dépend une seul clé noPlace
3FN:non,car noPlace --> noZone --> catZOne --> tauxZone

Après avoir décomposé:

LesSpectacles(noSpec,nomSpec,prixBaseSpec,dateRep) BCNF

LesRepresentations(dateRep,promoRep,prixRep) BCNF

LesPlaces(noPlace,noRang,noZone) BCNF

LesZones(noZone,catZone,tauxZone) BCNF

## Question 3

LesSpectacles(noSpec,nomSpec,prixBaseSpec,dateRep)

LesRepresentations(dataRep,promoRep,prixRep)

LesPlaces(noPlace,noRang,noZone)

LesZones(noZone,noPlace)

Categorie(catZone,tauxZone)

LesPersonnes(typePer,tauxPer)

LesVentes(noVent,prixVente,dateRep,noPlace,typePer)

LesDossiers(noDossier,prixDossier)

domaine (dateRep) = date(heure) /* par ex. 24/11/2007 20H */
domaine (catZone) = {’orchestre’, ’balcon’, ’poulailler’}
domaine(typeP)={'adhérents', 'étudiants', 'scolaires', 'séniors'}
domaine (nomSpec) = chaînes de caractères
domaine (noZone) = domaine (noPlace) = domaine (noRang) = domaine (noSpec) = entier > 0
domaine (prixBaseSpec) = domaine (prixRep) = réels > 0
domaine (promoRep) = domaine (tauxZone) = domaine (tauxP) = réels dans l’intervalle [0, 1]

