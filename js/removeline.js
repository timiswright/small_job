$(document).ready(function() {
  $(".delete").live('click',function(){
    $(this).parents('.item-row').remove();
    if ($(".delete").length < 2) $(".delete").hide();
  }); 
});