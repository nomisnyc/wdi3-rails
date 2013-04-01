$(function(){

  $('#btn').click(cool_popup);
  $('#btncolor').click(backgroundcolor);
  $('#btnhide').click(hideme);
  $('#btnshow').click(show);
  $('#btncalulate').click(comp_area);
});

function cool_popup()
{
  var name= $('#name').val()
  alert(name + ',IM KIDDING!!');
}


function backgroundcolor()
{
  var color= $('#color').val()
  $('body').css('background-color','color');
}

function hideme()
{
  $('h1').hide();
}

function show()
  {
    $('h1').show();
}

function comp_area();
{
  $var width= parseFloat($('#width').val());
  $var height= parseFloat($('#height').val());
  $var a= area(height, width);
  $('#area').text(a + 'sqft');
  if(a < 100)
    $('#area').addClass('success');
  else
    $('#area').addClass('alert');

}

function area(width, height)
{
  return width * height
}