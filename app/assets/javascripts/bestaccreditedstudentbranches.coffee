# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
  $(document).ready ->
    $('#institution_membership_no_id').on 'change', ->
      $.ajax
        url: '/bestaccreditedstudentbranches/getname/' + $(this).val()
        type: 'get'
      return
      
    $(document).ready(ready)
    $(document).on('page:load', ready)
    
$ ->  
  $(document).ready ->
  setTimeout (->
    $('.alert_wrapper').fadeOut 'slow', ->
      $(this).remove()
      return
    return
  ), 2500
  return 
  $(document).ready(ready)
  $(document).on('page:load', ready)    