<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>تیم برون سپاری</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <script>
        function initialize() {
            var myCenter = new google.maps.LatLng(35.7991, 51.3947);
            var mapProp = {
                center: myCenter,
                zoom: 10,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
            var marker=new google.maps.Marker({
                position:myCenter
            });

            marker.setMap(map);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body>
<div class="w3-blue w3-center" style="position: absolute;top: 0;bottom: 70%;left: 0;right: 0;">
    <img src="images/img_avatar.png" style="height: 100%; margin-top: 5%" class="w3-card-2 w3-circle" alt="عکس کاربر">
    <div class="w3-container w3-section w3-right-align w3-row">
        <div class="w3-half w3-right">
            <button class="w3-btn w3-blue-grey" type="button"
                    onclick="window.location.assign('teamEditProfile.html')">ویرایش نمایه
            </button>
            <button class="w3-btn w3-blue-grey" type="button" onclick="window.location.assign('index.html')">خروج
            </button>
            <br>
            <br>
            <div class="w3-text-black w3-card-2 w3-rightbar w3-border-teal w3-right-align w3-padding">
                <b>مشخصات</b>
                <hr class="w3-border-teal">
                <p><b>گروه آزمایشگاه هوش مصنوعی دانشگاه شهید بهشتی</b></p>
                <p class="w3-right-align">شما می‌توانید از طریق شماره تلفن و ایمیل زیر با ما در تماس باشید</p>
                <p><b>021-12345678</b></p>
                <p><b>sbu.arin@gmail.com</b></p>
            </div>
        </div>
        <div id="googleMap" class="w3-half w3-left" style="width:500px;height:380px;"></div>
    </div>
    <br>
    <div class="w3-container w3-section w3-right-align">
        <div class="w3-text-black w3-card-2 w3-rightbar w3-border-teal w3-right-align w3-padding">
            <b>رزومه</b>
            <hr class="w3-border-teal">
            <p>فعالیت های کاری ما در جدول پایین آمده است</p>
            <table class="w3-table-all">
                <tr class="w3-blue-grey">
                    <td class="w3-center"><b>از تاریخ</b></td>
                    <td class="w3-center"><b>تا تاریخ</b></td>
                    <td class="w3-center"><b>کارفرما</b></td>
                    <td class="w3-center"><b>عنوان پروژه</b></td>
                </tr>
                <tr>
                    <td class="w3-center">1393/04/01</td>
                    <td class="w3-center">1394/06/31</td>
                    <td class="w3-center">شرکت پیله</td>
                    <td class="w3-center">ساخت چت بات</td>
                </tr>
                <tr>
                    <td class="w3-center">1393/04/01</td>
                    <td class="w3-center">1394/06/31</td>
                    <td class="w3-center">شرکت پیله</td>
                    <td class="w3-center">ساخت چت بات</td>
                </tr>
                <tr>
                    <td class="w3-center">1393/04/01</td>
                    <td class="w3-center">1394/06/31</td>
                    <td class="w3-center">شرکت پیله</td>
                    <td class="w3-center">ساخت چت بات</td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>