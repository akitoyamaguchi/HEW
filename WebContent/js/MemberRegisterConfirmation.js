'use strict';

var result = new Object();

window.onload = init;

function init() {
  $('input[name="act1"]').click(returnPage);
  $('input[name="act2"]').click(execPost);
  getParam();
	
}

function execPost() {
  var add = result['add'];
  var pas = result['pas'];
  console.log(add);
  console.log(pas);
  
  var form = $('<form>').attr({
    action: 'UserAdd',
    method: 'post'
  });
  form.css('display', 'none');
  
  $('<input>').attr({
    type: 'hidden',
    name: 'mail',
    value: add
  }).appendTo(form);

  $('<input>').attr({
    type: 'hidden',
    name: 'passwd',
    value: pas
  }).appendTo(form);
  
  $('body').append(form);
  
  form.submit();
  
}

function getParam() {
  //?以降の文字を取得する
  var data = location.search.substring(1, location.search.length);
  //エスケープされた文字をアンエスケープする
  
  data = unescape(data);
  
  //空のときは前のページに戻るようにする（未実装）
  var params = data.split('&');
 
  for(var i = 0; i < params.length; i++) {
    var element = params[i].split('=');
    var paramName = decodeURIComponent(element[0]);
    var paramValue = decodeURIComponent(element[1]);
    // パラメータ名をキーとして連想配列に追加
    result[paramName] = decodeURIComponent(paramValue);
  }
  
  $('#js-address').append(result['add']);
  $('#js-passwd').append(result['pas']); 
}

function returnPage() {
  location.href = 'member_register.html';
}