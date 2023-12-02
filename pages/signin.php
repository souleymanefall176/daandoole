<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sign in</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../assets/dist/style.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/font.css">
    <link rel="stylesheet" href="../assets/css/signin.css">
    <script type="module" src="../assets/js/signin.js"></script>
</head>
<body>
<section class="bg-gray-50 min-h-screen flex items-center justify-center ">
        <!--login container -->
        <div id="loginContainer" class="bg-[#e0f2fe] flex rounded-xl shadow-lg max-w-3xl p-5">
            <!--image-->
            <div class="w-1/2 flex flex-col items-center justify-center px-8">
                <p id="nomApp" class="md:block hidden text-center grid-cols-3 text-2xl text-[#3871A6] font-bold"> daandoole </p>
            </div>
            <!--form-->
            <div class="md:w-1/2 px-&-">
                <h2 id="titre" class="font-bold text-2xl text-[#3871A6]">Connexion</h2>
                <p id="infos" class="text-sm  mt-4 text-[#3871A6] text-xs">Veuillez vous connecter</p>
                <form action="../dao/authentification.php" method="post" class="flex flex-col gap-4">
                    <input type="email" name="emailUser" placeholder="Email" id="email" class="p-2 mt-8 rounded-xl border w-full">
                    <div class="relative">
                        <input type="password" name="passwordUser"
                        placeholder="Mot de passe" id="password" class="p-2 rounded-xl border w-full" autocomplete="off">
                        <i class="fa-solid fa-eye absolute text-[#3871A6] top-1 right-3 translate-y-1/2" id="eye"></i>
                    </div>
                    <div class="grid grid-cols-2 gap-5 mt-2">
                        <button class="bg-white border border-[#3871A6] text-[#3871A6] rounded-xl py-2 hover:scale-110 duration-300" id="annuler" name="annuler">Annuler</button>
                        <button class="bg-[#3871A6]  text-white rounded-xl py-2 hover:scale-110 duration-300" id="connecter" name="connecter">Se Connecter</button>
                    </div>
                </form>

                
            </div>
        </div>
        
    </section>
</body>
</html>