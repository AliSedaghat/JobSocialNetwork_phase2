<%-- 
    Document   : JobFinderEditProfile
    Created on : May 11, 2016, 9:55:42 PM
    Author     : ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ویرایش اطلاعات</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
</head>
<body>
    <div class="w3-half w3-left w3-margin-top w3-margin-bottom">
        <div class="w3-container">
            <p class="w3-right-align"><b>رزومه</b></p><hr class="w3-border-light-blue">
            <form class="w3-form">
                <label><b class="w3-right">میزان تحصیلات</b>
                    <select class="w3-select" name="option">
                        <option value="" disabled selected>میزان تحصیلات خود را انتخاب کنید</option>
                        <option value="1">بی سواد</option>
                        <option value="2"> ابتدایی</option>
                        <option value="3">راهنمایی</option>
                        <option value="4">دیپلم</option>
                        <option value="5">فوق دیپلم</option>
                        <option value="6">لیسانس</option>
                        <option value="7">فوق لیسانس</option>
                        <option value="8">دکتری</option>
                    </select>
                </label>
                <br>
                <br>

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
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="date">
                        </label>
                        <label class="w3-validate">تاریخ
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="date">
                        </label>
                    </div>
                    <div class="w3-twothird w3-padding">
                        <label class="w3-validate">محل کار
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="text">
                        </label>
                        <label class="w3-validate">مسئولیت
                            <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="text">
                        </label>
                    </div>
                </div>
                <div class="w3-btn-floating w3-card-2 w3-teal w3-right">+</div><br><br><br>
                <label class="w3-right"><b>سایر توضیحات</b></label>
                <textarea style="resize:vertical;" class="w3-input w3-border-teal w3-margin-bottom w3-right-align" placeholder="یک پاراگراف در مورد خود بنویسید"></textarea>

                <button class="w3-btn w3-btn-block w3-green">ثبت روزمه</button>
            </form>
        </div>
    </div>

    <div class="w3-half w3-right w3-border-left w3-border-blue w3-margin-top w3-margin-bottom">
        <div class="w3-container w3-row">
            <img src="images/img_avatar.png" style="width:30%" class="w3-card-2 w3-circle w3-margin-right w3-right" alt="عکس کاربر">
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
            <p class="w3-right-align"><b>اطلاعات پایه</b></p><hr class="w3-border-light-blue">

            <form class="w3-right-align w3-form">
                <label class="w3-validate">مرد
                    <input type="radio" name="gender" value="male" class="w3-radio" checked><br>
                </label>
                <label class="w3-validate">زن
                    <input type="radio" name="gender" value="female" class="w3-radio">
                </label>

                <div class="w3-section">
                    <label class="w3-right"><b>نام و نام خانوادگی*</b></label>
                    <input class="w3-input w3-border-teal w3-margin-bottom w3-right-align" type="email" placeholder="نام و نام خانوادگی خود را وارد کنید">

                    <label><b class="w3-right">تاریخ تولد</b>
                        <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" type="date">
                    </label>

                    <label><b class="w3-right">شماره تلفن</b>
                        <input class="w3-input w3-border-teal w3-right-align w3-margin-bottom" type="tel" placeholder="تلفن خود را وارد کنید">
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

<script type="text/javascript" src="js/commonFunctions.js"></script>

</body>
</html>