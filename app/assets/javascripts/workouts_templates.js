 $(document).on('ready', function(event) {
     $(".modal_trigger_worktemp").on('click', function(event) {
       event.preventDefault();
       var id = $(event.currentTarget).data("id")        
       var templatelist = $(".worktempdump").data("results");
       var idlist = $(".extempdump").data("results");
       debugger
        var templatearray = []
        for (var i = templatelist.length - 1; i >= 0; i--) {
          if (templatelist[i].id === idlist)
             
              templatearray.push(templatelist[i])
                
          };


        for (var i = templatearray.length - 1; i >= 0; i--) {
          debugger
            $("#worktemp_exercises").append("<li>" + templatearray[i].name +  "</li>")
          };  
          $("#myWorkTempLabel").html(currentTemplate.name);
          $("#pic2wt").attr('src', currentTemplate.img_target_url);
          $("#startyourengines").html("<%= link_to 'Start!', new_workout_path(id)%>")
          $('#worktempModal').modal()
    })
   });
$(".timebait").on('ready', function(event) {
 
  setTimeout(function(){
    $('#newWorkTempModal').modal()
  },2000)
});
    

        // $.ajax({
       //   url: '/workout_templates/' + id,
       //   type: 'GET',
       //   dataType: 'json',
       //   data: {param1: 'value1'},
       // })
       // .done(function() {
       //   console.log("success");
       // })
       // .fail(function() {
       //   console.log("error");
       // })
       // .always(function() {
       //   console.log("complete");
       // });
       