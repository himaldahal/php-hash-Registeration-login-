<?php
session_start();
if(!isset($_SESSION['username'])){
header('location:register.php?logerror=You are logged Out.;');

}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Admin PANEL</title>
</head>
<body>

<h1>Welcome <?php echo $_SESSION['username']; ?></h1>

<a href="logout.php">Logout</a>

</body>
</html>