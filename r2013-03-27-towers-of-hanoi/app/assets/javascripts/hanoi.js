$(function(){

  $('.disk').click(disk_click);
  $('button1').click(disk_add1);
  $('button2').click(disk_add2);
  $('button3').click(disk_add3);
  });

function disk_click()
{
  $(this).remove();

}

function disk_add1()
{
  $('#col1').append('.disk');
}

function disk_add2()
{
  $('#col2').append('.disk');
}

function disk_add3()
{
  $('#col3').append('.disk');
}