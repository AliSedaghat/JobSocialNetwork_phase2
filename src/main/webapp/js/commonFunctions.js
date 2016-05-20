/**
    * Created by SAEED
    * for JobSocialNetwork
    * on 2016-04-08, 14:16.
    */
function createTag(tagId, tagAreaId) {
    var text = document.getElementById(tagId).value;
    document.getElementById(tagId).value = '';
    var tagDiv = document.getElementById(tagAreaId);
    var div = document.createElement('div');
    div.className = 'w3-card-2 w3-tag w3-blue w3-margin-2';
    div.innerHTML = text;
    var span = document.createElement('span');
    span.className = 'w3-closebtn w3-small';
    span.onclick = function () {
        this.parentElement.style.display = 'none';
    };
    span.innerHTML = '  x';
    div.appendChild(span);
    tagDiv.appendChild(div);
}

function cityAndRegionSelection(Shahrestanha, regionSelectId) {
    var _Shahrestan = document.getElementById(regionSelectId);
    _Shahrestan.options.length = 0;
    if(Shahrestanha !== "") {
        Shahrestanha = 'شهر را انتخاب کنید,'+ Shahrestanha;
        var arr = Shahrestanha.split(",");
        for(var i = 0; i < arr.length; i++) {
            if(arr[i] !== "") {
                _Shahrestan.options[_Shahrestan.options.length]=new Option(arr[i],arr[i]);
            }
        }
        _Shahrestan.options[0].selected = true;
        _Shahrestan.options[0].disabled = true;
    }
}
