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