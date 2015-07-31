

	$(document).on("click",'[data-hook]',function(event) {
		event.preventDefault()
		var x = $(event.currentTarget).data("hook")
		$('[data-id=x]').toggleClass('hidden');
	})
