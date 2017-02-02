/**
 *
 */
window.onload = init;

function init() {
  document.getElementById('memRegConfBtn').addEventListener('click',comp);
}

function comp() {
  var addValue = document.getElementsByName('address')[0].value;
  var addConValue = document.getElementsByName('address_con')[0].value;
  var passValue = document.getElementsByName('passwd')[0].value;
  var passConValue = document.getElementsByName('passwd_con')[0].value;

  var errMes = '';

  if(addValue != addConValue) {
    errMes = 'メールアドレスが違います。';
  }
  if(passValue != passConValue) {
    errMes += '\nパスワードが違います。';
  }
  if(addValue == addConValue && passValue == passConValue) {
    //document.getElementById('form').submit();
    console.log('Match');
  } else {
    createModal();
    console.log('Miss Match');
  }

}

function createModal() {
  var overWrap = document.createElement('div');
  overWrap.id = 'background';
  overWrap.style.width = '100%';
  overWrap.style.height = '100%';
  overWrap.style.backgroundColor = '#000';

  document.body.insertBefore(overWrap, document.body.firstChild);
  console.log(document.body.firstChild.nodeName);
  console.log('Modal Create');
}