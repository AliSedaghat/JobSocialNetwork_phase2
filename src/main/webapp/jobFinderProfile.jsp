<%@page import="java.io.File"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="jobSeekerInformationBean" class="viewmodel.JobSeekerInformationBean" scope="request" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>نمایه کاربر</title>
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
    <script src="http://maps.googleapis.com/maps/api/js"></script>
        <script>
        var map = null;
        var state = '<c:out value="${jobSeekerInformationBean.state}" />';
        var city = '<c:out value="${jobSeekerInformationBean.city}" />';
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
</head>
<body>

<div class="w3-teal w3-center" style="position: absolute;top: 0;bottom: 70%;left: 0;right: 0;">
    <img 
        <%
            File file = new File(jobSeekerInformationBean.getImageUrl());
            String url;
            if(file.exists()){
                url = "images/user'sImage/" + file.getName();
            }else{
                url = "images/img_avatar.png";
            }
            jobSeekerInformationBean.setImageUrl(url);
        %>
        src="${jobSeekerInformationBean.imageUrl}"
        style="height: 100%; margin-top: 5%" class="w3-card-2 w3-circle" alt="عکس کاربر">
            
    <div class="w3-container w3-section w3-right-align w3-row">
        <div class="w3-half w3-right">
            <c:if test="${pageOwner}" scope="request" var="pageOnwer">
                <button class="w3-btn w3-blue-grey" type="button"
                    onclick="window.location.assign('jobFinderEditProfile.html')">ویرایش نمایه
                </button>
                <button class="w3-btn w3-blue-grey" type="button" onclick="window.location.assign('index.html')">خروج
                </button>
            </c:if>
            <br>
            <br>
            <div class="w3-text-black w3-card-2 w3-rightbar w3-border-teal w3-right-align w3-padding">
                <b>مشخصات</b>
                <hr class="w3-border-teal">
                <p>من&nbsp;<b>${jobSeekerInformationBean.nameAndFamilyName}</b>&nbsp;متولد&nbsp;<b>${jobSeekerInformationBean.birthDate}</b>&nbsp;هستم</p>
                <p>شما می‌توانید از طریق شماره تلفن&nbsp;<b>${jobSeekerInformationBean.phoneNum}</b>&nbsp;با من تماس حاصل فرمائید</p>
            </div>
        </div>
        <div id="googleMap" class="w3-half w3-left" style="width:500px;height:380px;"></div>
    </div>
    <div class="w3-container w3-section w3-right-align">
        <div class="w3-text-black w3-card-2 w3-rightbar w3-border-teal w3-right-align w3-padding">
            <b>رزومه</b>
            <hr class="w3-border-teal">
            <p>میزان تحصیلات من&nbsp;<b>${jobSeekerProfileInfoBean.degree}</b>&nbsp;است</p>
            <p>من در زمینه‌های&nbsp;
                <c:forEach items="${jobSeekerInformationBean.skills}" var="skill">
                    <b>${skill}</b>,&nbsp;
                </c:forEach>توانایی دارم
            </p>
            <table class="w3-table-all">
                <tr class="w3-blue-grey">
                    <td class="w3-center"><b>از تاریخ</b></td>
                    <td class="w3-center"><b>تا تاریخ</b></td>
                    <td class="w3-center"><b>محل کار</b></td>
                    <td class="w3-center"><b>مسئولیت</b></td>
                </tr>
                <c:forEach items="${jobSeekerInformationBean.jobSeekerResumeBeans}" var="resume">
                    <tr>
                        <td class="w3-center">${resume.fromDate}</td>
                        <td class="w3-center">${resume.tillDate}</td>
                        <td class="w3-center">${resume.workPlace}</td>
                        <td class="w3-center">${resume.responsibility}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>

</body>
</html>