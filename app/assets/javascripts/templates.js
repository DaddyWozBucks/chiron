$(function () {
	$("#cardio").on('click',function(event) {
		// event.preventDefault();
		// $( "#weightdist" ).html(<%= f.label :distance %><br />
  //   	<%= f.number_field :distance, :class => 'text_field', :step => 'any' %>)
  //   	$( "#timereps" ).html(<%= f.label :time %><br />
  //   	<%= f.number_field :time, autofocus: true %>)
  //   	$( "#calsets" ).html(<%= f.label :calories %><br />
  //   	<%= f.number_field :calories, autofocus: true %>)
	});
	$("#lifting").on('click',function(event) {
		// event.preventDefault();
		// $( "#weightdist" ).html(<%= f.label :weight %><br />
  //   	<%= f.number_field :weight, :class => 'text_field', :step => 'any' %>)
  //   	$( "#timereps" ).html(<%= f.label :reps %><br />
  //   	<%= f.number_field :reps, autofocus: true %>)
  //   	$( "#calsets" ).html(<%= f.label :sets %><br />
  //   	<%= f.number_field :sets, autofocus: true %>)
	});
})

$(function () {
  $(function () {

    $('.selector').on('submit', function (event) {
      event.preventDefault();
      var wt_id = $(".selector").find(":selected").attr('value')
      var et_id = $(".selector").find(":selected").attr('ex_id')
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