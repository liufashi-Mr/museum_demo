let lis = document.querySelectorAll('.items li');
let baseUrl='http://localhost:8080/';
let loginIcon =document.querySelector('.login span:first-child');
let login = document.querySelector('.login');

lis.forEach((item) => {
    item.onmouseover = function () {
        for (let i = 0; i < lis.length; i++) {
            lis[i].style.border = '';
        }
        this.style.borderBottom = '5px solid #fff';
    }
    item.onclick = function () {
        location.href=`./${this.className}.html`;
    }
})
login.onclick = function () {
    location.href = 'login.html';
}

if(sessionStorage.getItem('token')){
    loginIcon.innerHTML='welcome '+sessionStorage.getItem('token')+' 退出登录';
    login.onclick=null;
    loginIcon.onclick=function () {
        sessionStorage.removeItem('token');
        alert('退出成功');
        history.go(0);
    }
}
let temp = location.href.split('/')[location.href.split('/').length-1].split('.')[0]
for (let i = 0; i < lis.length; i++) {
    lis[i].style.border = '';
    if(temp==lis[i].className){
        lis[i].style.borderBottom = '5px solid #fff';
    }
}
lis[0].parentElement.onmouseleave=function () {
    for (let i = 0; i < lis.length; i++) {
        lis[i].style.border = '';
        if(temp==lis[i].className){
            lis[i].style.borderBottom = '5px solid #fff';
        }
    }
}

function $ajax_(options) {
    var {url, method, data, success} = options;
    method = method.toUpperCase();
    var xhr = new XMLHttpRequest();
    var params = '';
    for (var x in data) {
        params += `${x}=${data[x]}&`;
    }

    params = params.slice(0, params.length - 1);
    if (method === 'GET') {
        url = url + '?' + params;
        xhr.open(method, url, true);
        xhr.send();
    }
    if (method === 'POST') {
        xhr.open(method, url, true);
        xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        xhr.send(params);
    }

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var data = xhr.responseText;
            success(data);
        }
    }
}