"
`RSSearchInCanvas` am an option for the canvas controller. 
You can use `RSSearchInCanvas` as follows (press the S key and the R key):

```Smalltalk
c := RSCanvas new.
shapes := Collection withAllSubclasses collect: [ :n | RSEllipse new size: 20; model: n ] as: RSGroup.
c addAll: shapes.
shapes @ RSPopup.
eb := RSEdgeBuilder line.
eb canvas: c.
eb connectFrom: #superclass.
RSTreeLayout on: shapes.
c @ RSCanvasController.
```

```Smalltalk
c := RSCanvas new.
shapes := (1 to: 10) collect: [ :n | RSEllipse new size: 20; model: n ] as: RSGroup.
c addAll: shapes.
RSGridLayout on: shapes.
shapes @ RSPopup.
con := RSCanvasController new.
con addInteraction: RSSearchInCanvas new.
c @ con.
```

Another example:
```Smalltalk
c := RSCanvas new.

classes := Collection withAllSubclasses.
elements := classes collect: [ :cls |
	g := RSGroup new
		add: (RSLabel new text: cls name);
		add: (RSEllipse new size: (cls numberOfMethods + 5) sqrt; color: Color blue );
		yourself.
	RSVerticalLineLayout new center; on: g.
	g asShapeFor: cls ] as: RSGroup.

c addAll: elements.
high := RSHighlightable defaultRed.
elements @ high.
RSGridLayout new
	lineItemsCount: 5;
	on: elements.

con := RSCanvasController new.
con addInteraction: (search := RSSearchInCanvas new 
	colorToHighlight: Color blue translucent;
	yourself).

c @ con.
```

"
Class {
	#name : #RSSearchInCanvas,
	#superclass : #RSAbstractControlCanvas,
	#instVars : [
		'canvas',
		'useExactMatch',
		'highlightable',
		'fixedLabels',
		'highlightesShapes',
		'colorsToUse'
	],
	#category : #'Roassal3-Interaction-Controls'
}

