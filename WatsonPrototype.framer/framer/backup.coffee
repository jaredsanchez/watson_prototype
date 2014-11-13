# Welcome to Framer

# Learn how to prototype: http://framerjs.com/learn
# Drop an image on the device, or import a design from Sketch or Photoshop

# iconLayer = new Layer width:256, height:256, image:"images/framer-icon.png"
# iconLayer.center()
# 
# # Define a set of states with names (the original state is 'default')
# iconLayer.states.add
# 	second: {y:100, scale:0.6, rotationZ:100}
# 	third:  {y:300, scale:1.3, blur:4}
# 	fourth: {y:200, scale:0.9, blur:2, rotationZ:200}
# 
# # Set the default animation options
# iconLayer.states.animationOptions =
# 	curve: "spring(500,12,0)"
# 
# # On a click, go to the next state
# iconLayer.on Events.Click, ->
# 	iconLayer.states.next()

#wrapper layer
wrapperLayer = new BackgroundLayer({
	superLayer: null
})	
	
#background layer	
backgroundLayer = new BackgroundLayer({
	superLayer: wrapperLayer,
	backgroundColor:"white"
})

#bottom bar layer (2 parts)
#bottom bar layer (2 parts)
#bottom bar layer (2 parts)
#my cards (1)
cardsBottomBarLayer = new Layer({
	superLayer: backgroundLayer,
	width: backgroundLayer.midX,
	height: 150,
	x: backgroundLayer.minX,
	y: backgroundLayer.height - 150
	backgroundColor: "#007ce1"
})
cardsIconLayer = new Layer({
	image: "images/cards.png",
	x: 150,
	y: 25,
	superLayer: cardsBottomBarLayer
})
#documents (2)
documentsBottomBarLayer = new Layer({
	superLayer: backgroundLayer,
	width: backgroundLayer.midX,
	height: 150,
	x: backgroundLayer.width/2,
	y: backgroundLayer.height - 150,
	backgroundColor: "#007ce1"
})
documentsIconLayer = new Layer({
	image: "images/documents.png",
	x: 150,
	y: 25,
	superLayer: documentsBottomBarLayer
})

#top bar layer
#top bar layer
#top bar layer
#change top bar image(text)
topBarLayer = new Layer({
	width: backgroundLayer.width,
	height: 150,
	image: "http://dummyimage.com/580X120/ffffff/007ce1.png&text=Select+Document",
	superLayer: backgroundLayer,
	x: 40,
	y: -10
})
topBarLayer.states.add
	docTitle: {image:"http://dummyimage.com/580X120/ffffff/007ce1.png&text=Example+Title", x:25}
	cardsTitle: {image:"http://dummyimage.com/580X120/ffffff/007ce1.png&text=My+Flashcards", x:25}
	
backButtonIconLayer = new Layer({
	superLayer: backgroundLayer
	image: "images/backarrow3.png"
	y: 20
})
backButtonIconLayer.on Events.Click, ->
	docSelectWrapperLayer.bringToFront()
	cardsBottomBarLayer.bringToFront()
	documentsBottomBarLayer.bringToFront()
	topBarLayer.states.switchInstant("default")
documentsIconLayer.on Events.Click, ->
	docSelectWrapperLayer.bringToFront()
	cardsBottomBarLayer.bringToFront()
	documentsBottomBarLayer.bringToFront()
	topBarLayer.states.switchInstant("default")

	
lineLayer0 = new Layer({
	x: 75,
	y: 150,
	height: 5,
	width: 605,
	backgroundColor: "lightgray",
	superLayer: backgroundLayer
})

#scrollable documents viewer, includes pdf icon, titles, dividers
#scrollable documents viewer, includes pdf icon, titles, dividers
#scrollable documents viewer, includes pdf icon, titles, dividers
docSelectWrapperLayer = new Layer({
	superLayer: backgroundLayer,
	backgroundColor: "white"
	y:155,
	width: backgroundLayer.width
	height: 1030
})
docSelectLayer = new Layer({
	superLayer: docSelectWrapperLayer,
	backgroundColor: "white"
	height: 1500, 
	width: backgroundLayer.width,
})
docSelectWrapperLayer.scroll = true

