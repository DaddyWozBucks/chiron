$(function () {
	$("#addextemp").on('click',function(event) {
		event.preventDefault();
		$( "#drop1" ).clone().appendTo(".dropdown-holder")
	});
})

