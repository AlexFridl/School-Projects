<?php
include 'konekcija.php';
if(isset($_POST['btnPosalji'])){
	
    $imePrezime = $_POST['tbImePrezime'];
    $email = $_POST['tbEmail'];
    $poruka = $_POST['tbPoruka'];

    $upit = "INSERT INTO kontakt VALUES('', :imePrezime, :email, :poruka)";

    $prepare = $konekcija->prepare($upit);

    $prepare->bindParam(':imePrezime',$imePrezime);
    $prepare->bindParam(':email',$email);
    $prepare->bindParam(':poruka',$poruka);

    $prepare->execute();

    $headers = "FROM: $email";
    mail("fridl.programing@gmail.com",$imePrezime,$poruka,$headers);
    // mail("aleksandra.fridl.311.14@ict.edu.rs",$imePrezime,$poruka,$headers);
}
?>
