// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$( document ).ready(function() {
  $('#zoom-modal').on('show.bs.modal', function (event) {
    console.log('modal opened')
    var image = $(event.relatedTarget) // Button that triggered the modal
    var bigImageUrl = image.data('image-large-url') // Extract info from data-* attributes
    var imageCaption = image.data('image-caption')
    console.log(bigImageUrl)
    console.log(imageCaption)
    // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
    var modal = $(this)
    modal.find('.modal-title').text(imageCaption)
    modal.find('.modal-body img').attr('src', bigImageUrl)
  })
})
