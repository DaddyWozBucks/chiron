$(function () {
	$("#addextemp").on('click',function(event) {
		event.preventDefault();
		$( "#drop1" ).clone().appendTo(".dropdown-holder")
	});
})

$(function () {
	$("#submitter").on('click',function(event) {
		event.preventDefault();
		
	});
})

$(function () {
  $(function () {

    $('.selector').on('submit', function (event) {
      event.preventDefault();
      var wt_id = $(".selector").find(":selected").attr('value')
      var et_id = $(".selector").find(":selected").attr('ex_id')
      debugger
      var url = '/workouts_templates/' + wt_id + '/sessionlists' 
      $.ajax({
        url: url,
        type: 'POST',
        dataType: 'JSON',
        data: {value: et_id, ex_id: wt_id},
        success: function(response) {
          debugger
        }
      })
      
    })
  })
})

