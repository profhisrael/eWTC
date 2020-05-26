<?php
if (isset($_POST{'submit'})) {
	$name = $_POST['name'];
	$mailFrom = $_POST['email'];
	$subject = $_POST['subject'];
	$message = $_POST['message'];
	
	$mailTo = "bukunsport@gmail.com";
	$headers = "From: ".$mailFrom;
	$txt = "You have recieved an e-maiil from ".$name.".\n\n".$message; 

	mail($mailTo, $subject, $txt, $headers);
	header("Location: contact-us.php?mailsend");
}

?>

