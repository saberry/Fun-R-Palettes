library(rPlotter)

### Marvel ###

xmen1 = "http://1.bp.blogspot.com/-jfee3UEFSAA/Tgo5-9hX3II/AAAAAAAAAeE/oDCzvuTwRdg/s1600/10-09a434ac-6121.jpg"

xmen2 = "http://4.bp.blogspot.com/-XNoQvUyCD6c/TzSoNkiDOyI/AAAAAAAABQ0/InajQiMORGk/s1600/xmen90s.jpg"

boem = "https://upload.wikimedia.org/wikipedia/en/c/cd/Brotherhoodmute.jpg"

marvel = "http://desktop.freewallpaper4.me/view/original/6175/marvel-superheroes.jpg"

marvelLinks = list(xmen1, xmen2, boem, marvel)

allCol = lapply(marvelLinks, extract_colours)

xmen1Cols = unlist(allCol[1])

display_colours(xmen1Cols)

xmen2Cols = unlist(allCol[2])

display_colours(xmen2Cols)

boemCols = unlist(allCol[3])

display_colours(boemCols)

marvelCols = unlist(allCol[4])

display_colours(xmen1Cols)

marvelColors = extract_colours(marvel, num_col = 25)

display_colours(marvelColors)

### Turbo Kid ###

turboKid1 = "http://pausegeek.fr/img/jqt/cine/film/turbokid-2015.jpg"

turboKid2 = "http://quinlan.it/upload/images/2015/11/turbo-kid-poster.jpg"

turboKid3 = "http://www.tvqc.com/wp-content/uploads/2015/10/91lpelhDLAL._SL1500_.jpg"

tkLinks = list(turboKid1, turboKid2, turboKid3)

tkCols = lapply(tkLinks, extract_colours)

turboKid1Cols = unlist(tkCols[1])

display_colours(turboKid1Cols)

turboKid2Cols = unlist(tkCols[2])

display_colours(turboKid2Cols)

turboKid3Cols = unlist(tkCols[3])

display_colours(turboKid3Cols)

### South Park ###

### Links
cartman = "http://vignette3.wikia.nocookie.net/southpark/images/9/9e/Eric_cartman.png"
stan = "http://vignette2.wikia.nocookie.net/southpark/images/a/a7/StanMarsh.png"
kyle = "http://vignette1.wikia.nocookie.net/southpark/images/7/70/165px-KyleBroflovski.png"
kenny = "http://vignette2.wikia.nocookie.net/southpark/images/6/6f/KennyMcCormick.png"
boys = "http://orig13.deviantart.net/4dd6/f/2014/071/d/d/hooplah_by_xanyleaves-d79x17l.png"
credits = "http://i.stack.imgur.com/ByzO3.png"

spLinks = list(cartman, stan, kyle, kenny, boys, credits)

spCols = lapply(spLinks, extract_colours)

cartmanCol = unlist(spCols[1])

stanCol = unlist(spCols[2])

kyleCol = unlist(spCols[3])

kennyCol = unlist(spCols[4])

boysCol = unlist(spCols[5])

creditsCol = unlist(spCols[6])


### Colors

display_colours(stanCol)
display_colours(kyleCol)
display_colours(cartmanCol)
display_colours(kennyCol)
display_colours(boysCol)
display_colours(creditsCol)


