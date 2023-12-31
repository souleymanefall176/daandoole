-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 02 déc. 2023 à 04:16
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `daandoole`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `idCommentaire` int(11) NOT NULL,
  `textCommentaire` text NOT NULL,
  `dateCommentaire` datetime NOT NULL,
  `idLikesF` int(11) NOT NULL,
  `idCommentaireParentF` int(11) NOT NULL,
  `idPublicationF` int(11) NOT NULL,
  `idUserF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `diplome`
--

CREATE TABLE `diplome` (
  `idDiplome` int(11) NOT NULL,
  `titreDiplome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `education`
--

CREATE TABLE `education` (
  `idEducation` int(11) NOT NULL,
  `titreEducation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `faireeducation`
--

CREATE TABLE `faireeducation` (
  `idFaireEducation` int(11) NOT NULL,
  `nomEtablissement` varchar(50) NOT NULL,
  `niveauFaireEducation` varchar(50) NOT NULL,
  `specialisationFaireEducation` varchar(100) NOT NULL,
  `anneeDebutFaireEducation` year(4) NOT NULL,
  `anneeFinFaireEducation` year(4) NOT NULL,
  `idTravailleurF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `faireprofession`
--

CREATE TABLE `faireprofession` (
  `idFaireProfession` int(11) NOT NULL,
  `anneeDebutProfession` year(4) NOT NULL,
  `anneeFinProfession` year(4) NOT NULL,
  `nomEntreprise` varchar(50) NOT NULL,
  `idTravailleurF` int(11) NOT NULL,
  `idProfessionF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `idLike` int(11) NOT NULL,
  `nbrLike` int(11) NOT NULL DEFAULT 0,
  `dateLike` datetime NOT NULL,
  `idPublicationF` int(11) NOT NULL,
  `idCommentaireF` int(11) NOT NULL,
  `idUsersF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `obtenirdiplome`
--

CREATE TABLE `obtenirdiplome` (
  `idObtentionDiplome` int(11) NOT NULL,
  `dateDiplome` year(4) NOT NULL,
  `idTravailleurF` int(11) NOT NULL,
  `idDiplomeF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `partage`
--

CREATE TABLE `partage` (
  `idPartage` int(11) NOT NULL,
  `datePartage` datetime NOT NULL,
  `idPublicationF` int(11) NOT NULL,
  `idUserF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `publication`
--

CREATE TABLE `publication` (
  `idPublication` int(11) NOT NULL,
  `datePublication` datetime NOT NULL,
  `urlMediaPublication` text NOT NULL,
  `descriptionPublication` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `realisation`
--

CREATE TABLE `realisation` (
  `idRealisation` int(11) NOT NULL,
  `titreRealisation` varchar(100) NOT NULL,
  `descriptionRealisation` text NOT NULL,
  `anneeRealisation` year(4) NOT NULL,
  `idTravailleurF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `recruteur`
--

CREATE TABLE `recruteur` (
  `idRecruteur` int(11) NOT NULL,
  `nomEntreprise` varchar(100) NOT NULL,
  `dateDebutEntreprise` date NOT NULL,
  `idUsersF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `relationsamis`
--

CREATE TABLE `relationsamis` (
  `idRelationAmis` int(11) NOT NULL,
  `idUtilisateur1F` int(11) NOT NULL,
  `idUtilisateur2F` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `travailleur`
--

CREATE TABLE `travailleur` (
  `idTravailleur` int(11) NOT NULL,
  `qualificationTravailleur` varchar(100) NOT NULL,
  `etatTravailleur` enum('SOUS_CONTRAT','SANS_CONTRAT','','') NOT NULL,
  `idUsersF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `nomUser` varchar(20) NOT NULL,
  `prenomUser` varchar(30) NOT NULL,
  `dateNaissanceUser` date NOT NULL,
  `lieuNaissanceUser` text NOT NULL,
  `typeUser` enum('RECRUTEUR','TRAVAILLEUR','ADMIN','SUPER_ADMIN') NOT NULL,
  `emailUser` varchar(100) NOT NULL,
  `photoProfilUser` text NOT NULL,
  `passwordUser` varchar(100) NOT NULL,
  `statutUser` tinyint(1) NOT NULL DEFAULT 0,
  `villeUser` varchar(50) NOT NULL,
  `sitewebUser` text NOT NULL,
  `telephoneUser` varchar(9) NOT NULL,
  `linkedinUser` text NOT NULL,
  `nombreEtoilesUser` decimal(10,0) NOT NULL,
  `descriptionUser` text NOT NULL,
  `idAmisF` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idUser`, `nomUser`, `prenomUser`, `dateNaissanceUser`, `lieuNaissanceUser`, `typeUser`, `emailUser`, `photoProfilUser`, `passwordUser`, `statutUser`, `villeUser`, `sitewebUser`, `telephoneUser`, `linkedinUser`, `nombreEtoilesUser`, `descriptionUser`, `idAmisF`) VALUES
(1, 'FALL', 'SOULEYMANE', '2023-09-16', 'PIKINE', 'ADMIN', 'souleymanefall176@gmail.com', '', 'Passer123@', 0, 'Dakar', '', '777151061', '', 0, '', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`idCommentaire`),
  ADD KEY `fk_commentaire_commentaire` (`idCommentaireParentF`),
  ADD KEY `fk_commentaire_user` (`idUserF`),
  ADD KEY `fk_commentaire_like` (`idLikesF`),
  ADD KEY `fk_commentaire_publication` (`idPublicationF`);

--
-- Index pour la table `diplome`
--
ALTER TABLE `diplome`
  ADD PRIMARY KEY (`idDiplome`);

--
-- Index pour la table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`idEducation`);

--
-- Index pour la table `faireeducation`
--
ALTER TABLE `faireeducation`
  ADD PRIMARY KEY (`idFaireEducation`),
  ADD KEY `fk_faireeducation_travailleur` (`idTravailleurF`);

--
-- Index pour la table `faireprofession`
--
ALTER TABLE `faireprofession`
  ADD PRIMARY KEY (`idFaireProfession`),
  ADD KEY `fk_faireprofession_travailleur` (`idTravailleurF`),
  ADD KEY `fk_faireprofession_profession` (`idProfessionF`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`idLike`),
  ADD KEY `fk_likes_commentaire` (`idCommentaireF`),
  ADD KEY `fk_likes_user` (`idUsersF`),
  ADD KEY `fk_likes_publication` (`idPublicationF`);

--
-- Index pour la table `obtenirdiplome`
--
ALTER TABLE `obtenirdiplome`
  ADD PRIMARY KEY (`idObtentionDiplome`),
  ADD KEY `fk_obtenirdiplome_travailleur` (`idTravailleurF`),
  ADD KEY `fk_obtenirdiplome_diplome` (`idDiplomeF`);

--
-- Index pour la table `partage`
--
ALTER TABLE `partage`
  ADD PRIMARY KEY (`idPartage`),
  ADD KEY `fk_partage_publication` (`idPublicationF`),
  ADD KEY `fk_partage_user` (`idUserF`);

--
-- Index pour la table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`idPublication`);

--
-- Index pour la table `realisation`
--
ALTER TABLE `realisation`
  ADD PRIMARY KEY (`idRealisation`),
  ADD KEY `fk_realisation_user` (`idTravailleurF`);

--
-- Index pour la table `recruteur`
--
ALTER TABLE `recruteur`
  ADD PRIMARY KEY (`idRecruteur`),
  ADD KEY `fk_recruteur_users` (`idUsersF`);

--
-- Index pour la table `relationsamis`
--
ALTER TABLE `relationsamis`
  ADD PRIMARY KEY (`idRelationAmis`),
  ADD KEY `fk_relationsAmis1` (`idUtilisateur1F`),
  ADD KEY `fk_relationsAmis2` (`idUtilisateur2F`);

--
-- Index pour la table `travailleur`
--
ALTER TABLE `travailleur`
  ADD PRIMARY KEY (`idTravailleur`),
  ADD KEY `fk_travailleur_user` (`idUsersF`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `emailUser` (`emailUser`),
  ADD KEY `fk_users_amis` (`idAmisF`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `idCommentaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `diplome`
--
ALTER TABLE `diplome`
  MODIFY `idDiplome` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `education`
--
ALTER TABLE `education`
  MODIFY `idEducation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `faireeducation`
--
ALTER TABLE `faireeducation`
  MODIFY `idFaireEducation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `faireprofession`
--
ALTER TABLE `faireprofession`
  MODIFY `idFaireProfession` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `idLike` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `obtenirdiplome`
--
ALTER TABLE `obtenirdiplome`
  MODIFY `idObtentionDiplome` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `partage`
--
ALTER TABLE `partage`
  MODIFY `idPartage` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `publication`
--
ALTER TABLE `publication`
  MODIFY `idPublication` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `realisation`
--
ALTER TABLE `realisation`
  MODIFY `idRealisation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recruteur`
--
ALTER TABLE `recruteur`
  MODIFY `idRecruteur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `relationsamis`
--
ALTER TABLE `relationsamis`
  MODIFY `idRelationAmis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `travailleur`
--
ALTER TABLE `travailleur`
  MODIFY `idTravailleur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `fk_commentaire_commentaire` FOREIGN KEY (`idCommentaireParentF`) REFERENCES `commentaire` (`idCommentaire`),
  ADD CONSTRAINT `fk_commentaire_like` FOREIGN KEY (`idLikesF`) REFERENCES `likes` (`idLike`),
  ADD CONSTRAINT `fk_commentaire_publication` FOREIGN KEY (`idPublicationF`) REFERENCES `publication` (`idPublication`),
  ADD CONSTRAINT `fk_commentaire_user` FOREIGN KEY (`idUserF`) REFERENCES `users` (`idUser`);

--
-- Contraintes pour la table `faireeducation`
--
ALTER TABLE `faireeducation`
  ADD CONSTRAINT `fk_faireeducation_travailleur` FOREIGN KEY (`idTravailleurF`) REFERENCES `travailleur` (`idTravailleur`);

--
-- Contraintes pour la table `faireprofession`
--
ALTER TABLE `faireprofession`
  ADD CONSTRAINT `fk_faireprofession_profession` FOREIGN KEY (`idProfessionF`) REFERENCES `profession` (`idProfession`),
  ADD CONSTRAINT `fk_faireprofession_travailleur` FOREIGN KEY (`idTravailleurF`) REFERENCES `travailleur` (`idTravailleur`);

--
-- Contraintes pour la table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk_likes_publication` FOREIGN KEY (`idPublicationF`) REFERENCES `publication` (`idPublication`),
  ADD CONSTRAINT `fk_likes_user` FOREIGN KEY (`idUsersF`) REFERENCES `users` (`idUser`);

--
-- Contraintes pour la table `obtenirdiplome`
--
ALTER TABLE `obtenirdiplome`
  ADD CONSTRAINT `fk_obtenirdiplome_diplome` FOREIGN KEY (`idDiplomeF`) REFERENCES `diplome` (`idDiplome`),
  ADD CONSTRAINT `fk_obtenirdiplome_travailleur` FOREIGN KEY (`idTravailleurF`) REFERENCES `travailleur` (`idTravailleur`);

--
-- Contraintes pour la table `partage`
--
ALTER TABLE `partage`
  ADD CONSTRAINT `fk_partage_publication` FOREIGN KEY (`idPublicationF`) REFERENCES `publication` (`idPublication`),
  ADD CONSTRAINT `fk_partage_user` FOREIGN KEY (`idUserF`) REFERENCES `users` (`idUser`);

--
-- Contraintes pour la table `realisation`
--
ALTER TABLE `realisation`
  ADD CONSTRAINT `fk_realisation_user` FOREIGN KEY (`idTravailleurF`) REFERENCES `travailleur` (`idTravailleur`);

--
-- Contraintes pour la table `recruteur`
--
ALTER TABLE `recruteur`
  ADD CONSTRAINT `fk_recruteur_users` FOREIGN KEY (`idUsersF`) REFERENCES `users` (`idUser`);

--
-- Contraintes pour la table `relationsamis`
--
ALTER TABLE `relationsamis`
  ADD CONSTRAINT `fk_relationsAmis1` FOREIGN KEY (`idUtilisateur1F`) REFERENCES `users` (`idUser`),
  ADD CONSTRAINT `fk_relationsAmis2` FOREIGN KEY (`idUtilisateur2F`) REFERENCES `users` (`idUser`);

--
-- Contraintes pour la table `travailleur`
--
ALTER TABLE `travailleur`
  ADD CONSTRAINT `fk_travailleur_user` FOREIGN KEY (`idUsersF`) REFERENCES `users` (`idUser`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_amis` FOREIGN KEY (`idAmisF`) REFERENCES `relationsamis` (`idRelationAmis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
