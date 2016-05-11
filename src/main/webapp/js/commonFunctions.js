/**
 * Created by SAEED on 2016-04-08.
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