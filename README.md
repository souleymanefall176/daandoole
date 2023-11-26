# Daandoole - Application de Recrutement

## Description du Projet

Daandoole est une application de recrutement qui facilite la connexion entre les recruteurs et les travailleurs. Elle offre des fonctionnalités telles que la publication d'offres d'emploi, la recherche de profils qualifiés, et la communication entre les utilisateurs.

## Technologies Utilisées

- HTML
- CSS
- JavaScript
- PHP
- Tailwind CSS
- XAMPP
- GitHub

## Structure de la Base de Données

### Administrateur

La table `administrateur` enregistre les informations sur les administrateurs de l'application. Chaque administrateur a un identifiant unique (`idAdministrateur`), un nom, un prénom, une adresse e-mail, un mot de passe sécurisé, et un rôle qui peut être SUPER_ADMIN ou ADMIN.

### Commentaire

La table `commentaire` stocke les commentaires des utilisateurs sur les publications. Chaque commentaire est associé à un identifiant unique (`idCommentaire`) et comprend le texte du commentaire, la date de publication, le nombre de likes, et des liens vers d'autres commentaires, publications, et utilisateurs.

### Diplôme

La table `diplome` contient des informations sur les diplômes. Chaque diplôme a un identifiant unique (`idDiplome`) et un titre.

### Éducation

La table `education` enregistre les niveaux d'éducation. Chaque niveau d'éducation a un identifiant unique (`idEducation`) et un titre.

### Etablissement d'Éducation

La table `etablissement_education` stocke des informations sur les établissements éducatifs. Chaque établissement a un identifiant unique (`idEtablissement`) et un nom.

### Faire Éducation

La table `faireeducation` établit une relation entre les travailleurs et leur éducation. Elle enregistre le niveau, la spécialisation, les années d'études, et l'établissement associé. Chaque enregistrement a un identifiant unique (`idFaireEducation`).

### Faire Profession

La table `faireprofession` établit une relation entre les travailleurs, les professions et les professionnels. Elle stocke les années d'expérience dans une profession donnée. Chaque enregistrement a un identifiant unique (`idFaireProfession`).

### Likes

La table `likes` enregistre les likes attribués aux commentaires et publications. Chaque like a un identifiant unique (`idLike`), le nombre de likes, la date, et des liens vers les commentaires, utilisateurs, et publications associées.

### Obtenir Diplôme

La table `obtenirdiplome` établit une relation entre les travailleurs et les diplômes qu'ils ont obtenus. Chaque enregistrement a un identifiant unique (`idObtentionDiplome`), la date d'obtention du diplôme, et des liens vers le travailleur et le diplôme associés.

### Partage

La table `partage` enregistre les partages de publications. Chaque partage a un identifiant unique (`idPartage`), la date du partage, et des liens vers l'utilisateur et la publication associés.

### Profession

La table `profession` stocke les professions disponibles. Chaque profession a un identifiant unique (`idProfession`) et un nom.

### Professionnel

La table `professionnel` enregistre les informations sur les professionnels. Chaque professionnel a un identifiant unique (`idProfessionnel`), un poste professionnel, et le nom de l'entreprise associée.

### Publication

La table `publication` stocke les publications de contenu. Chaque publication a un identifiant unique (`idPublication`), une date de publication, une URL de média (image ou vidéo), une description texte, et des liens vers les likes, commentaires, partages, et utilisateurs associés.

### Qualification

La table `qualification` contient des informations sur les qualifications des travailleurs. Chaque qualification a un identifiant unique (`idQualification`), un titre, un nombre d'années d'expérience, et un niveau (débutant, intermédiaire, avancé).

### Réalisation

La table `realisation` enregistre les réalisations professionnelles des travailleurs. Chaque réalisation a un identifiant unique (`idRealisation`), un titre, une description, une année d'accomplissement, et des liens vers le travailleur associé.

### Recruteur

La table `recruteur` stocke les informations sur les recruteurs. Chaque recruteur a un identifiant unique (`idRecruteur`), le nom de l'entreprise, le secteur d'activité, la ville, le pays, le numéro de téléphone, l'e-mail, le profil LinkedIn, la description de l'entreprise, le site web, le nombre d'étoiles attribuées, et des liens vers les amis recruteurs et l'utilisateur associés.

### Relations Amis

La table `relationsamis` enregistre les relations d'amitié entre les utilisateurs. Chaque relation d'amitié a un identifiant unique (`idRelationAmis`), et des liens vers deux utilisateurs associés.

### Travailleur

La table `travailleur` contient des informations détaillées sur les travailleurs. Chaque travailleur a un identifiant unique (`idTravailleur`), la date de naissance, le lieu de naissance, la photo de profil, la ville, le pays, le numéro de téléphone, l'e-mail, le profil LinkedIn, la description professionnelle, le portefolio, le nombre d'étoiles attribuées, la qualification, l'état d'emploi (sous contrat, sans contrat), et des liens vers les utilisateurs et les qualifications associés.

### Travailleur Qualification

La table `travailleur_qualification` établit une relation entre les travailleurs et leurs qualifications. Chaque enregistrement a un identifiant unique (`idTravailleurQualification`), et des liens vers le travailleur et la qualification associés.

### Utilisateurs

La table `users` enregistre les informations de base sur tous les utilisateurs de l'application. Chaque utilisateur a un identifiant unique (`idUser`), un nom, un prénom, la date de naissance, l'e-mail, un mot de passe sécurisé, le type d'utilisateur (recruteur, travailleur), une photo de profil, et des liens vers le recruteur ou le travailleur associé.

## Configuration du Projet Localement

1. Clonez ce dépôt sur votre machine locale.
2. Configurez votre serveur local à l'aide de XAMPP.
3. Importez la base de données fournie dans phpMyAdmin.
4. Modifiez les fichiers de configuration pour correspondre à votre environnement local.

## Fonctionnalités de l'Application

### Administrateur

- Créer des comptes administrateurs.
- Désactiver des comptes utilisateurs.
- Masquer des publications.
- Recevoir des signalements.

### Recruteur

- Publier des offres d'emploi.
- Rechercher des travailleurs qualifiés.
- Envoyer/recevoir des messages.
- Gérer le profil de l'entreprise.

### Travailleur

- Publier le CV.
- Rechercher des offres d'emploi.
- Interagir avec d'autres utilisateurs.

## Contributions

Les contributions sont les bienvenues ! N'hésitez pas à ouvrir une issue ou à soumettre une pull request.
