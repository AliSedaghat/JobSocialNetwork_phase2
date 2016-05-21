<%-- 
    Document   : EmployerEditProfile
    Created on : May 11, 2016, 9:53:00 PM
    Author     : ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ویرایش نمایه</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
</head>
<body>

<header class="w3-card-2">
    <ul class="w3-navbar w3-green">
        <li class="w3-right w3-margin-8"><a
                class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge"
                href="notification.html">اعلان‌ها</a></li>
        <li class="w3-right w3-margin-8"><a
                class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" href="search.html">جستجو</a>
        </li>
        <li class="w3-right w3-margin-8"><a
                class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge"
                href="index.html">خروج</a></li>
    </ul>
</header>

<div class="w3-row">
    <div class="w3-half w3-left w3-margin-top w3-margin-bottom">
        <div class="w3-container">
            <p class="w3-right-align"><b>فعالیت‌های کاری</b></p>
            <hr class="w3-border-light-blue">
            
            <label class="w3-right"><b>زمینه‌های کاری</b></label><br><br>
            <div id="tagArea1">
                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                        class="w3-closebtn w3-small"
                        onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                </div>
            </div>
            <br>

            <div class="w3-row">
                <div class="w3-btn w3-hover-teal w3-white w3-right fa fa-arrow-right w3-col s4 m2 l2 w3-xlarge"
                     onclick="addFieldTag('tagInput1','tagArea1')"></div>
                <label><input id="tagInput1" type="text"
                              class="w3-input w3-border-teal w3-left w3-col s8 m10 l10 w3-small"></label>
            </div>

            <br>

            <label class="w3-right"><b>کارهای انجام شده یا در حال اجرا</b></label><br>
            <div class="w3-card-2 w3-row w3-right-align w3-leftbar w3-border-light-blue w3-margin">
                <div class="w3-third w3-padding">
                    <label class="w3-validate">از تاریخ
                        <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" id="fromDate" name="fromDate" type="date">
                    </label>
                    <label class="w3-validate">تا تاریخ
                        <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" id="toDate" name="toDate" type="date">
                    </label>
                </div>
                <div class="w3-twothird w3-padding">
                    <label class="w3-validate">عنوان پروژه
                        <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" id="title" name="title" type="text">
                    </label>
                    <label class="w3-validate">شرح
                        <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" id="description" name="description" type="text">
                    </label>
                </div>
                <button class="w3-btn w3-btn-block w3-green" type="button" onclick="submitResume()">ثبت روزمه</button>
            </div>                
        </div>
    </div>

    <div class="w3-half w3-right w3-margin-top w3-border-left w3-border-blue">
        <div class="w3-container w3-row">
            <div class="w3-third w3-input-group w3-card-2">
                <form class="w3-form" method="post" action="/ChangePasswordController">
                    <input class="w3-input w3-border-teal w3-right-align" type="password" name="curPassword" placeholder="رمز فعلی">
                    <input class="w3-input w3-border-teal w3-right-align" type="password" name="newPassword" placeholder="رمز جدید">
                    <input class="w3-input w3-border-teal w3-right-align" type="password" name="repeatPassword" placeholder="تکرار رمز">
                    <button class="w3-btn w3-btn-block w3-green w3-margin-top" type="submit">تغییر رمز</button>
                </form>
            </div>
            <img src="images/img_avatar.png" style="width:200px;height:200px" class="w3-card-2 w3-circle w3-margin-right w3-right"
                 alt="عکس کاربر" id="userImage">
            
        </div>
        <div class="w3-container">
            <p class="w3-right-align"><b>اطلاعات پایه</b></p>
            <hr class="w3-border-light-blue">

            <form class="w3-right-align w3-form" action="/JobSocialNetwork/EmployerEditProfilePrimaryInfoController" method="post" enctype="multipart/form-data">
                <div class="w3-section">
                    
                    <label class="w3-right w3-right-align"><b>یک عکس انتخاب کنید</b>
                        <input class="w3-left" name="imageFile" type="file" onchange="showImage(this, 'userImage')">
                    </label>
                    <br/><br/>
                    <label class="w3-right"><b>نام شرکت</b></label>
                    <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" name="name" type="text"
                           placeholder="نام شرکت یا محل کسب و کار خود را وارد کنید">

                    <label><b class="w3-right">شماره تلفن</b>
                        <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" name="phone" type="tel"
                               placeholder="تلفن خود را وارد کنید">
                    </label>

                    <label><b class="w3-right">ایمیل</b>
                        <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" name="email" type="email"
                               placeholder="ایمیل خود را وارد کنید">
                    </label>

                    <label class="w3-right"><b>آدرس</b></label><br>
                    <div class="w3-row">
                        <div class="w3-third w3-padding">
                            <label class="w3-validate">ادامه آدرس
                                <textarea class="w3-input w3-border-teal w3-margin-bottom w3-right-align" name="remainAddress" style="resize: vertical;" placeholder="آدرس را وارد کنید"></textarea>
                            </label>
                        </div>
                        <div class="w3-third w3-padding">
                            <label class="w3-validate">شهر
                                <select id="Shahrestan" class="w3-select" name="city">
                                    <option value="" disabled selected>شهر را انتخاب کنید</option>
                                </select>
                            </label>
                        </div>
                        <div class="w3-third w3-padding">
                            <label class="w3-validate">استان
                                <select id='region' onchange="cityAndRegionSelection(this.id ,'Shahrestan')" name="region" class="w3-select" >
                                    <option data-cities="" value="" disabled selected>استان را انتخاب کنید</option>
                                    <option data-cities="آذرشهر ,اسکو ,اهر ,بستان‌آباد ,بناب ,تبریز ,جلفا ,چاراویماق ,سراب ,شبستر ,عجب‌شیر ,کلیبر ,مراغه ,مرند ,ملکان ,میانه ,ورزقان ,هریس ,هشترود" value="آذربایجان شرقی">آذربایجان شرقی</option>
                                    <option data-cities="ارومیه ,اشنویه ,بوکان ,پیرانشهر ,تکاب ,چالدران ,خوی ,سردشت ,سلماس ,شاهین‌دژ ,ماکو ,مهاباد ,میاندوآب ,نقده" value="آذربایجان غربی">آذربایجان غربی</option>
                                    <option data-cities="اردبیل ,بیله‌سوار ,پارس‌آباد ,خلخال ,کوثر ,گِرمی ,مِشگین‌شهر ,نَمین ,نیر" value="اردبیل">اردبیل</option>
                                    <option data-cities="آران و بیدگل ,اردستان ,اصفهان ,برخوار و میمه ,تیران و کرون ,چادگان ,خمینی‌شهر ,خوانسار ,سمیرم ,شهرضا ,سمیرم سفلی ,فریدن ,فریدون‌شهر ,فلاورجان ,کاشان ,گلپایگان ,لنجان ,مبارکه ,نائین ,نجف‌آباد ,نطنز" value="اصفهان">اصفهان</option>
                                    <option data-cities="آبدانان ,ایلام ,ایوان ,دره‌شهر ,دهلران ,شیروان و چرداول ,مهران" value="ایلام">ایلام</option>
                                    <option data-cities="بوشهر ,تنگستان ,جم ,دشتستان ,دشتی,دیر ,دیلم ,کنگان ,گناوه" value="بوشهر">بوشهر</option>
                                    <option data-cities="اسلام‌شهر ,پاکدشت ,تهران ,دماوند ,رباط‌کریم ,ری ,ساوجبلاغ ,شمیرانات ,شهریار ,فیروزکوه ,کرج ,نظرآباد ,ورامین" value="تهران">تهران</option>
                                    <option data-cities="اردل ,بروجن ,شهرکرد ,فارسان ,کوهرنگ ,لردگان" value="چهارمحال و بختیاری">چهارمحال و بختیاری</option>
                                    <option data-cities="بیرجند ,درمیان ,سرایان ,سربیشه ,فردوس ,قائنات,نهبندان" value="خراسان جنوبی">خراسان جنوبی</option>
                                    <option data-cities="بردسکن ,تایباد ,تربت جام ,تربت حیدریه ,چناران ,خلیل‌آباد ,خواف ,درگز ,رشتخوار ,سبزوار ,سرخس ,فریمان ,قوچان ,کاشمر ,کلات ,گناباد ,مشهد ,مه ولات ,نیشابور" value="خراسان رضوی">خراسان رضوی</option>
                                    <option data-cities="اسفراین ,بجنورد ,جاجرم ,شیروان ,فاروج ,مانه و سملقان" value="خراسان شمالی">خراسان شمالی</option>
                                    <option data-cities="آبادان ,امیدیه ,اندیمشک ,اهواز ,ایذه ,باغ‌ملک ,بندر ماهشهر ,بهبهان ,خرمشهر ,دزفول ,دشت آزادگان ,رامشیر ,رامهرمز ,شادگان ,شوش ,شوشتر ,گتوند ,لالی ,مسجد سلیمان,هندیجان " value="خوزستان">خوزستان</option>
                                    <option data-cities="ابهر ,ایجرود ,خدابنده ,خرمدره ,زنجان ,طارم ,ماه‌نشان" value="زنجان">زنجان</option>
                                    <option data-cities="دامغان ,سمنان ,شاهرود ,گرمسار ,مهدی‌شهر" value="سمنان">سمنان</option>
                                    <option data-cities="ایرانشهر ,چابهار ,خاش ,دلگان ,زابل ,زاهدان ,زهک ,سراوان ,سرباز ,کنارک ,نیک‌شهر" value="سیستان و بلوچستان">سیستان و بلوچستان</option>
                                    <option data-cities="آباده ,ارسنجان ,استهبان ,اقلید ,بوانات ,پاسارگاد ,جهرم ,خرم‌بید ,خنج ,داراب ,زرین‌دشت ,سپیدان ,شیراز ,فراشبند ,فسا ,فیروزآباد ,قیر و کارزین ,کازرون ,لارستان ,لامِرد ,مرودشت ,ممسنی ,مهر ,نی‌ریز" value="فارس">فارس</option>
                                    <option data-cities="آبیک ,البرز ,بوئین‌زهرا ,تاکستان ,قزوین" value="قزوین">قزوین</option>
                                    <option data-cities="قم" value="قم">قم</option>
                                    <option data-cities="بانه ,بیجار ,دیواندره ,سروآباد ,سقز ,سنندج ,قروه ,کامیاران ,مریوان" value="کردستان">کردستان</option>
                                    <option data-cities="بافت ,بردسیر ,بم ,جیرفت ,راور ,رفسنجان ,رودبار جنوب ,زرند ,سیرجان ,شهر بابک ,عنبرآباد ,قلعه گنج ,کرمان ,کوهبنان ,کهنوج ,منوجان" value="کرمان">کرمان</option>
                                    <option data-cities="اسلام‌آباد غرب ,پاوه ,ثلاث باباجانی ,جوانرود ,دالاهو ,روانسر ,سرپل ذهاب ,سنقر ,صحنه ,قصر شیرین ,کرمانشاه ,کنگاور ,گیلان غرب ,هرسین" value="کرمانشاه">کرمانشاه</option>
                                    <option data-cities="بویراحمد ,بهمئی ,دنا ,کهگیلویه ,گچساران" value="کهگیلویه و بویراحمد">کهگیلویه و بویراحمد</option>
                                    <option data-cities="آزادشهر ,آق‌قلا ,بندر گز ,ترکمن ,رامیان ,علی‌آباد ,کردکوی ,کلاله ,گرگان ,گنبد کاووس ,مراوه‌تپه ,مینودشت">گلستان</option>
                                    <option data-cities="آستارا ,آستانه اشرفیه ,اَملَش ,بندر انزلی ,رشت ,رضوانشهر ,رودبار ,رودسر ,سیاهکل ,شَفت ,صومعه‌سرا ,طوالش ,فومَن ,لاهیجان ,لنگرود ,ماسال" value="گیلان">گیلان</option>
                                    <option data-cities="ازنا ,الیگودرز ,بروجرد ,پل‌دختر ,خرم‌آباد ,دورود ,دلفان ,سلسله ,کوهدشت" value="لرستان">لرستان</option>
                                    <option data-cities="آمل ,بابل ,بابلسر ,بهشهر ,تنکابن ,جویبار ,چالوس ,رامسر ,ساری ,سوادکوه ,قائم‌شهر ,گلوگاه ,محمودآباد ,نکا ,نور ,نوشهر" value="مازندران">مازندران</option>
                                    <option data-cities="آشتیان ,اراک ,تفرش ,خمین ,دلیجان ,زرندیه ,ساوه ,شازند ,کمیجان ,محلات" value="مرکزی">مرکزی</option>
                                    <option data-cities="ابوموسی ,بستک ,بندر عباس ,بندر لنگه ,جاسک ,حاجی‌آباد ,شهرستان خمیر ,رودان  ,قشم ,گاوبندی ,میناب" value="هرمزگان">هرمزگان</option>
                                    <option data-cities="اسدآباد ,بهار ,تویسرکان ,رزن ,کبودرآهنگ ,ملایر ,نهاوند ,همدان" value="همدان">همدان</option>
                                    <option data-cities="ابرکوه ,اردکان ,بافق ,تفت ,خاتم ,صدوق ,طبس ,مهریز ,مِیبُد ,یزد" value="یزد">یزد</option>
                                </select>
                            </label>
                        </div>
                    </div>
                    <label class="w3-right"><b>سایر توضیحات</b></label>
                        <textarea style="resize:vertical;" class="w3-input w3-border-teal w3-margin-bottom w3-right-align"
                                  placeholder="یک پاراگراف در مورد شرکت خود بنویسید" name="summury"></textarea>
                    <button class="w3-btn w3-btn-block w3-green" type="submit">ثبت ویرایش</button>
                </div>
            </form>
        </div>
    </div>
