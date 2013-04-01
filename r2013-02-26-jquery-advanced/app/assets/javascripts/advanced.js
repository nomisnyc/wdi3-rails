$(function(){

    //$('#name').blur(blur_func);
    $('#age').change(validate_age);
    //$('body').mousemove(colorize);
    $('#body').keypress(shortcut);

});



function shortcut(data)
{
  var text = $('#text').text();
  $('#text').text(String.fromCharCode(data.which));

  switch(String.fromCharCode(data.which))
  {
    case 'g':
    $('#text').css('color', 'green');
    break;
    case 'y':
    $('#text').css('color', 'yellow');
    break;
    case 'b':
    $('#text').css('color', 'blue');
    break;
    case 'p':
    $('#text').css('color', 'purple');
    break;
    case 'o':
    $('#text').css('color', 'orange');
    break;
    case 'r':
    $('#text').css('color', 'red');
    break;
    default:
    $('#text').css('color', 'black');

  }
}

function colorize(eventdata)
{
  $('#x').text(eventdata.clientX)
  $('#y').text(eventdata.clientY)
var red = (eventdata.clientX * eventdata.clientY)%256;
var green = (eventdata.clientX * eventdata.clientY * 2)%256;
var blue = (eventdata.clientX * eventdata.clientY *3)%256;

  $('#y, #x').css('background-color', 'rgb( '+red+', '+green+' , '+blue+')');

  if((eventdata.clientX %2)===0)
    $('#x').css('color', 'blue');
  else
    $('#x').css('color', 'red');

  if((eventdata.clientY %2)===0)
    $('#y').css('color', 'blue');
  else
    $('#y').css('color', 'red');

  console.log(eventdata.clientX);
  console.log(eventdata.clientY);
}

function validate_age()
{
  $('body').children('p').remove();
  var p = $('<p>');
  $('body').prepend(p);
  var age = parseInt($('#age').val());
  p.text(age);
  if(age > 17)
    p.addClass('green');
  else
    p.addClass('red');
}

 // var age = parseInt($('#age').val());
 // if (age < 18)
 //  alert('you are too young').red
 // else
 //  $()


// function blur_func()
// {
//   alert('blur');
// }

// function change_func()
// {
//   alert('change');
// }

// function focus_func()
// {
//   alert('focus');
// }