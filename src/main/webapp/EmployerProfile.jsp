<%-- 
    Document   : EmployerProfile
    Created on : May 11, 2016, 9:50:34 PM
    Author     : ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>نمایه کارفرما</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <script>
        function initialize() {
            var mapProp = {
                center: new google.maps.LatLng(35.7991, 51.3947),
                zoom: 5,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body>

<div class="w3-green w3-center" style="position: absolute;top: 0;bottom: 70%;left: 0;right: 0;">
    <img src="images/img_avatar.png" style="height: 100%; margin-top: 5%" class="w3-card-2 w3-circle" alt="عکس کاربر">
    <div class="w3-container w3-section w3-right-align w3-row">
        <div class="w3-half w3-right">
            <button class="w3-btn w3-blue-grey" type="button"
                    onclick="window.location.assign('EmployerEditProfile.html')">ویرایش نمایه
            </button>
            <button class="w3-btn w3-blue-grey" type="button" onclick="window.location.assign('index.html')">خروج
            </button>
            <br>
            <br>
            <div class="w3-text-black w3-card-2 w3-rightbar w3-border-teal w3-right-align w3-padding">
                <b>مشخصات</b>
                <hr class="w3-border-teal">
                <p><b>شرکت پیله</b></p>
                <p class="w3-right-align">شما می‌توانید از طریق شماره تلفن و ایمیل زیر با ما در تماس باشید</p>
                <p><b>021-12345678</b></p>
                <p><b>peeleh@gmail.com</b></p>
            </div>
        </div>
        <div id="googleMap" class="w3-half w3-left" style="width:500px;height:380px;"></div>
    </div>
    <br>
    <div class="w3-container w3-text-black">
        <b>آگهی‌های استخدام‌</b>
        <hr class="w3-border-teal">
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
        <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
            <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
            <div class="w3-right-align w3-padding">
                <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
                <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد
                    بود</p>
                <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                    <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable"
                        style="width: 100%;">
                        <li>مدیریت پروژه</li>
                        <li>برنامه نویسی اندروید</li>
                        <li>طراحی از روی PSD</li>
                        <li>کار با sqlite</li>
                    </ul>
                </div>
                <div>
                    <p>روحیه کار تیمی بالا یکی از ملزومات کار ماست</p>
                </div>
            </div>
            <button class="w3-container w3-teal w3-btn-block">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                    class="fa fa-send"></i></span>

            </button>
        </div>
    </div>
</div>

<script>
    function openSkills(elem) {
        elem.getElementsByTagName('ul')[0].classList.toggle("w3-show");
    }
</script>
</body>
</html>
