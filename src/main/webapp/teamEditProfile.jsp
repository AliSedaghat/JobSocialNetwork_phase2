<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="outSourceTeamResumeBean" class="viewmodel.OutSourceTeamResumeBean" scope="request"/>
<jsp:useBean id="outSourceTeamInformationBean" class="viewmodel.OutSourceTeamInformationBean" scope="request"/>
<jsp:useBean id="passwordChangeBean" class="viewmodel.PasswordChangeBean" scope="request"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ویرایش اطلاعات</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
</head>
<body>

<header class="w3-card-2">
    <ul class="w3-navbar w3-green">
        <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" href="notification.html">اعلان‌ها</a></li>
        <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" href="search.html">جستجو</a></li>
        <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" href="index.html">خروج</a></li>
    </ul>
</header>

<div class="w3-row">
    <div class="w3-half w3-left w3-margin-top w3-margin-bottom">
        <div class="w3-container">
            <p class="w3-right-align"><b>رزومه</b></p><hr class="w3-border-light-blue">
            <form class="w3-form">
                <label class="w3-right"><b>توانایی‌ها</b></label><br><br>
                <div id="tagArea1">
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                    <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                </div><br>

                <div class="w3-row">
                    <div class="w3-btn w3-hover-teal w3-white w3-right fa fa-arrow-right w3-col s4 m2 l2 w3-xlarge" onclick="createTag('tagInput1','tagArea1')"></div>
                    <label><input id="tagInput1" type="text" class="w3-input w3-border-teal w3-left w3-col s8 m10 l10 w3-small"></label>
                </div>

                <label class="w3-right"><b>سوابق</b></label><br>
                <div class="w3-card-2 w3-row w3-right-align w3-leftbar w3-border-light-blue w3-margin">
                    <div class="w3-third w3-padding">
                        <label class="w3-validate">تاریخ
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="date" value="${outSourceTeamResumeBean.fromDate}">
                        </label>
                        <label class="w3-validate">تاریخ
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="date" value="${outSourceTeamResumeBean.tillDate}">
                        </label>
                    </div>
                    <div class="w3-twothird w3-padding">
                        <label class="w3-validate">عنوان پروژه
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="text" value="${outSourceTeamResumeBean.projectTitle}">
                        </label>
                        <label class="w3-validate">کارفرما
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="text" value="${outSourceTeamResumeBean.employer}">
                        </label>
                    </div>
                </div>
                <div class="w3-btn-floating w3-card-2 w3-teal w3-right">+</div><br><br><br>
                
                <button class="w3-btn w3-btn-block w3-green">ثبت روزمه</button>
            </form>
        </div>
    </div>

    <div class="w3-half w3-right w3-border-left w3-border-blue w3-margin-top w3-margin-bottom">
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
            <p class="w3-right-align"><b>اطلاعات پایه</b></p><hr class="w3-border-light-blue">

            <form class="w3-right-align w3-form" method="post" action="/JobSocialNetwork/TeamEditProfilePrimaryInfoController" enctype="multipart/form-data">
                <div class="w3-section">
                    
                    <label class="w3-right w3-right-align"><b>یک عکس انتخاب کنید</b>
                        <input class="w3-left" name="imageFile" type="file" onchange="showImage(this, 'userImage')">
                    </label>
                    <br/><br/>
                    
                    <label class="w3-right"><b>نام گروه</b></label>
                    <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" name="name" type="text" 
                           placeholder="نام گروه خود را وارد کنید" value="${outSourceTeamInformationBean.teamName}">

                    <label><b class="w3-right">شماره تلفن</b>
                        <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" name="phone" type="tel" 
                               placeholder="تلفن خود را وارد کنید" value="${outSourceTeamInformationBean.phoneNum}">
                    </label>

                    <label><b class="w3-right">ایمیل</b>
                        <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" name="email" type="email"
                               value="${outSourceTeamInformationBean.email}">
                    </label>

                    <label class="w3-right"><b>آدرس</b></label><br>
                    <div class="w3-row">
                        <div class="w3-third w3-padding">
                            <label class="w3-validate">ادامه آدرس
                                <textarea class="w3-input w3-border-teal w3-margin-bottom w3-right-align" name="remainAddress" style="resize: vertical;" placeholder="آدرس را وارد کنید">${outSourceTeamInformationBean.rmainAddr}</textarea>
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
                                <select id="region" onchange="cityAndRegionSelection(this.id ,'Shahrestan')" name="region" class="w3-select" >
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
                          placeholder="یک پاراگراف در مورد خود بنویسید" name="summury">${outSourceTeamResumeBean.otherDesc}</textarea>

                    <button class="w3-btn w3-btn-block w3-green" type="submit">ثبت ویرایش</button>
                </div>
            </form>
        </div>
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

<script type="text/javascript" src="js/commonFunctions.js"></script>

</body>
</html>