<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>جستجو</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
</head>
<body>
<header class="w3-card-2">
    <ul class="w3-navbar w3-green">
        <li class="w3-right w3-margin-8"><a
                class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge"
                onclick="document.getElementById('registerModal').style.display='block'">ثبت نام</a></li>
        <li class="w3-right w3-margin-8"><a
                class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge"
                onclick="document.getElementById('loginModal').style.display='block'">ورود</a></li>
        <li class="w3-right w3-margin-8"><a
                class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" href="search.html">جستجو</a>
        </li>
    </ul>
</header>

<form>
    <div class="w3-right-align">
        <div class="w3-section w3-container">
            <div class="w3-border w3-card-2">
                <ul class="w3-navbar w3-border-bottom w3-light-grey">
                    <li><a class="w3-btn testbtn w3-blue-grey"
                           onclick="openSearchSection(event, 'jobFinderSearchSection')">کارجویان</a></li>
                    <li><a class="w3-btn testbtn w3-blue-grey"
                           onclick="openSearchSection(event, 'employerSearchSection')">کارفرمایان</a></li>
                    <li><a class="w3-btn testbtn w3-blue-grey" onclick="openSearchSection(event, 'teamSearchSection')">تیم
                        های برون سپاری</a></li>
                    <li class="w3-margin-left" style="margin-top: 0.5%"><b>جستجو در</b></li>
                    <li class="w3-right"><label><input class="w3-input w3-border-teal w3-right-align" type="text"
                                                       required placeholder="عبارت موردنظر را جستجو کنید"></label></li>
                </ul>

                <div id="jobFinderSearchSection" class="w3-container w3-padding searchSection w3-animate-zoom"
                     style="display: block;">
                    <div class="w3-row">
                        <div class="w3-right">
                            <label><b>رزومه‌های ارسال شده پس از تاریخ</b>
                                <input class="w3-input w3-border-teal w3-right-align" type="date">
                            </label>
                        </div>
                        <div class="w3-third w3-right w3-padding w3-margin-right">
                            <label class="w3-right"><b>توانایی‌ها</b></label>
                            <br>
                            <br>
                            <div id="tagArea1">
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small" onclick="this.parentElement.style.display='none'">&nbsp;&nbsp;x</span>
                                </div>
                            </div>
                            <br>
                            <div class="w3-row">
                                <div class="w3-btn w3-hover-teal w3-white w3-right fa fa-arrow-right w3-col s4 m2 l2 w3-xlarge"
                                     onclick="createTag('tagInput1','tagArea1')"></div>
                                <label><input id="tagInput1" type="text"
                                              class="w3-input w3-border-teal w3-left w3-col s8 m10 l10 w3-small"></label>
                            </div>
                        </div>
                        <label class="w3-right"><b>آدرس</b></label><br>
                        <div class="">
                            <div class="w3-third w3-padding w3-right">
                                <label class="w3-validate">استان
                                    <select onchange="cityAndRegionSelection(this.value, 'Shahrestan1')" class="w3-select" >
                                        <option value="" disabled selected>استان را انتخاب کنید</option>
                                        <option value="آذرشهر ,اسکو ,اهر ,بستان‌آباد ,بناب ,تبریز ,جلفا ,چاراویماق ,سراب ,شبستر ,عجب‌شیر ,کلیبر ,مراغه ,مرند ,ملکان ,میانه ,ورزقان ,هریس ,هشترود">آذربایجان شرقی</option>
                                        <option value="ارومیه ,اشنویه ,بوکان ,پیرانشهر ,تکاب ,چالدران ,خوی ,سردشت ,سلماس ,شاهین‌دژ ,ماکو ,مهاباد ,میاندوآب ,نقده">آذربایجان غربی</option>
                                        <option value="اردبیل ,بیله‌سوار ,پارس‌آباد ,خلخال ,کوثر ,گِرمی ,مِشگین‌شهر ,نَمین ,نیر">اردبیل</option>
                                        <option value="آران و بیدگل ,اردستان ,اصفهان ,برخوار و میمه ,تیران و کرون ,چادگان ,خمینی‌شهر ,خوانسار ,سمیرم ,شهرضا ,سمیرم سفلی ,فریدن ,فریدون‌شهر ,فلاورجان ,کاشان ,گلپایگان ,لنجان ,مبارکه ,نائین ,نجف‌آباد ,نطنز">اصفهان</option>
                                        <option value="آبدانان ,ایلام ,ایوان ,دره‌شهر ,دهلران ,شیروان و چرداول ,مهران">ایلام</option>
                                        <option value="بوشهر ,تنگستان ,جم ,دشتستان ,دشتی,دیر ,دیلم ,کنگان ,گناوه">بوشهر</option>
                                        <option value="اسلام‌شهر ,پاکدشت ,تهران ,دماوند ,رباط‌کریم ,ری ,ساوجبلاغ ,شمیرانات ,شهریار ,فیروزکوه ,کرج ,نظرآباد ,ورامین">تهران</option>
                                        <option value="اردل ,بروجن ,شهرکرد ,فارسان ,کوهرنگ ,لردگان">چهارمحال و بختیاری</option>
                                        <option value="بیرجند ,درمیان ,سرایان ,سربیشه ,فردوس ,قائنات,نهبندان">خراسان جنوبی</option>
                                        <option value="بردسکن ,تایباد ,تربت جام ,تربت حیدریه ,چناران ,خلیل‌آباد ,خواف ,درگز ,رشتخوار ,سبزوار ,سرخس ,فریمان ,قوچان ,کاشمر ,کلات ,گناباد ,مشهد ,مه ولات ,نیشابور">خراسان رضوی</option>
                                        <option value="اسفراین ,بجنورد ,جاجرم ,شیروان ,فاروج ,مانه و سملقان">خراسان شمالی</option>
                                        <option value="آبادان ,امیدیه ,اندیمشک ,اهواز ,ایذه ,باغ‌ملک ,بندر ماهشهر ,بهبهان ,خرمشهر ,دزفول ,دشت آزادگان ,رامشیر ,رامهرمز ,شادگان ,شوش ,شوشتر ,گتوند ,لالی ,مسجد سلیمان,هندیجان ">خوزستان</option>
                                        <option value="ابهر ,ایجرود ,خدابنده ,خرمدره ,زنجان ,طارم ,ماه‌نشان">زنجان</option>
                                        <option value="دامغان ,سمنان ,شاهرود ,گرمسار ,مهدی‌شهر">سمنان</option>
                                        <option value="ایرانشهر ,چابهار ,خاش ,دلگان ,زابل ,زاهدان ,زهک ,سراوان ,سرباز ,کنارک ,نیک‌شهر">سیستان و بلوچستان</option>
                                        <option value="آباده ,ارسنجان ,استهبان ,اقلید ,بوانات ,پاسارگاد ,جهرم ,خرم‌بید ,خنج ,داراب ,زرین‌دشت ,سپیدان ,شیراز ,فراشبند ,فسا ,فیروزآباد ,قیر و کارزین ,کازرون ,لارستان ,لامِرد ,مرودشت ,ممسنی ,مهر ,نی‌ریز">فارس</option>
                                        <option value="آبیک ,البرز ,بوئین‌زهرا ,تاکستان ,قزوین">قزوین</option>
                                        <option value="قم">قم</option>
                                        <option value="بانه ,بیجار ,دیواندره ,سروآباد ,سقز ,سنندج ,قروه ,کامیاران ,مریوان">کردستان</option>
                                        <option value="بافت ,بردسیر ,بم ,جیرفت ,راور ,رفسنجان ,رودبار جنوب ,زرند ,سیرجان ,شهر بابک ,عنبرآباد ,قلعه گنج ,کرمان ,کوهبنان ,کهنوج ,منوجان">کرمان</option>
                                        <option value="اسلام‌آباد غرب ,پاوه ,ثلاث باباجانی ,جوانرود ,دالاهو ,روانسر ,سرپل ذهاب ,سنقر ,صحنه ,قصر شیرین ,کرمانشاه ,کنگاور ,گیلان غرب ,هرسین">کرمانشاه</option>
                                        <option value="بویراحمد ,بهمئی ,دنا ,کهگیلویه ,گچساران">کهگیلویه و بویراحمد</option>
                                        <option value="آزادشهر ,آق‌قلا ,بندر گز ,ترکمن ,رامیان ,علی‌آباد ,کردکوی ,کلاله ,گرگان ,گنبد کاووس ,مراوه‌تپه ,مینودشت">گلستان</option>
                                        <option value="آستارا ,آستانه اشرفیه ,اَملَش ,بندر انزلی ,رشت ,رضوانشهر ,رودبار ,رودسر ,سیاهکل ,شَفت ,صومعه‌سرا ,طوالش ,فومَن ,لاهیجان ,لنگرود ,ماسال">گیلان</option>
                                        <option value="ازنا ,الیگودرز ,بروجرد ,پل‌دختر ,خرم‌آباد ,دورود ,دلفان ,سلسله ,کوهدشت">لرستان</option>
                                        <option value="آمل ,بابل ,بابلسر ,بهشهر ,تنکابن ,جویبار ,چالوس ,رامسر ,ساری ,سوادکوه ,قائم‌شهر ,گلوگاه ,محمودآباد ,نکا ,نور ,نوشهر">مازندران</option>
                                        <option value="آشتیان ,اراک ,تفرش ,خمین ,دلیجان ,زرندیه ,ساوه ,شازند ,کمیجان ,محلات">مرکزی</option>
                                        <option value="ابوموسی ,بستک ,بندر عباس ,بندر لنگه ,جاسک ,حاجی‌آباد ,شهرستان خمیر ,رودان  ,قشم ,گاوبندی ,میناب">هرمزگان</option>
                                        <option value="اسدآباد ,بهار ,تویسرکان ,رزن ,کبودرآهنگ ,ملایر ,نهاوند ,همدان">همدان</option>
                                        <option value="ابرکوه ,اردکان ,بافق ,تفت ,خاتم ,صدوق ,طبس ,مهریز ,مِیبُد ,یزد">یزد</option>
                                    </select>
                                </label>
                            </div>
                            <div class="w3-third w3-padding w3-right">
                                <label class="w3-validate">شهر
                                    <select id="Shahrestan1" class="Shahrestan w3-select" >
                                        <option value="" disabled selected>شهر را انتخاب کنید</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                    </div>
                    <button class="w3-btn w3-btn-block w3-green w3-margin-top" type="button"
                            onclick="showResult('jobFinderResult')">جستجو
                    </button>
                </div>

                <div id="employerSearchSection" class="w3-container w3-padding searchSection w3-animate-zoom"
                     style="display: none;">
                    <form class="w3-form">
                        <div class="w3-right">
                            <input class="w3-input w3-border-teal w3-right w3-center" type="text"
                                   placeholder="نام کارفرما - شرکت">
                            <select class="w3-select" name="sex">
                                <option value="" disabled selected>جنسیت</option>
                                <option value="1">مرد</option>
                                <option value="2">زن</option>
                                <option value="3">مرد و زن</option>
                            </select>
                            <select class="w3-select" name="dealKind">
                                <option value="" disabled selected>نوع قرارداد</option>
                                <option value="1">دائمی</option>
                                <option value="2">فراردادی</option>
                                <option value="3">پروژه‌ای</option>
                                <option value="4">فصلی</option>
                            </select>
                            <div class="w3-row">
                                <b class="w3-quarter w3-right-align w3-margin-top">&nbsp;تومان</b>
                                <input class="w3-input w3-border-teal w3-center w3-right w3-half" type="number"
                                       placeholder="حداقل حقوق">
                            </div>
                        </div>
                        <div class="w3-third w3-right w3-padding w3-margin-right">
                            <label class="w3-right"><b>توانایی‌ها</b></label>
                            <br>
                            <br>
                            <div id="tagArea2">
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                                <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                        class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            </div>
                            <br>
                            <div class="w3-row">
                                <div class="w3-btn w3-hover-teal w3-white w3-right fa fa-arrow-right w3-col s4 m2 l2 w3-xlarge"
                                     onclick="createTag('tagInput2','tagArea2')"></div>
                                <label><input id="tagInput2" type="text"
                                              class="w3-input w3-border-teal w3-left w3-col s8 m10 l10 w3-small"></label>
                            </div>
                        </div>
                        <label class="w3-right"><b>آدرس</b></label><br>
                        <div class="">
                            <div class="w3-third w3-padding w3-right">
                                <label class="w3-validate">استان
                                    <select onchange="cityAndRegionSelection(this.value, 'Shahrestan2')" class="w3-select" >
                                        <option value="" disabled selected>استان را انتخاب کنید</option>
                                        <option value="آذرشهر ,اسکو ,اهر ,بستان‌آباد ,بناب ,تبریز ,جلفا ,چاراویماق ,سراب ,شبستر ,عجب‌شیر ,کلیبر ,مراغه ,مرند ,ملکان ,میانه ,ورزقان ,هریس ,هشترود">آذربایجان شرقی</option>
                                        <option value="ارومیه ,اشنویه ,بوکان ,پیرانشهر ,تکاب ,چالدران ,خوی ,سردشت ,سلماس ,شاهین‌دژ ,ماکو ,مهاباد ,میاندوآب ,نقده">آذربایجان غربی</option>
                                        <option value="اردبیل ,بیله‌سوار ,پارس‌آباد ,خلخال ,کوثر ,گِرمی ,مِشگین‌شهر ,نَمین ,نیر">اردبیل</option>
                                        <option value="آران و بیدگل ,اردستان ,اصفهان ,برخوار و میمه ,تیران و کرون ,چادگان ,خمینی‌شهر ,خوانسار ,سمیرم ,شهرضا ,سمیرم سفلی ,فریدن ,فریدون‌شهر ,فلاورجان ,کاشان ,گلپایگان ,لنجان ,مبارکه ,نائین ,نجف‌آباد ,نطنز">اصفهان</option>
                                        <option value="آبدانان ,ایلام ,ایوان ,دره‌شهر ,دهلران ,شیروان و چرداول ,مهران">ایلام</option>
                                        <option value="بوشهر ,تنگستان ,جم ,دشتستان ,دشتی,دیر ,دیلم ,کنگان ,گناوه">بوشهر</option>
                                        <option value="اسلام‌شهر ,پاکدشت ,تهران ,دماوند ,رباط‌کریم ,ری ,ساوجبلاغ ,شمیرانات ,شهریار ,فیروزکوه ,کرج ,نظرآباد ,ورامین">تهران</option>
                                        <option value="اردل ,بروجن ,شهرکرد ,فارسان ,کوهرنگ ,لردگان">چهارمحال و بختیاری</option>
                                        <option value="بیرجند ,درمیان ,سرایان ,سربیشه ,فردوس ,قائنات,نهبندان">خراسان جنوبی</option>
                                        <option value="بردسکن ,تایباد ,تربت جام ,تربت حیدریه ,چناران ,خلیل‌آباد ,خواف ,درگز ,رشتخوار ,سبزوار ,سرخس ,فریمان ,قوچان ,کاشمر ,کلات ,گناباد ,مشهد ,مه ولات ,نیشابور">خراسان رضوی</option>
                                        <option value="اسفراین ,بجنورد ,جاجرم ,شیروان ,فاروج ,مانه و سملقان">خراسان شمالی</option>
                                        <option value="آبادان ,امیدیه ,اندیمشک ,اهواز ,ایذه ,باغ‌ملک ,بندر ماهشهر ,بهبهان ,خرمشهر ,دزفول ,دشت آزادگان ,رامشیر ,رامهرمز ,شادگان ,شوش ,شوشتر ,گتوند ,لالی ,مسجد سلیمان,هندیجان ">خوزستان</option>
                                        <option value="ابهر ,ایجرود ,خدابنده ,خرمدره ,زنجان ,طارم ,ماه‌نشان">زنجان</option>
                                        <option value="دامغان ,سمنان ,شاهرود ,گرمسار ,مهدی‌شهر">سمنان</option>
                                        <option value="ایرانشهر ,چابهار ,خاش ,دلگان ,زابل ,زاهدان ,زهک ,سراوان ,سرباز ,کنارک ,نیک‌شهر">سیستان و بلوچستان</option>
                                        <option value="آباده ,ارسنجان ,استهبان ,اقلید ,بوانات ,پاسارگاد ,جهرم ,خرم‌بید ,خنج ,داراب ,زرین‌دشت ,سپیدان ,شیراز ,فراشبند ,فسا ,فیروزآباد ,قیر و کارزین ,کازرون ,لارستان ,لامِرد ,مرودشت ,ممسنی ,مهر ,نی‌ریز">فارس</option>
                                        <option value="آبیک ,البرز ,بوئین‌زهرا ,تاکستان ,قزوین">قزوین</option>
                                        <option value="قم">قم</option>
                                        <option value="بانه ,بیجار ,دیواندره ,سروآباد ,سقز ,سنندج ,قروه ,کامیاران ,مریوان">کردستان</option>
                                        <option value="بافت ,بردسیر ,بم ,جیرفت ,راور ,رفسنجان ,رودبار جنوب ,زرند ,سیرجان ,شهر بابک ,عنبرآباد ,قلعه گنج ,کرمان ,کوهبنان ,کهنوج ,منوجان">کرمان</option>
                                        <option value="اسلام‌آباد غرب ,پاوه ,ثلاث باباجانی ,جوانرود ,دالاهو ,روانسر ,سرپل ذهاب ,سنقر ,صحنه ,قصر شیرین ,کرمانشاه ,کنگاور ,گیلان غرب ,هرسین">کرمانشاه</option>
                                        <option value="بویراحمد ,بهمئی ,دنا ,کهگیلویه ,گچساران">کهگیلویه و بویراحمد</option>
                                        <option value="آزادشهر ,آق‌قلا ,بندر گز ,ترکمن ,رامیان ,علی‌آباد ,کردکوی ,کلاله ,گرگان ,گنبد کاووس ,مراوه‌تپه ,مینودشت">گلستان</option>
                                        <option value="آستارا ,آستانه اشرفیه ,اَملَش ,بندر انزلی ,رشت ,رضوانشهر ,رودبار ,رودسر ,سیاهکل ,شَفت ,صومعه‌سرا ,طوالش ,فومَن ,لاهیجان ,لنگرود ,ماسال">گیلان</option>
                                        <option value="ازنا ,الیگودرز ,بروجرد ,پل‌دختر ,خرم‌آباد ,دورود ,دلفان ,سلسله ,کوهدشت">لرستان</option>
                                        <option value="آمل ,بابل ,بابلسر ,بهشهر ,تنکابن ,جویبار ,چالوس ,رامسر ,ساری ,سوادکوه ,قائم‌شهر ,گلوگاه ,محمودآباد ,نکا ,نور ,نوشهر">مازندران</option>
                                        <option value="آشتیان ,اراک ,تفرش ,خمین ,دلیجان ,زرندیه ,ساوه ,شازند ,کمیجان ,محلات">مرکزی</option>
                                        <option value="ابوموسی ,بستک ,بندر عباس ,بندر لنگه ,جاسک ,حاجی‌آباد ,شهرستان خمیر ,رودان  ,قشم ,گاوبندی ,میناب">هرمزگان</option>
                                        <option value="اسدآباد ,بهار ,تویسرکان ,رزن ,کبودرآهنگ ,ملایر ,نهاوند ,همدان">همدان</option>
                                        <option value="ابرکوه ,اردکان ,بافق ,تفت ,خاتم ,صدوق ,طبس ,مهریز ,مِیبُد ,یزد">یزد</option>
                                    </select>
                                </label>
                            </div>
                            <div class="w3-third w3-padding w3-right">
                                <label class="w3-validate">شهر
                                    <select id='Shahrestan2' class="w3-select" >
                                        <option value="" disabled selected>شهر را انتخاب کنید</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                        <button class="w3-btn w3-btn-block w3-green w3-margin-top" type="button"
                                onclick="showResult('employerResult')">جستجو
                        </button>
                    </form>
                </div>

                <div id="teamSearchSection" class="w3-container w3-padding searchSection w3-animate-zoom"
                     style="display: none;">
                    <div class="w3-third w3-right w3-padding w3-margin-right">
                        <label class="w3-right"><b>توانایی‌ها</b></label>
                        <br>
                        <br>
                        <div id="tagArea3">
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                            <div class="w3-card-2 w3-tag w3-blue w3-margin-2">مدیریت پروژه<span
                                    class="w3-closebtn w3-small">&nbsp;&nbsp;x</span></div>
                        </div>
                        <br>
                        <div class="w3-row">
                            <div class="w3-btn w3-hover-teal w3-white w3-right fa fa-arrow-right w3-col s4 m2 l2 w3-xlarge"
                                 onclick="createTag('tagInput3','tagArea3')"></div>
                            <label><input id="tagInput3" type="text"
                                          class="w3-input w3-border-teal w3-left w3-col s8 m10 l10 w3-small"></label>
                        </div>
                    </div>

                    <label class="w3-right"><b>آدرس</b></label><br>
                    <div class="">
                        <div class="w3-third w3-padding w3-right">
                            <label class="w3-validate">استان
                                <select onchange="cityAndRegionSelection(this.value, 'Shahrestan3')" class="w3-select" >
                                    <option value="" disabled selected>استان را انتخاب کنید</option>
                                    <option value="آذرشهر ,اسکو ,اهر ,بستان‌آباد ,بناب ,تبریز ,جلفا ,چاراویماق ,سراب ,شبستر ,عجب‌شیر ,کلیبر ,مراغه ,مرند ,ملکان ,میانه ,ورزقان ,هریس ,هشترود">آذربایجان شرقی</option>
                                    <option value="ارومیه ,اشنویه ,بوکان ,پیرانشهر ,تکاب ,چالدران ,خوی ,سردشت ,سلماس ,شاهین‌دژ ,ماکو ,مهاباد ,میاندوآب ,نقده">آذربایجان غربی</option>
                                    <option value="اردبیل ,بیله‌سوار ,پارس‌آباد ,خلخال ,کوثر ,گِرمی ,مِشگین‌شهر ,نَمین ,نیر">اردبیل</option>
                                    <option value="آران و بیدگل ,اردستان ,اصفهان ,برخوار و میمه ,تیران و کرون ,چادگان ,خمینی‌شهر ,خوانسار ,سمیرم ,شهرضا ,سمیرم سفلی ,فریدن ,فریدون‌شهر ,فلاورجان ,کاشان ,گلپایگان ,لنجان ,مبارکه ,نائین ,نجف‌آباد ,نطنز">اصفهان</option>
                                    <option value="آبدانان ,ایلام ,ایوان ,دره‌شهر ,دهلران ,شیروان و چرداول ,مهران">ایلام</option>
                                    <option value="بوشهر ,تنگستان ,جم ,دشتستان ,دشتی,دیر ,دیلم ,کنگان ,گناوه">بوشهر</option>
                                    <option value="اسلام‌شهر ,پاکدشت ,تهران ,دماوند ,رباط‌کریم ,ری ,ساوجبلاغ ,شمیرانات ,شهریار ,فیروزکوه ,کرج ,نظرآباد ,ورامین">تهران</option>
                                    <option value="اردل ,بروجن ,شهرکرد ,فارسان ,کوهرنگ ,لردگان">چهارمحال و بختیاری</option>
                                    <option value="بیرجند ,درمیان ,سرایان ,سربیشه ,فردوس ,قائنات,نهبندان">خراسان جنوبی</option>
                                    <option value="بردسکن ,تایباد ,تربت جام ,تربت حیدریه ,چناران ,خلیل‌آباد ,خواف ,درگز ,رشتخوار ,سبزوار ,سرخس ,فریمان ,قوچان ,کاشمر ,کلات ,گناباد ,مشهد ,مه ولات ,نیشابور">خراسان رضوی</option>
                                    <option value="اسفراین ,بجنورد ,جاجرم ,شیروان ,فاروج ,مانه و سملقان">خراسان شمالی</option>
                                    <option value="آبادان ,امیدیه ,اندیمشک ,اهواز ,ایذه ,باغ‌ملک ,بندر ماهشهر ,بهبهان ,خرمشهر ,دزفول ,دشت آزادگان ,رامشیر ,رامهرمز ,شادگان ,شوش ,شوشتر ,گتوند ,لالی ,مسجد سلیمان,هندیجان ">خوزستان</option>
                                    <option value="ابهر ,ایجرود ,خدابنده ,خرمدره ,زنجان ,طارم ,ماه‌نشان">زنجان</option>
                                    <option value="دامغان ,سمنان ,شاهرود ,گرمسار ,مهدی‌شهر">سمنان</option>
                                    <option value="ایرانشهر ,چابهار ,خاش ,دلگان ,زابل ,زاهدان ,زهک ,سراوان ,سرباز ,کنارک ,نیک‌شهر">سیستان و بلوچستان</option>
                                    <option value="آباده ,ارسنجان ,استهبان ,اقلید ,بوانات ,پاسارگاد ,جهرم ,خرم‌بید ,خنج ,داراب ,زرین‌دشت ,سپیدان ,شیراز ,فراشبند ,فسا ,فیروزآباد ,قیر و کارزین ,کازرون ,لارستان ,لامِرد ,مرودشت ,ممسنی ,مهر ,نی‌ریز">فارس</option>
                                    <option value="آبیک ,البرز ,بوئین‌زهرا ,تاکستان ,قزوین">قزوین</option>
                                    <option value="قم">قم</option>
                                    <option value="بانه ,بیجار ,دیواندره ,سروآباد ,سقز ,سنندج ,قروه ,کامیاران ,مریوان">کردستان</option>
                                    <option value="بافت ,بردسیر ,بم ,جیرفت ,راور ,رفسنجان ,رودبار جنوب ,زرند ,سیرجان ,شهر بابک ,عنبرآباد ,قلعه گنج ,کرمان ,کوهبنان ,کهنوج ,منوجان">کرمان</option>
                                    <option value="اسلام‌آباد غرب ,پاوه ,ثلاث باباجانی ,جوانرود ,دالاهو ,روانسر ,سرپل ذهاب ,سنقر ,صحنه ,قصر شیرین ,کرمانشاه ,کنگاور ,گیلان غرب ,هرسین">کرمانشاه</option>
                                    <option value="بویراحمد ,بهمئی ,دنا ,کهگیلویه ,گچساران">کهگیلویه و بویراحمد</option>
                                    <option value="آزادشهر ,آق‌قلا ,بندر گز ,ترکمن ,رامیان ,علی‌آباد ,کردکوی ,کلاله ,گرگان ,گنبد کاووس ,مراوه‌تپه ,مینودشت">گلستان</option>
                                    <option value="آستارا ,آستانه اشرفیه ,اَملَش ,بندر انزلی ,رشت ,رضوانشهر ,رودبار ,رودسر ,سیاهکل ,شَفت ,صومعه‌سرا ,طوالش ,فومَن ,لاهیجان ,لنگرود ,ماسال">گیلان</option>
                                    <option value="ازنا ,الیگودرز ,بروجرد ,پل‌دختر ,خرم‌آباد ,دورود ,دلفان ,سلسله ,کوهدشت">لرستان</option>
                                    <option value="آمل ,بابل ,بابلسر ,بهشهر ,تنکابن ,جویبار ,چالوس ,رامسر ,ساری ,سوادکوه ,قائم‌شهر ,گلوگاه ,محمودآباد ,نکا ,نور ,نوشهر">مازندران</option>
                                    <option value="آشتیان ,اراک ,تفرش ,خمین ,دلیجان ,زرندیه ,ساوه ,شازند ,کمیجان ,محلات">مرکزی</option>
                                    <option value="ابوموسی ,بستک ,بندر عباس ,بندر لنگه ,جاسک ,حاجی‌آباد ,شهرستان خمیر ,رودان  ,قشم ,گاوبندی ,میناب">هرمزگان</option>
                                    <option value="اسدآباد ,بهار ,تویسرکان ,رزن ,کبودرآهنگ ,ملایر ,نهاوند ,همدان">همدان</option>
                                    <option value="ابرکوه ,اردکان ,بافق ,تفت ,خاتم ,صدوق ,طبس ,مهریز ,مِیبُد ,یزد">یزد</option>
                                </select>
                            </label>
                        </div>
                        <div class="w3-third w3-padding w3-right">
                            <label class="w3-validate">شهر
                                <select id="Shahrestan3" class="w3-select" >
                                    <option value="" disabled selected>شهر را انتخاب کنید</option>
                                </select>
                            </label>
                        </div>
                    </div>

                    <button class="w3-btn w3-btn-block w3-green w3-margin-top"
                            onclick="showResult('teamResult')">جستجو</button>
                </div>
            </div>
        </div>
    </div>
