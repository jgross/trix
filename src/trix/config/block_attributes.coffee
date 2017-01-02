Trix.config.blockAttributes = attributes =
  default:
    tagName: "div"
    parse: false
    options:
      dir: "auto"
  quote:
    tagName: "blockquote"
    nestable: true
    options:
      dir: "auto"
  heading1:
    tagName: "h1"
    terminal: true
    breakOnReturn: true
    group: false
    options:
      dir: "auto"
  code:
    tagName: "pre"
    terminal: true
    text:
      plaintext: true
  bulletList:
    tagName: "ul"
    parse: false
    options:
      dir: "auto"
  bullet:
    tagName: "li"
    listAttribute: "bulletList"
    group: false
    nestable: true
    test: (element) ->
      Trix.tagName(element.parentNode) is attributes[@listAttribute].tagName
  numberList:
    tagName: "ol"
    parse: false
    options:
      dir: "auto"
  number:
    tagName: "li"
    listAttribute: "numberList"
    group: false
    nestable: true
    test: (element) ->
      Trix.tagName(element.parentNode) is attributes[@listAttribute].tagName
