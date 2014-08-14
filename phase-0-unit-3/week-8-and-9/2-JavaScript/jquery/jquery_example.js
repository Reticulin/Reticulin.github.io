$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'});
 
//RELEASE 1:
bodyElement = $('body');
headerElement = $('h1');
 
 
//RELEASE 2: 
$('h1').css({'color': 'blue',
			 'border-width':'1px',
			 'border-style':'solid',
			 'border-color':'white'});
$('h1').html("GOPHER SNAKES");

 
//RELEASE 3: Event Listener
  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://www.critterzone.com/animal-pictures-nature/stock-photos/gopher-snake-head-closeup-AWRP051306-10.jpg')
  });
  $('img').click(function() {
  	$(this).attr('src', 'dbc_logo.jpg')
  });
 
 
//RELEASE 4 : Experiment on your own
 $('img').dblclick(function(){
 	$(this).animate({
 		height:'toggle',
 		opacity:'0.5'
 	})
 })
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
