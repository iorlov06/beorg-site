function isPhysical() {
  return document.getElementById('user_account_type_physical').checked
}

function enablePhysical() {
  document.querySelector('#user_vat').style.visibility='hidden';
  document.querySelector('label[for=user_vat]').style.visibility='hidden';
  document.querySelector('#user_legal_name').style.visibility='hidden';
  document.querySelector('label[for=user_legal_name]').style.visibility='hidden';
  document.querySelector('#user_form').style.visibility='hidden';
  document.querySelector('label[for=user_form]').style.visibility='hidden';
  document.querySelector('#user_phone').style.visibility='visible';
  document.querySelector('label[for=user_phone]').style.visibility='visible';
  document.querySelector('#user_firstname').style.visibility='visible';
  document.querySelector('label[for=user_firstname]').style.visibility='visible';
  document.querySelector('#user_partonym').style.visibility='visible';
  document.querySelector('label[for=user_partonym]').style.visibility='visible';
  document.querySelector('#user_lastname').style.visibility='visible';
  document.querySelector('label[for=user_lastname]').style.visibility='visible';
}

function enableLegal() {
  document.querySelector('#user_vat').style.visibility='visible';
  document.querySelector('label[for=user_vat]').style.visibility='visible';
  document.querySelector('#user_legal_name').style.visibility='visible';
  document.querySelector('label[for=user_legal_name]').style.visibility='visible';
  document.querySelector('#user_form').style.visibility='visible';
  document.querySelector('label[for=user_form]').style.visibility='visible';
  document.querySelector('#user_phone').style.visibility='hidden';
  document.querySelector('label[for=user_phone]').style.visibility='hidden';
  document.querySelector('#user_firstname').style.visibility='hidden';
  document.querySelector('label[for=user_firstname]').style.visibility='hidden';
  document.querySelector('#user_partonym').style.visibility='hidden';
  document.querySelector('label[for=user_partonym]').style.visibility='hidden';
  document.querySelector('#user_lastname').style.visibility='hidden';
  document.querySelector('label[for=user_lastname]').style.visibility='hidden';
}

function controlRegType(){
  if(isPhysical())
  {
    enablePhysical();
  }
  else
  {
    enableLegal();
  }
}

document.addEventListener("DOMContentLoaded", function() {
    controlRegType();
    var radio_list = document.getElementById('new_user').elements['user[account_type]']
    for (var i = 0; i < radio_list.length; i++)
      radio_list[i].onclick=controlRegType;
});
