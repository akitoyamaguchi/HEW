'use strict';

window.onload = init;

function init() {
  $('input[name="act"]').click(comp);
}

function comp() {
  var add = $('input[name="address"]').val();
  var addCon = $('input[name=address_con]').val();
  var passwd = $('input[name=passwd]').val();
  var passwdCon = $('input[name=passwd_con]').val();

  var errorMes = '';
  var isError = false;
  
  console.log(add);
  console.log(addCon);
  console.log(passwd);
  console.log(passwdCon);

  //から判定
  if(add === null || add === '') {
    errorMes += 'メールアドレスを入力してください\n';
    isError = true;
  }
  if(addCon === null || addCon === '') {
    errorMes += 'メールアドレスの確認を入力してください\n';
    isError = true;
  }
  if(passwd === null || passwd === '') {
    errorMes += 'パスワードを入力してください\n';
    isError = true;
  }
  if(passwdCon === null || passwdCon === '') {
    errorMes += 'パスワードの確認を入力してください\n';
    isError = true;
  }
  if(!passwd.match(/[A-Za-z0-9-_]+/) ) {
    errorMes += 'パスワードが正しくありません\n'
    isError = true;
  }
  if(!passwdCon.match(/[A-Za-z0-9-_]+/) ) {
    errorMes += 'パスワードの確認が正しくありません\n'
    isError = true;
  }
  if(add !== addCon) {
    errorMes += 'メールアドレスが合っていません\n'
    isError = true;
  }
  if(passwd !== passwdCon) {
    errorMes += 'パスワードが合っていません\n'
    isError = true;
  }

  if(isError === true) {
    alert(errorMes);
    return false;
  } else {
    alert('OK');
    dateSend(add, passwd);
    return false
  }
}

function dateSend(add, passwd) {
  location.href = 'member_register_confirmation.jsp?add=' +escape(add)+
    '&pas=' +escape(passwd);
}