{ #category : #public }
RSSearchInCanvas >> adjustRegExpIfNecessary: regExp [

	^ useExactMatch ifTrue: [ regExp ] ifFalse: [ '*', regExp, '*' ]
]

{ #category : #util }
RSSearchInCanvas >> candidateShapes [
	"Return shapes for which the model has to be matched. 
	 Only shapes that are not a line and having a model may be eligeable to be highligted"
	self assert: [ canvas notNil ] description: 'Canvas should be set first'.
	^ canvas shapes select: [ :s | s model notNil and: [ s isNode ] ]
]

{ #category : #accessing }
RSSearchInCanvas >> canvas: aCanvas [
	"Set the canvas from which shapes should be searched in"
	canvas := aCanvas
]

{ #category : #public }
RSSearchInCanvas >> cleanAndResetFixedshapes [

	fixedLabels do: [ :s | canvas removeFixedShape: s ].
	self resetFixedShapes
]

{ #category : #'public - configuration' }
RSSearchInCanvas >> colorToHighlight: aColor [
	"Set the color to highlight shapes when searching"
	highlightable := RSHighlightable new
		highlightColor: aColor;
		yourself.
]

{ #category : #public }
RSSearchInCanvas >> colorToUseToHighlight [

	^ colorsToUse scale: self numberOfPerformedSearches
]

{ #category : #public }
RSSearchInCanvas >> doHighlightShapes: shapesToHighlight [

	shapesToHighlight do: [ :s | 
		highlightable
			record: s
			selector: #color
			value: self colorToUseToHighlight ].

	"We record the highlighted shapes"
	highlightesShapes addAll: shapesToHighlight
]

{ #category : #'public - configuration' }
RSSearchInCanvas >> doNotUseExactMatch [
	"Expect a regular expression as input, but a * is prepended and appended to the regexp"
	useExactMatch := false
]

{ #category : #public }
RSSearchInCanvas >> doUnhighlightShapes [

	highlightesShapes do: [ :s | highlightable restore: s selector: #color ].
	highlightesShapes := RSGroup new.

]

{ #category : #accessing }
RSSearchInCanvas >> fixedLabels [
	"Return the label that are created when a search is performed"
	^ fixedLabels
]

{ #category : #accessing }
RSSearchInCanvas >> highlightable [
	^ highlightable
]

{ #category : #initialization }
RSSearchInCanvas >> initialize [

	super initialize.
	self resetFixedShapes.
	highlightesShapes := RSGroup new.
	
	colorsToUse := NSScale ordinalColored: 7.
	"The variable highlightedShapes contains the shapes that have been searched and therefore highlighted"
	self
		colorToHighlight: Color red;
		doNotUseExactMatch
]

{ #category : #util }
RSSearchInCanvas >> isRegExpValid: regExp [
	"Is the regular expression relevant to be processed"
	^ regExp notNil and: [ regExp notEmpty ]
]

{ #category : #configuration }
RSSearchInCanvas >> keyForReset [
	^ 'R'
]

{ #category : #configuration }
RSSearchInCanvas >> keyForSearch [
	^ 'S'
]

{ #category : #util }
RSSearchInCanvas >> numberOfHighlightedShapes [
	"Return the number of shapes that have been highlited"
	^ highlightesShapes size
]

{ #category : #accessing }
RSSearchInCanvas >> numberOfPerformedSearches [
	"Return the number of searches that have been done since the last reset. This number is the same than the number of fixed labels that were already set."
	^ fixedLabels size
]

{ #category : #private }
RSSearchInCanvas >> obtainRegExpToHighlight [
	"Open a UI"
	^ UIManager default
		request: 'Enter a reg exp to search for an item'
		initialAnswer: '*value*'
]

{ #category : #public }
RSSearchInCanvas >> onShape: aCanvas [
	aCanvas 
		when: RSKeyUp do: [ :evt | self processKeyUp: evt ]
]

{ #category : #private }
RSSearchInCanvas >> processKeyUp: evt [
	| keyName |
	self canvas: evt canvas.
	keyName := evt keyName.
	keyName = self keyForSearch ifTrue: [ self searchForShapes ].
	keyName = self keyForReset ifTrue: [ self resetAllHighlightedShapes ]
]

{ #category : #rendering }
RSSearchInCanvas >> renderLegendOn: aLegendBuilder [
	aLegendBuilder
		text: self keyForSearch
		description: 'Search and highlight items'.
	aLegendBuilder
		text: self keyForReset
		description: 'Unhighlight all items'
]

{ #category : #public }
RSSearchInCanvas >> resetAllHighlightedShapes [

	"Restore the colors of all the highlighted shapes. This method is called whtn keyForReset is pressed"

	self cleanAndResetFixedshapes.
	self doUnhighlightShapes.
	canvas signalUpdate
]

{ #category : #initialization }
RSSearchInCanvas >> resetFixedShapes [
	fixedLabels := RSGroup new
]

{ #category : #public }
RSSearchInCanvas >> searchForShapes [
	"callback called when some shapes have to be search"
	| regExp |
	regExp := self obtainRegExpToHighlight.
	(self isRegExpValid: regExp)
		ifFalse: [ ^ self ].
	self searchForShapes: regExp
]

{ #category : #public }
RSSearchInCanvas >> searchForShapes: regExp [
	"callback called when some shapes have to be search"

	| shapesToHighlight lbl |
	shapesToHighlight := self shapesToHighlightUsingRegExp:
		                     (self adjustRegExpIfNecessary: regExp).

	"No need to pursue if we have not found anything"
	shapesToHighlight ifEmpty: [ ^ self ].
	self doHighlightShapes: shapesToHighlight.

	lbl := RSLabel text: regExp model: shapesToHighlight size asString, ' elements'.
	lbl fontSize: 14.
	lbl @ RSPopup.
	lbl color: self colorToUseToHighlight.
	canvas add: lbl.
	lbl setAsFixed.
	fixedLabels add: lbl.
	RSHorizontalLineLayout on: fixedLabels.
	fixedLabels translateTo: fixedLabels extent / 2 + (5 @ 5).


	canvas signalUpdate
]

{ #category : #util }
RSSearchInCanvas >> shapesToHighlightUsingRegExp: regExp [
	"Return the shapes to be highlighted"	

	| candidateShapes shapesToHighlight |
	candidateShapes := self candidateShapes.
	shapesToHighlight := candidateShapes
		select: [ :s | regExp match: s model asString ].

	^ shapesToHighlight
]

{ #category : #util }
RSSearchInCanvas >> unhighlightShape: s [
	^ RSHighlightable new restore: s selector: #color
]

{ #category : #util }
RSSearchInCanvas >> unhighlightShapes: shapesToHighlight [
	shapesToHighlight do: [ :s | self unhighlightShape: s ]
]

{ #category : #'public - configuration' }
RSSearchInCanvas >> useExactMatch [
	"Expect a regular expression as input"
	useExactMatch := true
]