</div>

<hr class="w3-border-blue w3-margin">
<div class="w3-container w3-section">
    <p class="w3-right-align"><b>موقعیت‌های شغلی برای استخدام در این شرکت</b></p>

    <div class="w3-btn fa fa-plus w3-blue-grey" onclick="document.getElementById('addJob').style.display='block'"></div>
    <table class="w3-table-all">
        <tr class="w3-blue-grey">
            <td class="w3-center"><b>عنوان شغل</b></td>
            <td class="w3-center"><b>جنسیت</b></td>
            <td class="w3-center"><b>تعداد نفرات لازم</b></td>
            <td class="w3-center"><b>نوع قرارداد</b></td>
            <td class="w3-center"><b>میزان حقوق</b></td>
            <td class="w3-center"><b>توانایی‌های لازم</b></td>
            <td class="w3-center"><b>سایر توضیحات</b></td>
        </tr>
        <tr>
            <td class="w3-center">برنامه نویس</td>
            <td class="w3-center">مرد</td>
            <td class="w3-center">5</td>
            <td class="w3-center">پروژه‌ای</td>
            <td class="w3-center">2,000,000 تومان</td>
            <td class="w3-center">اندروید,sqlite</td>
            <td class="w3-center">روحیه کار تیمی بالا یکی از ملزومات کار ماست</td>
        </tr>
        <tr>
            <td class="w3-center">برنامه نویس</td>
            <td class="w3-center">مرد</td>
            <td class="w3-center">5</td>
            <td class="w3-center">پروژه‌ای</td>
            <td class="w3-center">2,000,000 تومان</td>
            <td class="w3-center">اندروید,sqlite</td>
            <td class="w3-center">روحیه کار تیمی بالا یکی از ملزومات کار ماست</td>
        </tr>
        <tr>
            <td class="w3-center">برنامه نویس</td>
            <td class="w3-center">مرد</td>
            <td class="w3-center">5</td>
            <td class="w3-center">پروژه‌ای</td>
            <td class="w3-center">2,000,000 تومان</td>
            <td class="w3-center">اندروید,sqlite</td>
            <td class="w3-center">روحیه کار تیمی بالا یکی از ملزومات کار ماست</td>
        </tr>
    </table>
