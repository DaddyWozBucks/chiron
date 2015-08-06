// $(function () {
// 	$("#cardio").on('click',function(event) {
// 		event.preventDefault()
// 		$( "#weight" ).html()
//     $( "#reps" ).html()
//     $( "#sets" ).html()
//     $("#dist").html("<input type='')
//     $( "#time" ).html("<%= f.label :time %><br /><%= f.number_field :time, autofocus: true %>")
//     $( "#cal" ).html("<%= f.label :calories %><br /><%= f.number_field :calories, autofocus: true %>")
// 	});
// 	$("#lifting").on('click',function(event) {
// 		event.preventDefault()
// 		$( "#dist" ).html()
//     $( "#time" ).html()
//     $( "#cal" ).html()
//     $( "#weight" ).html("<%= f.label :weight %><br /><%= f.number_field :weight, :class => 'text_field', :step => 'any' %>")
//     $( "#reps" ).html("<%= f.label :reps %><br /><%= f.number_field :reps, autofocus: true %>")
//     $( "#sets" ).html("<%= f.label :sets %><br /><%= f.number_field :sets, autofocus: true %>")
// 	});
// })

  $(document).on('ready', function(event) {
     $(".modal_trigger").on('click', function(event) {
       event.preventDefault();
       var id = $(event.currentTarget).data("id")        
       var templatelist = $(".templatedump").data("results");
       
        for (var i = templatelist.length - 1; i >= 0; i--) {
          if (templatelist[i].id === id)
          
              var currentTemplate = templatelist[i]
          };
          $("#myModalLabel").html(currentTemplate.name);
          $("#temp_instructions").html( currentTemplate.instructions);
          $("#temp_musclecat").html(currentTemplate.musclecat);
          $("#addtoworkout").attr('ex_id', 'currentTemplate.id');
          $("#pic1").attr('src', currentTemplate.imgurl);
          $("#pic2").attr('src', currentTemplate.img_target_url);
        $('#tempModal').modal()
    })
   });


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