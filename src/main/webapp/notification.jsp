<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>اعلان‌ها</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
</head>
<body>

<header class="w3-card-2">
    <ul class="w3-navbar w3-green">
        <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" href="jobFinderEditProfile.html">ویرایش نمایه</a></li>
        <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" href="search.html">جستجو</a></li>
        <li class="w3-right w3-margin-8"><a class="w3-btn w3-green w3-border w3-border-white w3-hover-white w3-round-xlarge" href="index.html">خروج</a></li>
    </ul>
</header>


<div class="w3-content w3-container w3-section">
    <ul class="w3-ul w3-card-4 w3-hoverable">
        
        
        <c:forEach items="${jobSeekerNotificationBeans}" var="item1">
            <a href="/JobSocialNetwork/JobSeekerProfileController?senderId=${item1.senderId}">رفتن به صفحه کارجو</a>
            <li class="w3-padding-16 w3-container">
                <span onclick="this.parentElement.style.display='none'"
                  class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span>
                <img src="images/img_avatar.png" class="w3-left w3-circle w3-margin-right" style="width:60px">
                <div class="w3-center w3-half w3-right w3-margin-top"><span>درخواست استخدام بابت آگهی&nbsp;<b><c:out value="${item1.jobTitle}" /></b></span></div>
                <span class="w3-xlarge">سعید ژیانی</span><br>
                <span>کارجو</span>
            </li>
        </c:forEach>
            
        <c:forEach items="${employerNotificationBeans}" var="item2">
            <a href="/JobSocialNetwork/EmployerProfileController?senderId=${item2.senderId}">رفتن به صفحه کارفرما</a>
            <li class="w3-padding-16 w3-container">
            <span onclick="this.parentElement.style.display='none'"
                  class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span>
            <img src="images/img_avatar.png" class="w3-left w3-circle w3-margin-right" style="width:60px">
            <div class="w3-center w3-half w3-right w3-margin-top"><span>درخواست همکاری برای شغل&nbsp;<b><c:out value="${item2.jobTitle}" /></b></span></div>
            <span class="w3-xlarge"><c:out value="${item2.employerName}" /></span><br>
            <span>کارفرما</span>
        </li>
        </c:forEach>
        
        <c:forEach items="${TeamNotificationBeans}" var="item3">
            <li class="w3-padding-16 w3-container">
            <span onclick="this.parentElement.style.display='none'"
                  class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span>
            <img src="images/img_avatar.png" class="w3-left w3-circle w3-margin-right" style="width:60px">
            <div class="w3-center w3-half w3-right w3-margin-top "><span>درخواست همکاری برای شغل&nbsp;<b><c:out value="${item3.jobTitle}" /></b></span></div>
            <span class="w3-xlarge"><c:out value="${item3.teamName}" /></span><br>
            <span>تیم برون سپاری</span>
        </li>
        </c:forEach>
        <!--<li class="w3-padding-16 w3-container">
            <span onclick="this.parentElement.style.display='none'"
                  class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span>
            <img src="images/img_avatar.png" class="w3-left w3-circle w3-margin-right" style="width:60px">
            <div class="w3-center w3-half w3-right w3-margin-top"><span>درخواست همکاری برای شغل&nbsp;<b>برنامه نویس</b></span></div>
            <span class="w3-xlarge">شرکت پیله</span><br>
            <span>کارفرما</span>
        </li>
        <li class="w3-padding-16 w3-container">
            <span onclick="this.parentElement.style.display='none'"
                  class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span>
            <img src="images/img_avatar.png" class="w3-left w3-circle w3-margin-right" style="width:60px">
            <div class="w3-center w3-half w3-right w3-margin-top "><span>درخواست همکاری برای شغل&nbsp;<b>برنامه نویس</b></span></div>
            <span class="w3-xlarge">تیم هوش مصنوعی دانشگاه بهشتی</span><br>
            <span>تیم برون سپاری</span>
        </li>
        <li class="w3-padding-16 w3-container">
            <span onclick="this.parentElement.style.display='none'"
                  class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span>
            <img src="images/img_avatar.png" class="w3-left w3-circle w3-margin-right" style="width:60px">
            <div class="w3-center w3-half w3-right w3-margin-top"><span>درخواست استخدام بابت آگهی&nbsp;<b>برنامه نویس</b></span></div>
            <span class="w3-xlarge">سعید ژیانی</span><br>
            <span>کارجو</span>
        </li>
        <li class="w3-padding-16 w3-container">
            <span onclick="this.parentElement.style.display='none'"
                  class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span>
            <img src="images/img_avatar.png" class="w3-left w3-circle w3-margin-right" style="width:60px">
            <div class="w3-center w3-half w3-right w3-margin-top"><span>درخواست همکاری برای شغل&nbsp;<b>برنامه نویس</b></span></div>
            <span class="w3-xlarge">شرکت پیله</span><br>
            <span>کارفرما</span>
        </li>
        <li class="w3-padding-16 w3-container">
            <span onclick="this.parentElement.style.display='none'"
                  class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span>
            <img src="images/img_avatar.png" class="w3-left w3-circle w3-margin-right" style="width:60px">
            <div class="w3-center w3-half w3-right w3-margin-top "><span>درخواست همکاری برای شغل&nbsp;<b>برنامه نویس</b></span></div>
            <span class="w3-xlarge">تیم هوش مصنوعی دانشگاه بهشتی</span><br>
            <span>تیم برون سپاری</span>
        </li>
        <li class="w3-padding-16 w3-container">
            <span onclick="this.parentElement.style.display='none'"
                  class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span>
            <img src="images/img_avatar.png" class="w3-left w3-circle w3-margin-right" style="width:60px">
            <div class="w3-center w3-half w3-right w3-margin-top"><span>درخواست استخدام بابت آگهی&nbsp;<b>برنامه نویس</b></span></div>
            <span class="w3-xlarge">سعید ژیانی</span><br>
            <span>کارجو</span>
        </li>
        <li class="w3-padding-16 w3-container">
            <span onclick="this.parentElement.style.display='none'"
                  class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span>
            <img src="images/img_avatar.png" class="w3-left w3-circle w3-margin-right" style="width:60px">
            <div class="w3-center w3-half w3-right w3-margin-top"><span>درخواست همکاری برای شغل&nbsp;<b>برنامه نویس</b></span></div>
            <span class="w3-xlarge">شرکت پیله</span><br>
            <span>کارفرما</span>
        </li>
        <li class="w3-padding-16 w3-container">
            <span onclick="this.parentElement.style.display='none'"
                  class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span>
            <img src="images/img_avatar.png" class="w3-left w3-circle w3-margin-right" style="width:60px">
            <div class="w3-center w3-half w3-right w3-margin-top "><span>درخواست همکاری برای شغل&nbsp;<b>برنامه نویس</b></span></div>
            <span class="w3-xlarge">تیم هوش مصنوعی دانشگاه بهشتی</span><br>
            <span>تیم برون سپاری</span>
        </li> -->
    </ul>

</div>

<footer class="w3-green w3-right-align w3-container" style="position: relative">
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


</body>
</html>