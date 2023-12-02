const email = document.getElementById("email");
const password = document.getElementById("password");
const annuler = document.getElementById("annuler");
const connecter = document.getElementById("connecter");
const eye = document.getElementById("eye");

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
/**Partie password Debut */

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

/*evenement declenche au clique de eye*/
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

/**Partie password Fin */

/**Partie Connecter DEBUT */
const checkAll = function (email, password) {
  if (checkEmail(email) && checkPassword(password)) {
    return true;
  }
  return false;
};

connecter.addEventListener("mouseover", (e) => {
  e.preventDefault();

  if (!checkAll(email.value, password.value)) {
    connecter.disabled = true;
  } else {
    connecter.disabled = false;
  }
});
/**Partie Connecter FIN */
