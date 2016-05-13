<%-- 
    Document   : index
    Created on : May 11, 2016, 9:15:27 AM
    Author     : ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>خوش آمدید</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
    <style>
        .mySlides {display:none; height: 400px; width: 100%; margin-top: 5%;}
        .w3-left, .w3-right, .w3-badge {cursor:pointer}
        .w3-badge {height:13px;width:13px;padding:0}
    </style>
</head>
<body>
    <header class="w3-top w3-card-2">
        <ul class="w3-navbar w3-green">
            <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" onclick="document.getElementById('registerModal').style.display='block'">ثبت نام</a></li>
            <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" onclick="document.getElementById('loginModal').style.display='block'">ورود</a> </li>
            <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" href="search.html">جستجو</a> </li>
        </ul>
    </header>

    <div class="w3-display-container w3-card-4">
        <img class="mySlides w3-animate-zoom" src="images/slide1.jpg">
        <img class="mySlides w3-animate-zoom" src="images/slide2.jpg">
        <img class="mySlides w3-animate-zoom" src="images/slide3.jpg">
        <div class="w3-center w3-section w3-large w3-text-white w3-display-bottomleft" style="width:100%">
            <div class="w3-left w3-btn-floating w3-green w3-hover-teal" onclick="plusDivs(-1)">❮</div>
            <div class="w3-right w3-btn-floating w3-green w3-hover-teal" onclick="plusDivs(1)">❯</div>
            <span class="w3-badge demo w3-border w3-green w3-transparent w3-hover-teal" onclick="currentDiv(1)"></span>
            <span class="w3-badge demo w3-border w3-green w3-transparent w3-hover-teal" onclick="currentDiv(2)"></span>
            <span class="w3-badge demo w3-border w3-green w3-transparent w3-hover-teal" onclick="currentDiv(3)"></span>
        </div>
    </div>

    <div class="w3-container w3-section w3-light-green">
        <div class="w3-center w3-xxlarge"><b>آخرین به روز رسانی از سایت</b></div>
        <div class="w3-container w3-row" style="margin: 0 auto 0 auto; max-width: 770px;">
            <div class="w3-card-8 w3-round-large w3-col l2 m3 s12 w3-center w3-margin w3-round-xlarge w3-white"><div class="w3-jumbo w3-section">500</div><div class="w3-teal" style="border-bottom-left-radius: 5px;border-bottom-right-radius: 5px">شغل‌های موجود</div></div>
            <div class="w3-card-4 w3-round-large w3-col l2 m3 s12 w3-center w3-margin w3-round-xlarge w3-white"><div class="w3-jumbo w3-section">86</div><div class="w3-teal" style="border-bottom-left-radius: 5px;border-bottom-right-radius: 5px">کارجویان</div></div>
            <div class="w3-card-4 w3-round-large w3-col l2 m3 s12 w3-center w3-margin w3-round-xlarge w3-white"><div class="w3-jumbo w3-section">100</div><div class="w3-teal" style="border-bottom-left-radius: 5px;border-bottom-right-radius: 5px">کارفرمایان</div></div>
            <div class="w3-card-4 w3-round-large w3-col l2 m3 s12 w3-center w3-margin w3-round-xlarge w3-white"><div class="w3-jumbo w3-section">6</div><div class="w3-teal" style="border-bottom-left-radius: 5px;border-bottom-right-radius: 5px">تیم‌های برون سپاری</div></div>
        </div>
    </div>

    <footer class="w3-green w3-right-align w3-container">
        <div class="w3-row">
            <ul class="w3-third w3-margin w3-right" style="list-style-type: none;">
                <li><a class="w3-green w3-btn w3-hover-text-amber" href="index.html">خانه</a></li>
                <li><a class="w3-green w3-btn w3-hover-text-amber" onclick="document.getElementById('registerModal').style.display='block'">ثبت نام</a></li>
                <li><a class="w3-green w3-btn w3-hover-text-amber" onclick="document.getElementById('loginModal').style.display='block'">ورود</a></li>
                <li><a class="w3-green w3-btn w3-hover-text-amber">درباره ما</a></li>
            </ul>
            <div class="w3-quarter w3-right w3-margin"><p>تمامي آگهی های اين سایت، توسط افراد حقیقی و حقوقی درج می شود و فعاليت‌هاي اين سايت تابع قوانين و مقررات جمهوري اسلامي ايران است</p></div>
        </div>
        <div>
            <p class="w3-center">تمامی حقوق این وبسایت متعلق به دانشگاه شهید بهشتی میباشد و استفاده از مطالب همراه با ذکر منبع بلا مانع است</p>
        </div>
    </footer>

    <div id="registerModal" class="w3-modal">
        <div class="w3-modal-content w3-card-8 w3-animate-zoom" style="max-width:600px">
            <div class="w3-container">
                <div class="w3-section">
                    <div class="w3-container w3-teal">
                        <div class="w3-topnav w3-right-align">
                            <a name="regLevel" class="w3-border-white">ساخت حساب</a> >>
                            <a name="regLevel">تکمیل اطلاعات کاربری</a>
                        </div>
                    </div>
                    <form method="post" action="RegisterServlet">
                        <div class="w3-right-align">
                            <label class="w3-right"><b>نوع کاربری</b></label><br>
                            <label class="w3-validate">کارجو
                                <input class="w3-radio" name="kind" type="radio" value="jobFinder" checked><br>
                            </label>
                            <label class="w3-validate">کارفرما
                                <input class="w3-radio" name="kind" type="radio" value="jobOrder"><br>
                            </label>
                            <label class="w3-validate">تیم
                                <input class="w3-radio" name="kind" type="radio" value="team"><br>
                            </label>
                        </div>

                        <div class="w3-section">
                            <label class="w3-right"><b>نام کاربری</b></label>
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" required type="email" placeholder="ایمیل خود را وارد کنید">

                            <label class="w3-right"><b>رمز عبور</b></label>
                            <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" required type="password" placeholder="رمز خود را وارد کنید">

                            <label class="w3-right"><b>تکرار رمز عبور</b></label>
                            <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" required type="password" placeholder="رمز خود را تکرار کنید">

                            <button class="w3-btn w3-btn-block w3-green" type="submit">تکمیل اطلاعات کاربری >></button>
                        </div>
                    </form>
                    <form style="display: none;">

                    </form>
                </div>
            </div>

            <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                <button onclick="document.getElementById('registerModal').style.display='none'" type="button" class="w3-btn w3-red">لغو</button>
            </div>

        </div>
    </div>

    <div id="loginModal" class="w3-modal">
        <div class="w3-modal-content w3-card-8 w3-animate-zoom" style="max-width:600px">
            <br>
            <div class="w3-container">
                <div class="w3-section">
                    <div id="errorPanel" class="w3-red w3-right-align w3-padding" style="display: none">
                        <p>نام کاربری یا رمز عبور اشتباه است</p>
                    </div>
                    <form method="post" action="LoginServlet">
                        <label class="w3-right"><b>نام کاربری</b></label>
                        <input id="email" class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="email" placeholder="ایمیل خود را وارد کنید">

                        <label class="w3-right"><b>رمز عبور</b></label>
                        <input id="password" class="w3-input w3-border-teal w3-right-align w3-margin-bottom" type="password" placeholder="رمز خود را وارد کنید">

                        <button class="w3-btn w3-btn-block w3-green" type="button" onclick="tempRedirect('email','password')">ورود</button>
                        <div class="w3-row">
                            <input class="w3-left w3-check w3-margin-top" type="checkbox" checked="checked">
                            <p class=" w3-left w3-center w3-margin-top">من را به خاطر بسپار</p>
                        </div>
                    </form>
                </div>
            </div>

            <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                <button onclick="document.getElementById('loginModal').style.display='none'" type="button" class="w3-btn w3-red">لغو</button>
                <span class="w3-right w3-padding w3-hide-small"><a href="#">رمزم را فراموش کرده‌ام</a></span>
            </div>

        </div>
    </div>

    <!-- Scripts -->
    <script>
        var slideIndex = 1;
        showDivs(slideIndex);

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function currentDiv(n) {
            showDivs(slideIndex = n);
        }

        function repeat(){
            plusDivs(1);
            setTimeout(repeat, 3000);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("demo");
            if (n > x.length) {slideIndex = 1}
            if (n < 1) {slideIndex = x.length}
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].classList.remove("w3-teal");
            }
            x[slideIndex-1].style.display = "block";
            dots[slideIndex-1].classList.add("w3-teal");
        }

        window.onload = repeat();
    </script>

<script>
    function tempRedirect(emailId, passwordId){
        var email = document.getElementById(emailId).value;
        var password = document.getElementById(passwordId).value;

        if (email == "karjo@gmail.com"){
            if(password == "123"){
                window.location.assign("jobFinderProfile.html");
            }
            else{
                document.getElementById('errorPanel').style.display = 'block';
            }
        }
        else if(email == "karfarma@gmail.com"){
            if(password == "456"){
                window.location.assign("employerProfile.html");
            }
            else{
                document.getElementById('errorPanel').style.display = 'block';

            }
        }
        else if(email == "team@gmail.com"){
            if(password == "789"){
                window.location.assign("teamProfile.html");
            }
            else{
                document.getElementById('errorPanel').style.display = 'block';

            }
        }
        else{
            document.getElementById('errorPanel').style.display = 'block';
        }
    }
</script>
</body>
</html>
