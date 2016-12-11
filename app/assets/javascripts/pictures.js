// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$( document ).ready(function() {
  $('#zoom-modal').on('show.bs.modal', function (event) {
    var image = $(event.relatedTarget) // Button that triggered the modal
    // Extract info from data-* attributes
    var bigImageUrl = image.data('image-large-url')
    var imageCaption = image.data('image-caption')
    var modal = $(this)
    modal.find('.modal-title').text(imageCaption)
    modal.find('.modal-body img').attr('src', bigImageUrl)
  })
})
