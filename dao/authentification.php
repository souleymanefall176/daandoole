<?php
require_once('connect_bdd.php');

function authenticateUser($email, $password) {
    global $conn, $typeUser;
    $typeUser = $conn->prepare('SELECT typeUser FROM users');
    $recupUser = $conn->prepare('SELECT emailUser, passwordUser FROM users WHERE emailUser = ? AND passwordUser = ?');
    $recupUser->execute(array($email, $password));

    return $recupUser->rowCount() > 0;
}


if (isset($_POST['connecter'])) {
    if (!empty($_POST['emailUser']) && !empty($_POST['passwordUser'])) {
        $email = htmlspecialchars($_POST['emailUser']);
        $password = htmlspecialchars($_POST['passwordUser']);
        echo "<p>c</p>";
        if (authenticateUser($email, $password)) {
            $basePath = dirname(__FILE__);
            $dashboardPath = '../pages/administrator.php';
          
            header('Location: ' . $dashboardPath);

            
            exit();
        } else {
            session_start();
            $_SESSION['authentication_failed'] = true;
            $dashboardPath = '../pages/user.php';
            header('Location: ' . $dashboardPath);
            

        }
    } else {
        echo "Veuillez compléter tous les champs.";
        

    }
}
?>
