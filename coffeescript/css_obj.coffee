css = (element, styles) ->
  element.style ?= {}
  for own prop, value of styles
    element.style[prop] = value

element = {}
styles = 
  width: '10px'
  color: 'red'

css(element, styles)
console.log element
