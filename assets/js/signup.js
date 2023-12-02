const nom = document.getElementById("nom");
const prenom = document.getElementById("prenom");
const dateNaissance = document.getElementById("dateNaissance");
const lieuDeNaissance = document.getElementById("lieuDeNaissance");
const adresse = document.getElementById("adresse");
const telephone = document.getElementById("telephone");
const typeUser = document.getElementById("typeUser");
const email = document.getElementById("email");
const password = document.getElementById("password");
const annuler = document.getElementById("annuler");
const inscrire = document.getElementById("inscrire");
const eye = document.getElementById("eye");

/**Partie nom DEBUT */
const checkNom = function (nom) {
  let regex = /^[a-zA-Z]{1,20}$/;
  return regex.test(nom);
};

nom.addEventListener("blur", (e) => {
  if (!checkNom(nom.value) && !nom.classList.contains("valuError")) {
    nom.classList.add("valuError");
  } else if (checkNom(nom.value) && nom.classList.contains("valuError")) {
    nom.classList.remove("valuError");
  }
});
/**Partie nom FIN */

/**Partie prenom DEBUT */
const checkPrenom = function (prenom) {
  let regex = /^[a-zA-Z\s]{1,30}$/;
  return regex.test(prenom);
};

prenom.addEventListener("blur", (e) => {
  if (!checkPrenom(prenom.value) && !prenom.classList.contains("valuError")) {
    prenom.classList.add("valuError");
  } else if (
    checkPrenom(prenom.value) &&
    prenom.classList.contains("valuError")
  ) {
    prenom.classList.remove("valuError");
  }
});
/**Partie prenom FIN */

/**Partie dateNaissance DEBUT */

/**Partie dateNaissance FIN */

/**Partie lieuNaissance DEBUT */
const checkLieuNaissance = function (lieuNaissance) {
  // Supprime les espaces en début et fin de chaîne
  let lieuNaissanceTrimmed = lieuNaissance.trim();

  // Utilise une regex pour vérifier les caractères autorisés
  let regex = /^[a-zA-Z\s-,]+$/;

  // Retourne true si la chaîne correspond à la regex, sinon false
  return regex.test(lieuNaissanceTrimmed);
};
/**Partie lieuNaissance FIN */

/**Partie adresse DEBUT */
const checkAdresse = function (adresse) {
  // Supprime les espaces en début et fin de chaîne
  let adresseTrimmed = adresse.trim();

  // Utilise une regex pour vérifier les caractères autorisés
  let regex = /^[a-zA-Z0-9\s-,]+$/;

  // Retourne true si la chaîne correspond à la regex, sinon false
  return regex.test(adresseTrimmed);
};
/**Partie adresse FIN */

/**Partie telephone DEBUT */
const checkTelephone = function (telephone) {
  // Utilise une regex pour vérifier les normes sénégalaises sans espace ni tiret
  let regex = /^(70|75|76|77|78)\d{7}$/;

  // Retourne true si la chaîne correspond à la regex, sinon false
  return regex.test(telephone);
};

/**Partie telephone FIN */

/**Partie typeUser DEBUT */

/**Partie typeUser FIN */

/**Partie email DEBUT */
const checkEmail = function (email) {
  let trimmedEmail = email.trim(); // Supprime les espaces en début et fin de chaîne
  // Expression régulière pour valider une adresse e-mail
  let regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return regex.test(trimmedEmail);
};

email.addEventListener("blur", (e) => {
  if (!checkEmail(email.value) && !email.classList.contains("valuError")) {
    email.classList.add("valuError");
  } else if (checkEmail(email.value) && email.classList.contains("valuError")) {
    email.classList.remove("valuError");
  }
});
/**Partie email FIN */

/**Partie password DEBUT */
const checkPassword = function (password) {
  // let myPassword = password.trim(); // Supprime les espaces en début et fin de chaîne
  /* devrait contenir au moins un chiffre
       devrait contenir au moins une lettre minuscule
       devrait contenir au moins une lettre majuscule
       devrait contenir au moins un caractère spécial parmi @$!%*?&
       devrait contenir uniquement des caractères spécifiés (lettres, chiffres, caractères spéciaux) et avoir une longueur d'au moins 8 caractères*/
  let regex =
    /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&])[a-zA-Z0-9@$!%*?&]{8,}/;
  return regex.test(password);
};

/*evenement declenche quand on quitte champ de saisie password */
password.addEventListener("blur", (e) => {
  if (
    !checkPassword(password.value) &&
    !password.classList.contains("valuError")
  ) {
    password.classList.add("valuError");
  } else if (
    checkPassword(password.value) &&
    password.classList.contains("valuError")
  ) {
    password.classList.remove("valuError");
  }
});

/**Partie password FIN */

/**Partie eye DEBUT */
eye.addEventListener("click", (e) => {
  e.preventDefault();
  if (eye.classList.contains("fa-eye")) {
    eye.classList.remove("fa-eye");
    eye.classList.add("fa-eye-slash");
    password.type = "text";
  } else {
    eye.classList.remove("fa-eye-slash");
    eye.classList.add("fa-eye");
    password.type = "password";
  }
});

/**Partie eye FIN */

/**Partie all DEBUT */
const checkAll = function () {
  // Vérifier la validité de la date de naissance
  const isDateValid = () => {
    const dateValue = new Date(dateNaissance.value);

    // Vérifie si la date est valide
    if (isNaN(dateValue.getTime())) {
      return false;
    }

    // Obtient la date d'aujourd'hui
    const today = new Date();

    // Calcule la différence d'années
    let ageDifference = today.getFullYear() - dateValue.getFullYear();

    // Si la date de naissance a déjà eu lieu cette année, ajuste la différence d'années
    if (
      today.getMonth() < dateValue.getMonth() ||
      (today.getMonth() === dateValue.getMonth() &&
        today.getDate() < dateValue.getDate())
    ) {
      ageDifference--;
    }

    // Vérifie si l'âge est d'au moins 18 ans
    return ageDifference >= 18;
  };

  if (
    !(
      checkNom(nom.value) &&
      checkPrenom(prenom.value) &&
      isDateValid() &&
      checkLieuNaissance(lieuDeNaissance.value) &&
      checkAdresse(adresse.value) &&
      checkTelephone(telephone.value) &&
      typeUser.value !== "" &&
      checkEmail(email.value) &&
      checkPassword(password.value)
    )
  ) {
    return false;
  }
  return true;
};

inscrire.addEventListener("mouseover", (e) => {
  e.preventDefault();

  if (!checkAll()) {
    inscrire.disabled = true;
  } else {
    inscrire.disabled = false;
  }
});
/**Partie all FIN */
//