#pdf icons, titles, dividing lines
#pdf icons, titles, dividing lines
#pdf icons, titles, dividing lines
pdfIconLayer1 = new Layer({
	image: "images/pdf.png",
	superLayer: docSelectLayer,
	x: 75,
	y: 50
})
exampleTitleLayer1 = new Layer({
	image: "http://dummyimage.com/480X150/ffffff/4d4d4d.png&text=Cardiology+in+India,+by+Jared..",
	superLayer: docSelectLayer,
	width: 580,
	height: 150,
	x: 175,
	y: 15, 
})
lineLayer1 = new Layer({
	x: 75,
	y: 200,
	height: 5,
	width: 605,
	backgroundColor: "lightgray",
	superLayer: docSelectLayer
})
pdfIconLayer2 = new Layer({
	image: "images/pdf.png",
	superLayer: docSelectLayer,
	x: 75,
	y: 250
})
exampleTitleLayer2 = new Layer({
	image: "http://dummyimage.com/480X150/ffffff/4d4d4d.png&text=Modern+Approaches+to+Cardi..",
	superLayer: docSelectLayer,
	width: 580,
	height: 150,
	x: 175,
	y: 215, 
})
lineLayer2 = new Layer({
	x: 75,
	y: 400,
	height: 5,
	width: 605,
	backgroundColor: "lightgray",
	superLayer: docSelectLayer
})
pdfIconLayer3 = new Layer({
	image: "images/pdf.png",
	superLayer: docSelectLayer,
	x: 75,
	y: 450
})
exampleTitleLayer3 = new Layer({
	image: "http://dummyimage.com/480X150/ffffff/4d4d4d.png&text=Journa+on+Cardiological+Probl+..",
	superLayer: docSelectLayer,
	width: 580,
	height: 150,
	x: 175,
	y: 415, 
})
lineLayer3 = new Layer({
	x: 75,
	y: 600,
	height: 5,
	width: 605,
	backgroundColor: "lightgray"
	superLayer: docSelectLayer
})
pdfIconLayer4 = new Layer({
	image: "images/pdf.png",
	superLayer: docSelectLayer,
	x: 75,
	y: 650
})
exampleTitleLayer4 = new Layer({
	image: "http://dummyimage.com/480X150/ffffff/4d4d4d.png&text=Another+Cardiological+Paper,+..",
	superLayer: docSelectLayer,
	width: 580,
	height: 150,
	x: 175,
	y: 615, 
})
lineLayer4 = new Layer({
	x: 75,
	y: 800,
	height: 5,
	width: 605,
	backgroundColor: "lightgray",
	superLayer: docSelectLayer
})
pdfIconLayer5 = new Layer({
	image: "images/pdf.png",
	superLayer: docSelectLayer,
	x: 75,
	y: 850
})
exampleTitleLayer5 = new Layer({
	image: "http://dummyimage.com/480X150/ffffff/4d4d4d.png&text=Research+Paper+on+Recent+Dev..",
	superLayer: docSelectLayer,
	width: 580,
	height: 150,
	x: 175,
	y: 815, 
})
lineLayer5 = new Layer({
	x: 75,
	y: 1000,
	height: 5,
	width: 605,
	backgroundColor: "lightgray",
	superLayer: docSelectLayer
})



##################################
##################################
##################################



#After a doc has been clicked on 
pdfIconLayer1.on Events.Click, ->
	docSelectWrapperLayer.sendToBack()
	cardsBottomBarLayer.sendToBack()
	documentsBottomBarLayer.sendToBack()
	docViewWrapperLayer.bringToFront()
	noteCardBarWrapperLayer.bringToFront()
	noteCardLayer.bringToFront()
	topBarLayer.states.switchInstant("docTitle")
	
docViewWrapperLayer = new Layer({
	superLayer:backgroundLayer,
	backgroundColor: "grey"
	width: backgroundLayer.width
	height: 1030
	y: 155
})
docViewLayer = new Layer({
	superLayer: docViewWrapperLayer,
	backgroundColor: "white"
	width: 1300,
	height: 2000,
	image: "images/samplePDF.png"
})
docViewWrapperLayer.scroll = true
docViewWrapperLayer.sendToBack()

noteCardBarWrapperLayer = new Layer({
	superLayer: backgroundLayer
	backgroundColor: "#007ce1"
	width: backgroundLayer.width
	height: 235,
	y: 1100
})
noteCardBarWrapperLayer.sendToBack()
questionLayer = new Layer({
	superLayer: noteCardBarWrapperLayer
	image: "http://dummyimage.com/140X75/007ce1/ffffff.png&text=Question"
	width: 175
	y: 10
	x: -10
})
answerLayer = new Layer({
	superLayer: noteCardBarWrapperLayer
	image: "http://dummyimage.com/110X75/007ce1/ffffff.png&text=Answer"
	width: 150
	x: 15
	y: 110
})