</form>

<div id="jobFinderResult" class="result w3-container w3-text-black w3-center w3-border w3-margin w3-card-2"
     style="display: none;">
    <b>نتایج جستجو</b>
    <hr class="w3-border-teal">
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>برنامه نویس</b></p></div>
        <div class="w3-right-align w3-padding">
            <p>ما برای این شغل به&nbsp;<b>5</b>&nbsp;نفر&nbsp;<b>مرد</b>&nbsp;نیاز داریم</p>
            <p>نحوه مشارکت ما به صورت&nbsp;<b>پروژه‌ای</b>&nbsp;با حقوق&nbsp;<b>2,000,000 تومان</b>&nbsp;خواهد بود</p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی‌هایی که از شما انتظار داریم این‌هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
</div>

<div id="employerResult" class="result w3-container w3-text-black w3-center w3-border w3-margin w3-card-2"
     style="display: none;">
    <b>نتایج جستجو</b>
    <hr class="w3-border-teal">
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>سعید ژیانی</b></p></div>
        <div class="w3-right-align w3-padding">
            <p><b>لیسانس</b></p>
            <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                    class="fa fa-expand"></i></span>
                توانایی های من در این زمینه هاست

                <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
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
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
</div>

<div id="teamResult" class="result w3-container w3-text-black w3-center w3-border w3-margin w3-card-2"
     style="display: none;">
    <b>نتایج جستجو</b>
    <hr class="w3-border-teal">
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
    </div>
    <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
        <div class="w3-center w3-container w3-teal"><p><b>گروه هوش مصنوعی شهید بهشتی</b></p></div>
        <div class="w3-right-align w3-padding">
            <ul class="w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                <li>ساخت چت بات</li>
                <li>پژوهش بر روی زبان طبیعی</li>
            </ul>
        </div>
        <button class="w3-container w3-teal w3-btn-block" type="button" onclick="document.getElementById('confirmModal').style.display='block'">ارسال درخواست همکاری&nbsp;&nbsp;&nbsp;<span><i
                class="fa fa-send"></i></span>

        </button>
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

