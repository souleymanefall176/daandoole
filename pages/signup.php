<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sign up</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../assets/dist/style.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/font.css">
    <script type="module" src="../assets/js/signup.js"></script>

</head>
<body>
<section class="bg-gray-50 min-h-screen flex items-center justify-center ">
        <!--login container -->
        <div id="inscriptionContainer" class="bg-[#e0f2fe] flex rounded-xl shadow-lg max-w-3xl p-5">
            <!--image-->
            <div class="w-1/2 flex flex-col items-center justify-center px-8">
                <p id="nomApp" class="md:block hidden text-center grid-cols-3 text-2xl text-[#3871A6] font-bold"> daandoole </p>
            </div>
            <!--form-->
            <div class="md:w-1/2 px-&-">
                <h2 id="titre" class="font-bold text-2xl text-[#3871A6]">Inscription</h2>
                <p id="infos" class="text-sm  mt-2 mb-4 text-[#3871A6] text-xs">Veuillez remplir ce formulaire.</p>
                <form action="" method="post" class="flex flex-col gap-4">
                    <div class="grid grid-cols-2 gap-5">
                        <input type="text" name="nom" placeholder="Nom" id="nom" class="rounded-xl border border-gray-400 py-1 px-2" autocomplete="off" required>
                        <input type="text" name="prenom" placeholder="Prenom" id="prenom" class="rounded-xl border border-gray-400 py-1 px-2" autocomplete="off" required>
                    </div>
                    <div class="grid grid-cols-2 gap-5">
                        <input type="date" name="dateNaissance" placeholder="Date de naissance" id="dateNaissance" class="rounded-xl border border-gray-400 py-1 px-2" autocomplete="off" required>
                        <input type="text" name="lieuDeNaissance" placeholder="Lieu de naissance" id="lieuDeNaissance" class="rounded-xl border border-gray-400 py-1 px-2" autocomplete="off" required>
                    </div>
                    <div class="grid grid-cols-2 gap-5">
                        <input type="text" name="adresse" placeholder="Adresse" id="adresse" class="rounded-xl border border-gray-400 py-1 px-2" autocomplete="off" required>
                        <input type="text" name="telephone" placeholder="Telephone" id="telephone" class="rounded-xl border border-gray-400 py-1 px-2" autocomplete="off" required>
                    </div>
                    <div class="">
                        <select name="typeUser" id="typeUser" class="rounded-xl border border-gray-400 py-1 px-2 w-full" required>
                            <option value="" disabled selected>Type utilisateur</option>
                            <option value="TRAVAILLEUR">Travailleur</option>
                            <option value="RECRUTEUR">Recruteur</option>
                        </select>
                    </div>
                    <input type="email" name="email" placeholder="Email" id="email" class="rounded-xl border border-gray-400 py-1 px-2" autocomplete="off" required>
                    
                    <div class="relative ">
                        <input type="password" name="password"
                        placeholder="Password" id="password" class="w-full rounded-xl border border-gray-400 py-1 px-2" autocomplete="off" required>
                        <i class="fa-solid fa-eye absolute text-[#3871A6] top-1 right-3 translate-y-1/3" id="eye"></i>
                    </div>
                    <div class="grid grid-cols-2 gap-5 mt-2">
                        <button class="bg-white border border-[#3871A6]  text-[#3871A6] rounded-xl py-2 hover:scale-110 duration-300" id="annuler" name="annuler">Annuler</button>
                        <button class="bg-[#3871A6] text-white rounded-xl py-2 hover:scale-110 duration-300" id="inscrire" name="inscrire">S'inscrire</button>
                    </div>
                </form>

                
            </div>
        </div>
        
    </section>
</body>
</html>