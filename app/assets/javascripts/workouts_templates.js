//  $(document).on('ready', function(event) {
//     $(".modal_trigger_worktemp").on('click', function(event) {
//       event.preventDefault();
//       var id = $(event.currentTarget).data("id") ;       
//       var name = $(event.currentTarget).data("name");
//       $("#myWorkTempLabel").html(name);
//       var idlist = $(".extempdump").data("results");
//       $("#exercise_list").html('');
//       $("#startyourengines").attr('data-id', id);
//       $("#exercise_list").html('<li id="worktemp_exercises" class="hidden"></li>');
//       var templatearray = [];
//       $.ajax({
//          url: "/workouts_templates/"   + id + "/sessionlists",
//          type: 'GET',
//              dataType: 'JSON',
//            })
//            .done(function(data) {   
//               var templatelist = data.templates;
//                 for (var i = templatelist.length - 1; i >= 0; i--) {
//                   $("#worktemp_exercises").append('<li class="panel panel-list list-item">' + templatelist[i][0] +'</li>');
//                   };       
//                  })
//            .fail(function() {
//              console.log("error");
//            })
//            .always(function() {
//              console.log("datacomplete");
//            });
//           var li = "<%= link_to 'Start!', new_workout_path(" + id + ")%>";
//             debugger
//            $('#worktempModal').modal("show"); 
 
//    });

// $("#startyourengines").on('click', function(event) {
//   event.preventDefault();
//   var id = $(event.currentTarget).data("id") ;
//   $('#worktempModal').modal(); 
//     $.ajax({
//         url: '/workouts',
//         type: 'POST',
//         dataType: 'JSON)',
//         data: {wt_id: id},
//             })
//             .done(function() {
//               console.log("success");
//             })
//             .fail(function() {
//               console.log("error");
//             })
//             .always(function() {
//               console.log("enginecomplete");
//             });
            
//           });
          
//           debugger
// });


    

        // $.ajax({
        //  url: '/workout_templates/' + id,
        //  type: 'GET',
        //      dataType: 'json',
        //    })
        //    .done(function(data) {
        //      templatearray.push(data)
        //    })
        //    .fail(function() {
        //      console.log("error");
        //    })
        //    .always(function() {
        //      console.log("complete");
        //    });
       
  // for (var i = templatelist.length - 1; i >= 0; i--) {
  //   if (templatelist[i].id === idlist)
             
  //     templatearray.push(templatelist[i])
                
  //         };
  //   debugger