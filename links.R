###################################
### Images and Color Extraction ###
###################################

# rPlotter has a lot of dependencies going on with it; be prepared to spend some
# time making sure everything installs properly

library(rPlotter)

# If you don't have it, here are the instructions from Jo-fai's GitHub:
# install.packages(c("ggplot2", "stringr", "reshape2", "dichromat"))
# source("http://bioconductor.org/biocLite.R")
# biocLite("EBImage")
# library(devtools)
# install_github("ramnathv/rblocks")
# install_github("woobe/rPlotter")


### Links ###

## Marvel

xmen1 = "http://1.bp.blogspot.com/-jfee3UEFSAA/Tgo5-9hX3II/AAAAAAAAAeE/oDCzvuTwRdg/s1600/10-09a434ac-6121.jpg"
xmen2 = "http://4.bp.blogspot.com/-XNoQvUyCD6c/TzSoNkiDOyI/AAAAAAAABQ0/InajQiMORGk/s1600/xmen90s.jpg"
boem = "https://upload.wikimedia.org/wikipedia/en/c/cd/Brotherhoodmute.jpg"
marvel = "http://desktop.freewallpaper4.me/view/original/6175/marvel-superheroes.jpg"

## Turbo Kid

turboKid1 = "http://pausegeek.fr/img/jqt/cine/film/turbokid-2015.jpg"
turboKid2 = "http://quinlan.it/upload/images/2015/11/turbo-kid-poster.jpg"
turboKid3 = "http://www.tvqc.com/wp-content/uploads/2015/10/91lpelhDLAL._SL1500_.jpg"

## South Park

cartman = "http://vignette3.wikia.nocookie.net/southpark/images/9/9e/Eric_cartman.png"
stan = "http://vignette2.wikia.nocookie.net/southpark/images/a/a7/StanMarsh.png"
kyle = "http://vignette1.wikia.nocookie.net/southpark/images/7/70/165px-KyleBroflovski.png"
kenny = "http://vignette2.wikia.nocookie.net/southpark/images/6/6f/KennyMcCormick.png"
boys = "http://orig13.deviantart.net/4dd6/f/2014/071/d/d/hooplah_by_xanyleaves-d79x17l.png"
credits = "http://i.stack.imgur.com/ByzO3.png"

## Beavis and Butthead

beavisButthead = "https://johnjamesdamico.files.wordpress.com/2011/10/beavis-and-butthead.png"

### Color Extraction ###

## Marvel

marvelLinks = list(xmen1, xmen2, boem, marvel)

allCol = lapply(marvelLinks, extract_colours)

xmen1Cols = allCol[[1]]

xmen2Cols = allCol[[2]]

boemCols = allCol[[3]]

marvelCols = allCol[[4]]

## Turbo Kid

tkLinks = list(turboKid1, turboKid2, turboKid3)

tkCols = lapply(tkLinks, extract_colours)

turboKid1Cols = tkCols[[1]]

turboKid2Cols = tkCols[[2]]

turboKid3Cols = tkCols[[3]]

## South Park

spLinks = list(cartman, stan, kyle, kenny, boys, credits)

spCols = lapply(spLinks, extract_colours)

cartmanCol = spCols[[1]]

stanCol = spCols[[2]]

kyleCol = spCols[[3]]

kennyCol = spCols[[4]]

boysCol = spCols[[5]]

creditsCol = spCols[[6]]

## Beavis and Butthead

beavisButtheadCol = extract_colours(beavisButthead, num_col = 8)

nameSetter = function(palNam, groupCols, indNum){
  palName = groupCols[[indNum]]
  return(palName)
}

