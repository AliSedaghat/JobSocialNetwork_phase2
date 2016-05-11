<%-- 
    Document   : EmployerEditProfile
    Created on : May 11, 2016, 9:53:00 PM
    Author     : ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ویرایش نمایه</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
</head>
<body>
<div class="w3-row">
    <div class="w3-half w3-left w3-margin-top  w3-border-right w3-border-blue  w3-margin-bottom">
        <div class="w3-container">
            <p class="w3-right-align"><b>فعالیت‌های کاری</b></p>
            <hr class="w3-border-light-blue">
            <form class="w3-form">
                <label class="w3-right"><b>زمینه‌های کاری</b></label><br><br>
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
                </div>
                <br>

                <div class="w3-row">
                    <div class="w3-btn w3-hover-teal w3-white w3-right fa fa-arrow-right w3-col s4 m2 l2 w3-xlarge" onclick="createTag('tagInput1','tagArea1')"></div>
                    <label><input id="tagInput1" type="text"
                                  class="w3-input w3-border-teal w3-left w3-col s8 m10 l10 w3-small"></label>
                </div>

                <br>

                <label class="w3-right"><b>کارهای انجام شده یا در حال اجرا</b></label><br>
                <div class="w3-card-2 w3-row w3-right-align w3-leftbar w3-border-light-blue w3-margin">
                    <div class="w3-third w3-padding">
                        <label class="w3-validate">از تاریخ
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="date">
                        </label>
                        <label class="w3-validate">تا تاریخ
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="date">
                        </label>
                    </div>
                    <div class="w3-twothird w3-padding">
                        <label class="w3-validate">عنوان پروژه
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="text">
                        </label>
                        <label class="w3-validate">شرح
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="text">
                        </label>
                    </div>
                </div>
                <div class="w3-btn-floating w3-card-2 w3-teal w3-right">+</div>
                <br><br><br>
                <label class="w3-right"><b>سایر توضیحات</b></label>
                <textarea style="resize:vertical;" class="w3-input w3-border-teal w3-margin-bottom w3-right-align"
                          placeholder="یک پاراگراف در مورد شرکت خود بنویسید"></textarea>

                <button class="w3-btn w3-btn-block w3-green">ثبت روزمه</button>
            </form>
        </div>
    </div>

    <div class="w3-half w3-right w3-margin-top ">
        <div class="w3-container w3-row">
            <img src="images/img_avatar.png" style="width:30%" class="w3-card-2 w3-circle w3-margin-right w3-right"
                 alt="عکس کاربر">
            <div class="w3-third w3-input-group w3-card-2">
                <form class="w3-form">
                    <input class="w3-input w3-border-teal w3-right-align" type="text" placeholder="رمز فعلی">
                    <input class="w3-input w3-border-teal w3-right-align" type="text" placeholder="رمز جدید">
                    <input class="w3-input w3-border-teal w3-right-align" type="text" placeholder="تکرار رمز">
                    <button class="w3-btn w3-btn-block w3-green w3-margin-top" type="submit">تغییر رمز</button>
                </form>
            </div>
        </div>
        <div class="w3-container">
            <p class="w3-right-align"><b>اطلاعات پایه</b></p>
            <hr class="w3-border-light-blue">

            <form class="w3-right-align w3-form">
                <div class="w3-section">
                    <label class="w3-right"><b>نام شرکت</b></label>
                    <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="email"
                           placeholder="نام شرکت یا محل کسب و کار خود را وارد کنید">

                    <label><b class="w3-right">شماره تلفن</b>
                        <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" type="tel"
                               placeholder="تلفن خود را وارد کنید">
                    </label>

                    <label><b class="w3-right">ایمیل</b>
                        <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" type="email"
                               placeholder="ایمیل خود را وارد کنید">
                    </label>

                    <label class="w3-right"><b>آدرس</b></label><br>
                    <div class="w3-row">
                        <div class="w3-third w3-padding">
                            <label class="w3-validate">ادامه آدرس
                                <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="text">
                            </label>
                        </div>
                        <div class="w3-third w3-padding">
                            <label class="w3-validate">شهر
                                <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="text">
                            </label>
                        </div>
                        <div class="w3-third w3-padding">
                            <label class="w3-validate">استان
                                <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="text">
                            </label>
                        </div>
                    </div>

                    <button class="w3-btn w3-btn-block w3-green">ثبت ویرایش</button>
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
                <form class="w3-form">
                    <input class="w3-input w3-border-teal w3-center" type="text" placeholder="عنوان شغل">
                    <div class="w3-row">
                        <select class="w3-select w3-center w3-half" style="margin-top: 1.6%" name="sex">
                            <option value="" disabled selected>جنسیت</option>
                            <option value="1">مرد</option>
                            <option value="2">زن</option>
                            <option value="3">مرد و زن</option>
                        </select>
                        <input class="w3-input w3-border-teal w3-center w3-half" type="number" placeholder="تعداد">
                    </div>
                    <div class="w3-row">
                        <select class="w3-select w3-center w3-quarter" style="margin-top: 1.6%" name="dealKind">
                            <option value="" disabled selected>نوع قرارداد</option>
                            <option value="1">دائمی</option>
                            <option value="2">فراردادی</option>
                            <option value="3">پروژه‌ای</option>
                            <option value="4">فصلی</option>
                        </select>
                        <input class="w3-input w3-border-teal w3-center w3-half" type="number" placeholder="حقوق">
                        <b class="w3-quarter w3-center w3-margin-top">&nbsp;تومان</b>
                    </div>
                    <input class="w3-input w3-border-teal w3-center" type="text" placeholder="توانایی‌ها">
                    <textarea class="w3-input w3-border-teal w3-center" style="resize:vertical;"
                              placeholder="سایر توضیحات"></textarea>
                    <br>
                    <button class="w3-btn w3-green w3-right" type="submit">ثبت</button>
                    <button class="w3-btn w3-red w3-left" type="button"
                            onclick="document.getElementById('addJob').style.display = 'none'">لغو
                    </button>
                    <br>
                </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="js/commonFunctions.js"></script>

</body>
</html>
