ready = ->
  typed = new Typed('.element',
    strings: [
      'Software development should not be a secret process.'
      'When I take on a new project I make my goal to not only deliver a well crafted product but to also ensure that each stage fo the process is fully communicated.'
    ]
    typeSpeed: 90)
  return
 
$(document).ready
$(document).on 'turbolinks:load', ready