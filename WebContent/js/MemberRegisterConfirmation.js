'use strict';

//ジャンプ先のURL（servlet）を入れておいてください
var ACTION = '';

window.onload = init;

function init() {
  $('input[name="act1"]').click(returnPage);
  $('input[name="act2"]').click(execPost);
  getParam();
	
}

function execPost() {
  var add = $('#js-address').text();
  var pas = $('#js-passwd').text();
  console.log(add);
  console.log(pas);
  
  var form = $('<form>');
  form.attr('action', ACTION);
  form.attr('method', 'post');
  form.css('display', 'none')
  
  $('body').append(form);
  
  var input = $('input');
  input.attr('type', 'hidden');
  input.attr('name', 'address');
  input.attr('value', add);
  form.append(input);
  
  input.attr('type', 'hidden');
  input.attr('name', 'passwd');
  input.attr('value', pas);
  form.append(input);
  
  alert();
  
  form.submit();
  
}

function getParam() {
  //?以降の文字を取得する
  var data = location.search.substring(1, location.search.length);
  //エスケープされた文字をアンエスケープする
  
  data = unescape(data);
  
  //空のときは前のページに戻るようにする（未実装）
  var params = data.split('&');
  
  var result = new Object();
  for(var i = 0; i < params.length; i++) {
    var element = params[i].split('=');
    var paramName = decodeURIComponent(element[0]);
    var paramValue = decodeURIComponent(element[1]);
    // パラメータ名をキーとして連想配列に追加
    result[paramName] = decodeURIComponent(paramValue);
  }
  
  $('#js-address').append(result['add']);
  $('#js-passwd').append(result['pas']);
  
  alert(result['add'] + '\n' + result['pas']);  
}

function returnPage() {
  location.href = 'member_register.html';
}