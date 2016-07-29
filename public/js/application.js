$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()


  // $("#registration_form").on('submit', function(event){
  //   event.preventDefault();
  //   var $registrationForm = $(this);
  //   var $formContainer = $(this).parent(".r-form-1-bottom");

  //   var $victimInfo = $formContainer.find('.fuinator').css("visbility", "visible" );
  //   var data = $registrationForm.serialize();

  //   $.ajax({
  //     url: '/users',
  //     type: 'POST',
  //     data: data
  //   })
  //   .done(function(response) {
  //     console.log("success");
  //     $(".r-form-1-top-right").hide();
  //     $formContainer.hide();

  //   })


  // })
});