noteCardLayer = new Layer({
	superLayer: backgroundLayer
	backgroundColor: "whitesmoke"
	x: 175
	y: 1100
	width: 400 
	height: 235
})
noteCardLayer.states.add
	enlarged: {x: 75, y: 600, height: 352, width: 600}
noteCardLayer.states.animationOptions =
	curve: "ease-in-out"
noteCardLayer.sendToBack()
	  
saveTextLayer = new Layer ({
	superLayer: noteCardBarWrapperLayer
	image: "http://dummyimage.com/50X50/007ce1/ffffff.png&text=Save"
	x: 615
	y: 120
})
saveIconLayer = new Layer({
	superLayer:noteCardBarWrapperLayer
	image: "images/save.png"
	x: 615
	y: 30
})

#Event Listeners for note card
saveIconLayer.on Events.Click, ->
	noteCardLayer.states.switch("default")
	noteCardLayer.draggable.enabled = false
questionLayer.on Events.Click, ->
	noteCardLayer.states.switch("enlarged")
	noteCardLayer.draggable.enabled = true
answerLayer.on Events.Click, ->
	noteCardLayer.states.switch("enlarged")
	noteCardLayer.draggable.enabled = true





##################################
##################################
##################################




cardsIconLayer.on Events.Click, ->
	cardsViewWrapperLayer.bringToFront()
	topBarLayer.states.switchInstant("cardsTitle")

cardsViewWrapperLayer = new Layer({
	superLayer: backgroundLayer,
	backgroundColor: "grey"
	width: backgroundLayer.width
	height: 1030
	y: 155
})
cardsViewLayer = new Layer({
	superLayer: cardsViewWrapperLayer,
	backgroundColor: "white"
	width: backgroundLayer.width
	height: 1500,
})
cardsViewWrapperLayer.scroll = true
cardsViewWrapperLayer.sendToBack()

exampleCard1 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 75
	y: 40
	height: 160
	width: 275
})
exampleCard1.html = "What is a good example question?"
exampleCard1.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"
	
exampleCard2 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 400
	y: 40
	height: 160
	width: 275
})
exampleCard2.html = "What is a good example question?"
exampleCard2.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"

exampleCard3 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 75
	y: 240
	height: 160
	width: 275
})
exampleCard3.html = "What is your name?"
exampleCard3.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"

exampleCard4 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 400
	y: 240
	height: 160
	width: 275
})
exampleCard4.html = "What is a good example question?"
exampleCard4.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"
exampleCard5 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 75
	y: 440
	height: 160
	width: 275
})
exampleCard5.html = "What is your name?"
exampleCard5.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"
exampleCard6 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 400
	y: 440
	height: 160
	width: 275
})
exampleCard6.html = "What is your name?"
exampleCard6.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"
exampleCard7 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 75
	y: 640
	height: 160
	width: 275
})
exampleCard7.html = "What is a good example question?"
exampleCard7.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"

exampleCard8 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 400
	y: 640
	height: 160
	width: 275
})
exampleCard8.html = "What is a good example question?"
exampleCard8.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"
exampleCard9 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 75
	y: 840
	height: 160
	width: 275
})
exampleCard9.html = "What is your name?"
exampleCard9.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"

exampleCard10 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 400
	y: 840
	height: 160
	width: 275
})
exampleCard10.html = "What is a good example question?"
exampleCard10.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"
exampleCard11 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 75
	y: 1040
	height: 160
	width: 275
})
exampleCard11.html = "What is your name?"
exampleCard11.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"
exampleCard12 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 400
	y: 1040
	height: 160
	width: 275
})
exampleCard12.html = "What is your name?"
exampleCard12.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"
exampleCard13 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 75
	y: 1240
	height: 160
	width: 275
})
exampleCard13.html = "What is a good example question?"
exampleCard13.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"
exampleCard14 = new Layer({
	superLayer: cardsViewLayer
	backgroundColor: "whitesmoke"
	x: 400
	y: 1240
	height: 160
	width: 275
})
exampleCard14.html = "What is a good example question?"
exampleCard14.style = 
	fontSize: "25px"
	color: "slategrey"
	textAlign: "center"
	lineHeight: "150px"




####OPTIONS#####
#SAVE BLURB WHEN PUSH SAVE
#ANOTHER WAY TO BRING NOTECARD BACK DOWN 
#MAKE ALL PDF'S CLICKABLE/ADD MORE
#MAKE ALL NOTECARDS ENLARGABLE OR SOMETHING