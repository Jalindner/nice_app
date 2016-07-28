$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()


  $("#registration_form").on('submit', function(event){
    event.preventDefault();
    var formContainer = $(this).parent(".r-form-1-bottom");
    formContainer.hide();
    var $victimInfo = formContainer.find('.fuinator').css("visbility", "visible" );
    console.log(formContainer);
    console.log($victimInfo);

  })
});
