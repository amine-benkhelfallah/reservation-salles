
        <link rel="stylesheet" href="css/header.css"  />

 <!-- header des pages -->
 <?php
        include 'header.php';
    ?>
      

    <main>
        <div class="box">
        <?php
                    // test si l'utilisateur est connecté
                    if (isset($_GET['deconnexion'])){
                        if($_GET['deconnexion']==true){
                            session_unset();
                            session_destroy();
                            header('Location: index.php');
                            echo "<h1>Veuillez vous connecter pour une resérvation de la salle</h1> ";
                        }
                    }
                    else if(isset($_SESSION['login'])){
                        $user = $_SESSION['login'];

                       echo "<div id='center'>
                               
                                <h1>Bonjour, $user !</h1>
                              
                            </div>";

                            }
                            ?>
             
</div> 
    </main>
    
    <?php include('footer.php'); ?>
    </body>
   
    
</html>


