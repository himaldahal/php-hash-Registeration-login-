<?php
session_start();
$con = mysqli_connect('localhost', 'root', '', 'signup');

if (!$con) {
    echo "<script>alert('Error While connecting Database')</script>";
    die();
}
?><?php

if(isset($_POST['login'])){
   //login form code
  //checking if data is  empty
  
    if (empty($_POST['email']) || empty($_POST['password'])) {
    //the data is empty move to login page
        header('Location:register.php?lerror=All Fields Are Required.');
    
    } else{
   //the data is  Not empty

 $email= $_POST['email'];
$password = $_POST['password'];

$email_search ="SELECT * FROM registration WHERE email='$email'";
$query = mysqli_query($con,$email_search);

$email_count = mysqli_num_rows($query);

if($email_count){
//NOw i fetching data from db am doing email verification
$email_pass = mysqli_fetch_assoc($query);

$db_pass = $email_pass['password'];

$_SESSION['username'] = $email_pass['username'];


$pass_decode = password_verify($password, $db_pass);

if($pass_decode){

if (isset($_POST['rememberme'])) {
//172800second mean 2 days rembering
setcookie('emailcookie',$email,time()+172800);
setcookie('passwordcookie',$password,time()+172800);

header('location:welcome.php');
}else{
  header('location:welcome.php');
}

}else{
header('Location:register.php?lerror=Wrong Username Or Password');

}






}



    }

}
















//this code if for registering the user 
if (isset($_POST['register'])){
//register form Code
  if (empty($_POST['username']) || empty($_POST['email']) || empty($_POST['phone']) || empty($_POST['password']) || empty($_POST['cpassword'])) {
        header('Location:register.php?error=All Fields Are Required.');
        die();
    } else{
//declaring variable
    $username=mysqli_real_escape_string($con,$_POST['username']);
    $email= mysqli_real_escape_string($con,$_POST['email']);
    $mobile = mysqli_real_escape_string($con,$_POST['phone']);
    $password = mysqli_real_escape_string($con,$_POST['password']);
    $cpassword =mysqli_real_escape_string($con, $_POST['cpassword']);
 
//hashing password with Database
    $pass = password_hash($password, PASSWORD_BCRYPT);
  $cpass  = password_hash($cpassword, PASSWORD_BCRYPT);

//fetching data from db 
$emailquery = "SELECT * FROM registration WHERE email='$email'";

$query = mysqli_query($con,$emailquery);

$emailcount = mysqli_num_rows($query);
//if email is present in database then echo "Email Already exists in database "
if($emailcount>0)
{
header('location:register.php?error=Email Already exists in database please choose anthoer email');
die();

}

else
{
if($password ===  $cpassword ){
//both password are matching    

$insertquery = "INSERT INTO  `registration`(`username`, `email`, `mobile`, `password`, `cpassword`) VALUES('$username','$email','$mobile','$pass','$cpass')";

$iquery = mysqli_query($con,$insertquery);

if ($iquery) {
    echo "<script>alert('Account created successfully')</script>";
    die();
}else{
  echo "<script>alert('Account Not created')</script>";

}



}else{
	//password not mathcing
	echo "Password Are Not Matching"; 
}


}



}

}

?>