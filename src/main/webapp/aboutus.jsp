<%-- 
    Document   : aboutus
    Created on : May 11, 2016, 9:57:55 PM
    Author     : ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>درباره ما</title>
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

    <div class="w3-card-4 w3-round-xxlarge w3-border-bottom w3-border-teal w3-container w3-section w3-margin w3-third w3-right w3-right-align">
        <div class="w3-padding w3-large"><p>درباره ما</p></div>
        <div class="w3-padding w3-medium"><p>افرادی که دنبال کار می گردند، در صورت وجود مکانی برای اطلاع از شرایط استخدام و اطلاع از رشته های مورد نیاز و زمان و مکان ثبت نام و دیگر موارد، می توانند شانس خود را برخورداری از یک شغل مناسب امتحان کنند.

            این سایت سعی می کند بعنوان مکانی برای گردآوری آگهی های استخدام و نمایش شرایط ثبت نام و استخدام برای افراد جویای کار، کمبود موجود در اطلاع رسانی بموقع توسط مراجع ذیربط را پر کند.

            آگهی های ارائه شده در این سایت با توجه به اعلام نیاز کارفرمایان و آگهی های مختلف درج شده

            در رسانه های نوشتاری و غیره ارائه شده اند و مدیریت سایت استخدام هیچ گونه مسئولیتی در مورد محتویات آنها

            و مراحل بعدی ندارد. خواهشمند است در هنگام تماس و مراجعه دقت های لازم در مواردی همچون انطباق فعالیت آگهی دهنده با موازین قانونی بعمل آید.</p></div>
    </div>

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
                    <form>
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
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="email" placeholder="ایمیل خود را وارد کنید">

                            <label class="w3-right"><b>رمز عبور</b></label>
                            <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" type="password" placeholder="رمز خود را وارد کنید">

                            <label class="w3-right"><b>تکرار رمز عبور</b></label>
                            <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" type="password" placeholder="رمز خود را تکرار کنید">

                            <button class="w3-btn w3-btn-block w3-green">تکمیل اطلاعات کاربری >></button>
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
                    <form>
                        <label class="w3-right"><b>نام کاربری</b></label>
                        <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="email" placeholder="ایمیل خود را وارد کنید">

                        <label class="w3-right"><b>رمز عبور</b></label>
                        <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" type="password" placeholder="رمز خود را وارد کنید">

                        <button class="w3-btn w3-btn-block w3-green">ورود</button>
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

    <footer class="w3-green w3-right-align w3-container w3-bottom">
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
</body>
</html>