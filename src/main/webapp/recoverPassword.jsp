<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>بازیابی رمز عبور</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">

</head>
<body>

<header class="w3-card-2">
    <ul class="w3-navbar w3-green">
        <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" onclick="document.getElementById('registerModal').style.display='block'">ثبت نام</a></li>
        <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" onclick="document.getElementById('loginModal').style.display='block'">ورود</a> </li>
        <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" href="search.html">جستجو</a> </li>
    </ul>
</header>

<div class="w3-container w3-section w3-row" style="height: 360px;">
    <div class="w3-quarter w3-hide-small w3-hide-medium">&nbsp;</div>
    <div class="w3-quarter w3-hide-small w3-hide-medium w3-right">&nbsp;</div>
    <div class="w3-card-2 w3-rest w3-center w3-padding w3-container">
        <b class="w3-right">بازیابی رمز عبور</b><br>
        <div class="w3-container w3-section">
            <label><input class="w3-input w3-border-teal w3-right-align" type="email" placeholder="ایمیل خود را وارد کنید"></label>
            <label><input class="w3-input w3-border-teal w3-right-align" type="tel" placeholder="شماره تلفن خود را وارد کنید"></label>
            <br>
            <button class="w3-btn w3-green w3-right fa fa-send-o" type="button"
                onclick="document.getElementById('message').style.display = 'block'">ارسال رمز عبور</button>
        </div>
        <p id="message" class="w3-text-teal" style="display: none;">رمز به ایمیلتان فرستاده شد</p>
    </div>
</div>

<footer class="w3-green w3-right-align w3-container">
    <div class="w3-row">
        <ul class="w3-third w3-margin w3-right" style="list-style-type: none;">
            <li><a class="w3-green w3-btn w3-hover-text-amber" href="index.html">خانه</a></li>
            <li><a class="w3-green w3-btn w3-hover-text-amber" onclick="document.getElementById('registerModal').style.display='block'">ثبت نام</a></li>
            <li><a class="w3-green w3-btn w3-hover-text-amber" onclick="document.getElementById('loginModal').style.display='block'">ورود</a></li>
            <li><a class="w3-green w3-btn w3-hover-text-amber" href="aboutus.html">درباره ما</a></li>
        </ul>
        <div class="w3-quarter w3-right w3-margin"><p>تمامي آگهی های اين سایت، توسط افراد حقیقی و حقوقی درج می شود و فعاليت‌هاي اين سايت تابع قوانين و مقررات جمهوري اسلامي ايران است</p></div>
    </div>
    <div>
        <p class="w3-center">تمامی حقوق این وبسایت متعلق به دانشگاه شهید بهشتی میباشد و استفاده از مطالب همراه با ذکر منبع بلا مانع است</p>
    </div>
</footer>

</body>
</html>