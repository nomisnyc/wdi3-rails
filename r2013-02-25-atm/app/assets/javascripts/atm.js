var checking_balance = 2000;
var savings_balance = 1000;

$(function(){
  $(".ckbalance").text(checking_balance);
  $('#ckbtndep').click(ckdeposit);
  $('#ckbtnwith').click(ckwithdraw);
  $('#svbtndep').click(svdeposit);
  $('#svbtnwith').click(svwithdraw);
});


function ckwithdraw()
{
  var bal = parseFloat($('.ckbalance').text());
  var change = parseFloat($('#ckamount').val());
  var totalbal = parseInt($('.ckbalance').text()) + parseInt($('.svbalance').text())

  // you have enough money in checking
  if(change < checking_balance) {
    checking_balance = checking_balance - change
    $(".ckbalance").text(checking_balance);
  }
  // you don't have enough money
  else if(change > totalbal) {
    alert('you are too broke');
  }
  // you have enough money if you use savings
  else {
    var overdraft = (totalbal - change);
    $('.ckbalance').text(0);
    var savingbal = parseInt($('.svbalance').text())
    $('.svbalance').text(savingbal - overdraft);
  }
}

function ckdeposit()
{
  var bal = parseFloat($('.ckbalance').text());
  var change = parseFloat($('#ckamount').val());
  $('.ckbalance').text(bal + change );
}


function svdeposit()
{
  var bal = parseFloat($('.svbalance').text());
  var change = parseFloat($('#svamount').val());
    $('.svbalance').text(bal + change);


}

function svwithdraw()
{
  var bal = parseFloat($('.svbalance').text());
  var change = parseFloat($('#svamount').val());
  $('.svbalance').text(bal - change);

}