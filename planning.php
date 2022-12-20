<?php include 'header.php' ?>
<?php include 'planning-form.php'?>

    <link href="header.css" rel = "stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
 
  



 <form method="get" id ="calendar">

    <button type="submit" name="previous_week" id="previous_week"> <i class="fa fa-arrow-left icon"></i> </i> </button>  
    <H1>Passer à la semaine suivante</H1> 

    <button type="submit" name="next_week" id="next_week"> <i class="fa fa-arrow-right icon"></i></button>  

 </form>
 
    <table>

        <thead>

            <tr>

                <th>Créneaux</th>

                <?php jours_planning() ?>

            </tr>

        </thead>

        <tbody>

            <?php corps_planning($result_events) ?>  

        </tbody>

    </table>

</main>

<?php include 'footer.php' ?>
