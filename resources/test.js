$(function() {
	@.ajax({
		url: '/urls/2342342', //make a call to this url, if it runs successfully go to .done
		type: 'get',
		data {foo: "bar"}
	})
	.done(function(response){ 	//can take 3 params (response, textStatus, xhr)
		console.log("from server: ", response);
	})
	.fail(function(xhr){
		debugger
		console.log("error", xhr.status) 	//will display error and 404 or some error status code
	});
});

//////////////////////////////////////////////

$(function() {

	function onSuccess(response, textStatus, xhr){ 	// you wouldnt need response in this ex
		console.log(textStatus, xhr.status)
	}

	function onFailure(xhr, textSattus, errorThrown) {
		console.log(xhr.status, textStatus, errorThrown);
	}
})


$(function() {
	@.ajax({
		url: '/',
		type: 'get',	// by default its a get request so you dont need to include it
		data {foo: "bar"} // in this example you dont need this
	})
	xhr.done(onSuccess)
	xhr.fail(onFailure)
	});

///////////////////////////////////////////////

// both of the above example would work in rails - but there are
// other ways to do ajax in rails...

///////////////////////////////////////////////

//////////////////////////////////////////////
//add 'remote: true' in a form, replaces...

$('someform').on('submit', function(e){
	e.preventDefault()

	var xhr = $.ajax({
		url: '/'
	})
}

//it only doesnt handle the on success or and failure action, so you need...

$(function() {
		function onSuccess(e, response, textStatus, xhr) {
			console.log("success", xhr.status, textStatus)
		}

		function onFailure(e, response, textStatus, errorThrown) {
			console.log("error", xhr.status, textStatus)
		}
		$('form').on('ajax:success', onSucess)
		$('form').on('ajax:error', onFailure)


	})

});


/////////////////////////////////////////////////

put 'remote: true' in the top line of the form before do
	-

remote true adds data-remote = true
data - ______ will let you use an attribute value (the ______)

/////////////////////////////////////////////////

rails puts in a js function
element.trigger('')


//////////////////////////////////////////////////////////////
$(document).ready(function(e) {
	e.preventDefault()

});








// bind an event
// create an ajax call
// implement the done and fail call













<!-- @article, :remote => true, :html => {"data-type" => :json})

  Name:<%= form_for (:comment, :remote => true, :html => {"data-type" => :json}) do |f| %> -->


