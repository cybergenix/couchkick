# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(".post.span4").show()
  $container = $("#posts")
  $container.isotope itemSelector: ".post"
  $optionSets = $("#page-title .option-set")
  $optionLinks = $optionSets.find("a")
  $optionLinks.click ->
    $this = $(this)
    
    # don't proceed if already selected
    return false  if $this.hasClass("selected")
    $optionSet = $this.parents(".option-set")
    $optionSet.find(".selected").removeClass "selected"
    $this.addClass "selected"
    
    # make option object dynamically, i.e. { filter: '.my-filter-class' }
    options = {}
    key = $optionSet.attr("data-option-key")
    value = $this.attr("data-option-value")
    
    # parse 'false' as false boolean
    value = (if value is "false" then false else value)
    options[key] = value
    if key is "layoutMode" and typeof changeLayoutMode is "function"
      
      # changes in layout modes need extra logic
      changeLayoutMode $this, options
    else
      
      # otherwise, apply new options
      $container.isotope options
    false

$ ->
  if $(".hero-carousel").length > 0
    $(".hero-carousel").heroCarousel
      easing: "easeOutExpo"
      css3pieFix: true

