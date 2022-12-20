      
                <?php session_start(); ?>
<!-- header des pages -->
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" type="image/png" href="logo1.png"/>
    <link rel="stylesheet" href="css/header.css">
    <title>Résevation salles</title>
</head>

<body>
    <header>
        <div class="container">
            <div class="flex">
              
                <?php
                    // test si l'utilisateur est connecté
                    if (isset($_GET['deconnexion'])){
                        if($_GET['deconnexion']==true){
                            session_unset();
                            session_destroy();
                            header('Location: index.php');
                            
                        }
                    }
                    else if(isset($_SESSION['login'])){
                        $user = $_SESSION['login'];

                     
                        if ($user == 'login') {
                            $_SESSION['login'] = true;
                            echo "<nav>
                                <ul class='right'>
                                    
                                </ul>
                            </nav>";
                        }
                        else {
                            echo "<nav>
                                <ul class='row'>
                                    <li><a class='a_head' href='index.php'>Accueil</a></li>
                                    <li><a class='a_head' href='planning.php'>Plannig</a></li>
                                    <li><a class='a_head' href='profil.php'>Profil</a></li>
                                    <li><a class='a_head' href='reservation.php'>Reserver</a></li>
                                    <li><a class='a_head' href='index.php?deconnexion=true'>Déconnexion </a></li>

                                </ul>
                            </nav>";
                        }
                    }
                
                    
                    else{
                        
                        echo "<nav>
                        <ul class='a_head'>
                            <a href='index.php'>Accueil</a>
                            <a href='planning.php'>Planning</a>
                            <a href='connexion.php'>Connexion</a>
                            <a href='inscription.php'>Inscription</a>
                            </ul>";
                            echo "<div id='center'>
                            <h1>Veuillez vous connecter pour une resérvation</h1> 
                            </div>";
                       
                    }
                ?>
            </div>
        </div>
    </header>
