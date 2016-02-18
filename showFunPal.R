showFunPal = function(name) {
  require(magrittr)

  pal = funPals[[name]]

  pal %T>%
    print %>%
    structure(class = "palette", name = name)
}