<div id="confirmModal" class="w3-modal w3-right-align">
    <div class="w3-modal-content w3-card-8 w3-animate-zoom" style="max-width:600px">
        <header class="w3-teal">
            <h1>تایید عملیات</h1>
        </header>
        <div class="w3-container">
            <div class="w3-section">
                <p class="w3-large">آیا مطمئن هستید؟</p>
            </div>
        </div>

        <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
            <button onclick="document.getElementById('confirmModal').style.display='none'" type="button" class="w3-btn w3-red">خیر</button>
            <button onclick="document.getElementById('confirmModal').style.display='none'" type="button" class="w3-btn w3-green">بله</button>
        </div>

    </div>
</div>

<script>
    function openSearchSection(evt, searchName) {
        var i;
        var x = document.getElementsByClassName("searchSection");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        var activebtn = document.getElementsByClassName("testbtn");
        for (i = 0; i < x.length; i++) {
            activebtn[i].classList.remove("w3-teal");
        }
        document.getElementById(searchName).style.display = "block";
        evt.currentTarget.classList.add("w3-teal");
    }
    var mybtn = document.getElementsByClassName("testbtn")[0];
    mybtn.click();

    function showResult(id) {
        var resultPanel = document.getElementsByClassName('result');
        for (var i = 0; i < resultPanel.length; i++) {
            resultPanel[i].style.display = 'none';
        }
        document.getElementById(id).style.display = 'block';
    }

</script>
<script type="text/javascript" src="js/commonFunctions.js"></script>
</body>
</html>