</div>

<div id="addJob" class="w3-modal">
    <div class="w3-modal-content w3-card-8 w3-animate-zoom w3-round-medium" style="max-width:600px">
        <header class="w3-container w3-teal w3-right-align">
            <h1>تعریف موقعیت شغلی</h1>
        </header>
        <div class="w3-container">
            <div class="w3-section">
                <input class="w3-input w3-border-teal w3-center" type="text" id="jobTitle" name="jobTitle" placeholder="عنوان شغل">
                <div class="w3-row">
                    <select class="w3-select w3-center w3-half" style="margin-top: 1.6%" id="sex" name="sex">
                        <option value="" disabled selected>جنسیت</option>
                        <option value="مرد">مرد</option>
                        <option value="زن">زن</option>
                        <option value="مرد و زن">مرد و زن</option>
                    </select>
                    <input class="w3-input w3-border-teal w3-center w3-half" id="capacity" name="capacity" type="number" placeholder="تعداد">
                </div>
                <div class="w3-row">
                    <select class="w3-select w3-center w3-quarter" style="margin-top: 1.6%" id="contributeKind" name="contributeKind">
                        <option value="" disabled selected>نوع قرارداد</option>
                        <option value="دائمی">دائمی</option>
                        <option value="فراردادی">فراردادی</option>
                        <option value="پروژه‌ای">پروژه‌ای</option>
                        <option value="فصلی">فصلی</option>
                    </select>
                    <input class="w3-input w3-border-teal w3-center w3-half" id="salary" name="salary" type="number" placeholder="حقوق">
                    <b class="w3-quarter w3-center w3-margin-top">&nbsp;تومان</b>
                </div>
                <input class="w3-input w3-border-teal w3-center" type="text" id="skills" name="skills" placeholder="توانایی‌ها. آنها را با , از هم جدا کنید">
                <textarea class="w3-input w3-border-teal w3-center" id="otherRequirment" name="otherRequirment" style="resize:vertical;"
                          placeholder="سایر توضیحات"></textarea>
                <br>
                <button class="w3-btn w3-green w3-right" type="button" onclick="addNewJob()">ثبت</button>
                <button class="w3-btn w3-red w3-left" type="button"
                        onclick="document.getElementById('addJob').style.display = 'none'">لغو
                </button>
                <br>
            </div>
        </div>
    </div>
