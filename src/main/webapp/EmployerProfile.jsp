<%@page import="java.io.File"%>
<jsp:useBean id="employerInformationBean" class="viewmodel.EmployerInformationBean" scope="request"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>نمایه کارفرما</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <script>
        var map = null;
        var state = '<c:out value="${employerInformationBean.state}" />';
        var city = '<c:out value="${employerInformationBean.city}" />';
        window.onload = function() {

                // initialize the map
                var mapHolder = document.getElementById("googleMap");
                map = new google.maps.Map(
                        mapHolder, 
                        {
                                zoom: 3,
                                mapTypeId: google.maps.MapTypeId.ROADMAP
                        }
                );

                // centering the map
                map.setCenter(new google.maps.LatLng(43.229195, 27.872314));
                addressToLocation(state + ' - ' + city, changeMapLocation);
        };

        // processing the results
        function changeMapLocation(locations) {
                if(locations && locations.length) {
                    var numOfLocations = locations.length;
                    for(var i=0; i<numOfLocations; i++) {	
                        var marker = new google.maps.Marker({
                                map: map,
                                position: locations[i].location
                        });
                    }
                    map.panTo(locations[0].location);
                    map.setZoom(8);
                } else {
                }
        }

        // converting the address's string to a google.maps.LatLng object
        function addressToLocation(address, callback) {
                var geocoder = new google.maps.Geocoder();
                geocoder.geocode(
                        {
                                address: address
                        }, 
                        function(results, status) {

                                var resultLocations = [];

                                if(status === google.maps.GeocoderStatus.OK) {
                                        if(results) {
                                                var numOfResults = results.length;
                                                for(var i=0; i<numOfResults; i++) {
                                                        var result = results[i];
                                                        resultLocations.push(
                                                                {
                                                                        text:result.formatted_address,
                                                                        addressStr:result.formatted_address,
                                                                        location:result.geometry.location
                                                                }
                                                        );
                                                };
                                        }
                                } else if(status === google.maps.GeocoderStatus.ZERO_RESULTS) {
                                        // address not found
                                }

                                if(resultLocations.length > 0) {
                                        callback(resultLocations);
                                } else {
                                        callback(null);
                                }
                        }
                );
        }
    </script>
    <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
    <script type="text/javascript" src="js/commonFunctions.js"></script>
</head>
<body>

<div class="w3-green w3-center" style="position: absolute;top: 0;bottom: 70%;left: 0;right: 0;">
    <img 
        <%
            File file = new File(employerInformationBean.getImageUrl());
            String url;
            if(file.exists()){
                url = "images/user'sImage/" + file.getName();
            }else{
                url = "images/img_avatar.png";
            }
            employerInformationBean.setImageUrl(url);
        %>
        src="${employerInformationBean.imageUrl}" style="height: 100%; margin-top: 5%" class="w3-card-2 w3-circle" alt="عکس کاربر">
    <div class="w3-container w3-section w3-right-align w3-row">
        <div class="w3-half w3-right">
            <c:if test="${pageOwner == true}" scope="request" var="pageOnwer">
                <button class="w3-btn w3-blue-grey" type="button"
                        onclick="window.location.assign('EmployerEditProfile.html')">ویرایش نمایه
                </button>
                <button class="w3-btn w3-blue-grey" type="button" onclick="window.location.assign('index.html')">خروج
                </button>
            </c:if>

            <c:if test="${pageOwner == false}" scope="request" var="pageOnwer">
                <button class="w3-btn w3-blue-grey" type="button" onclick="{

                        if(this.value == 1){
                            this.children[1].innerHTML = 'دنبال کردن آگهی‌های این صفحه';
                            this.value = 0;
                        }
                        else {
                            this.children[1].innerHTML = 'دنبال نکردن آگهی‌های این صفحه';
                            this.value = 1;
                        }
                }" value="1"><span class="fa fa-share-square-o"></span>&nbsp;<span>دنبال کردن آگهی‌های این صفحه</span></button>
            </c:if>
            <br>
            <br>
            <div class="w3-text-black w3-card-2 w3-rightbar w3-border-teal w3-right-align w3-padding">
                <b>مشخصات</b>
                <hr class="w3-border-teal">
                <p><b>${employerInformationBean.employerName}</b></p>
                <p class="w3-right-align">شما می‌توانید از طریق شماره تلفن و ایمیل زیر با ما در تماس باشید</p>
                <p><b>${employerInformationBean.phoneNum}</b></p>
                <p><b>${employerInformationBean.email}</b></p>
            </div>
        </div>
        <div id="googleMap" class="w3-half w3-left" style="width:500px;height:380px;"></div>
    </div>
    <br>
    <div class="w3-container w3-text-black">
        <b>آگهی‌های استخدام‌</b>
        <hr class="w3-border-teal">
        <c:forEach items="${employerInformationBean.employerSearchResultBeans}" var="item1">
            <div class="w3-card-4 w3-margin w3-col l3 m5 s12 w3-border-teal w3-border">
                <div class="w3-center w3-container w3-teal"><p><b>${item1.jobTitle}</b></p></div>
                <div class="w3-right-align w3-padding">
                    <p>ما برای این شغل به&nbsp;<b><c:out value="${item1.numOfPersons}"/></b>&nbsp;نفر&nbsp;<b><c:out value="${item1.sex}"/></b>&nbsp;نیاز داریم</p>
                    <p>نحوه مشارکت ما به صورت&nbsp;<b><c:out value="${item1.kindOfWork}"/></b>&nbsp;با حقوق&nbsp;<b><c:out value="${item1.minWage}"/> تومان</b>&nbsp;خواهد بود</p>
                    <div class="w3-dropdown-hover w3-hover-light-blue" onclick="openSkills(this)"><span><i
                        class="fa fa-expand"></i></span>
                    توانایی‌هایی که از شما انتظار داریم این‌هاست

                        <ul class="w3-dropdown-content w3-right-align w3-ul w3-animate-zoom w3-hoverable" style="width: 100%;">
                            <c:forEach items="${item1.skills}" var="skill">
                                <li><c:out value="${skill}"/></li>
                            </c:forEach>
                        </ul>
                    </div>
                <div>
                    <p><c:out value="${item1.desc}"/></p>
                </div>
                </div>
                <button class="w3-container w3-teal w3-btn-block" 
                        type="button" onclick="sendNotification(${employerInformationBean.employerAccountId}, ${item1.jobId})">ارسال درخواست استخدام&nbsp;&nbsp;&nbsp;<span><i
                        class="fa fa-send"></i></span>
                </button>
            </div>  
        </c:forEach>
    </div>
</div>

<script>
    function openSkills(elem) {
        elem.getElementsByTagName('ul')[0].classList.toggle("w3-show");
    }
</script>
</body>
</html>
