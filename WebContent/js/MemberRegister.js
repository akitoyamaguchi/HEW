/**
 *
 */
window.onload = init;

function init() {
  document.getElementsByName('act')[0].addEventListener('click',comp);
  console.log('test');
}

function comp() {
  var addValue = document.getElementsByName('address')[0].value;
  var addConValue = document.getElementsByName('address_con')[0].value;
  var passValue = document.getElementsByName('passwd')[0].value;
  var passConValue = document.getElementsByName('passwd_con')[0].value;
  var errMes = [];
  var firstCheck = true;
  var secondCheck = true;
  
  // 多分あとでチェックの手順を変更します。
  // だれかうまい具合に直してくれてもいいのよ
  if(addValue == '') {
    errMes.push('メールアドレスを入力してください');
    firstCheck = false;
  }
  if(addConValue == '') {
    errMes.push('メールアドレスの確認を入力してください');
    firstCheck = false;
  }
  if(passValue == '') {
    errMes.push('パスワードを入力してください');
    firstCheck = false;
  }
  if(passConValue == '') {
    errMes.push('パスワードの確認を入力してください');
    firstCheck = false;
  }
  
  if(firstCheck == true) {
    if(addValue != addConValue) {
      errMes.push('メールアドレスが合っていません');
      secondCheck = false;
    }
    if(passValue != passConValue) {
      errMes.push('パスワードが合っていません');
      secondCheck = false;
    }
  }
      
  if(firstCheck == true && secondCheck == true) {
    // submit先（html）でidとpassを受け取る処理の実装
    //document.getElementById('form').submit();
    console.log('Match');
  } else {
    //エラーメッセージの表示
    //誰かこの部分をモーダルで作ってくださいおねがいします。
    window.alert(errMes.join('\n') );
  }

}