</div>

<footer class="w3-green w3-right-align w3-container">
    <div class="w3-row">
        <ul class="w3-third w3-margin w3-right" style="list-style-type: none;">
            <li><a class="w3-green w3-btn w3-hover-text-amber" href="index.html">خانه</a></li>
            <li><a class="w3-green w3-btn w3-hover-text-amber"
                   onclick="document.getElementById('registerModal').style.display='block'">ثبت نام</a></li>
            <li><a class="w3-green w3-btn w3-hover-text-amber"
                   onclick="document.getElementById('loginModal').style.display='block'">ورود</a></li>
            <li><a class="w3-green w3-btn w3-hover-text-amber" href="aboutus.html">درباره ما</a></li>
        </ul>
        <div class="w3-quarter w3-right w3-margin"><p>تمامي آگهی های اين سایت، توسط افراد حقیقی و حقوقی درج می شود و
            فعاليت‌هاي اين سايت تابع قوانين و مقررات جمهوري اسلامي ايران است</p></div>
    </div>
    <div>
        <p class="w3-center">تمامی حقوق این وبسایت متعلق به دانشگاه شهید بهشتی میباشد و استفاده از مطالب همراه با ذکر
            منبع بلا مانع است</p>
    </div>
</footer>


<script type="text/javascript" src="js/commonFunctions.js"></script>
<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
    function submitResume(){
        $.ajax({
            url: "/JobSocialNetwork/AddEmployerResumeController",
            type: 'POST',
            data: {
                fromDate : $('#fromDate').val(),
                toDate : $('#toDate').val(),
                title : $('#title').val(),
                description : $('#description').val()
            },
            success: function (data, textStatus, jqXHR) {
                
            }
        });
    }
    
    function addNewJob(){
        $.ajax({
            url: "/JobSocialNetwork/AddNewJobController",
            type: 'POST',
            data: {
                jobTitle : $('#jobTitle').val(),
                sex : $('#sex').val(),
                capacity : $('#capacity').val(),
                contributeKind : $('#contributeKind').val(),
                salary : $('#salary').val(),
                skills : $('#skills').val(),
                otherRequirment : $('#otherRequirment').val()
            },
            success: function (data, textStatus, jqXHR) {
                
            }
        });
    }
</script>
</body>
</html>