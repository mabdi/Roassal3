Class {
	#name : #RSSearchInCanvasTest,
	#superclass : #RSTest,
	#instVars : [
		'c',
		'shapes',
		'con',
		'search'
	],
	#category : #'Roassal3-Interaction-Tests-Core'
}

{ #category : #running }
RSSearchInCanvasTest >> setUp [
	super setUp.
	c := RSCanvas new.
	shapes := (1 to: 10) * 100
		collect: [ :n | 
			RSEllipse new
				size: 20;
				color: Color gray;
				model: n ]
		as: RSGroup.
	c addAll: shapes.
	RSGridLayout on: shapes.
	shapes @ RSPopup.
	con := RSCanvasController new.
	search := RSSearchInCanvas new.
	con addInteraction: search.
	search canvas: c.
	c @ con
]

{ #category : #tests }
RSSearchInCanvasTest >> testBasic [
	search searchForShapes: '*4*'.
	self assert: shapes fourth color ~= Color gray.
	self assert: shapes fifth color = Color gray.
	
	search searchForShapes: '*5*'.
	self assert: shapes fourth color ~= Color gray.
	self assert: shapes fifth color ~= Color gray.
	
	self assert: search numberOfHighlightedShapes equals: 2.

	search resetAllHighlightedShapes.
	self assert: shapes fourth color equals: Color gray.
	self assert: shapes fifth color equals: Color gray.

]

{ #category : #'as yet unclassified' }
RSSearchInCanvasTest >> testBasic_amp_A14 [
	"I test correctness of: 

- `^ 'S'` in method: `RSSearchInCanvas >> #keyForSearch`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSSearchInCanvas#keyForSearch#15#19'>
	<madeBySmallAmp>
	| aString |
	aString := search keyForSearch.
	self assert: aString equals: 'S'.
	search
		searchForShapes: '*4*';
		searchForShapes: '*5*';
		resetAllHighlightedShapes
]

{ #category : #'as yet unclassified' }
RSSearchInCanvasTest >> testBasic_amp_L3_A120 [
	"I test correctness of: 

- `^ 'R'` in method: `RSSearchInCanvas >> #keyForReset`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSSearchInCanvas#keyForReset#14#18'>
	<madeBySmallAmp>
	| aString |
	aString := search
		searchForShapes: '**';
		searchForShapes: '*5*';
		resetAllHighlightedShapes;
		keyForReset.
	self assert: aString equals: 'R'
]

{ #category : #tests }
RSSearchInCanvasTest >> testColor [
	self assert: search numberOfPerformedSearches equals: 0.
	
	search searchForShapes: '4'.
	self assert: shapes fourth color ~= Color gray.
	self assert: shapes fifth color = Color gray.
	self assert: search numberOfPerformedSearches equals: 1.
	
	search searchForShapes: '5'.
	self assert: shapes fourth color ~= Color gray.
	self assert: shapes fifth color ~= Color gray.
	self assert: shapes fifth color ~= shapes fourth color.
	self assert: search numberOfPerformedSearches equals: 2.
	
	self assert: search numberOfHighlightedShapes equals: 2.

	search resetAllHighlightedShapes.
	self assert: shapes fourth color equals: Color gray.
	self assert: shapes fifth color equals: Color gray.
	self assert: search numberOfPerformedSearches equals: 0.

]

{ #category : #tests }
RSSearchInCanvasTest >> testExactMatch [
	search useExactMatch.
	search searchForShapes: '4'.
	self assert: shapes fourth color equals: Color gray.
	
	search doNotUseExactMatch.
	search searchForShapes: '4'.
	self assert: shapes fourth color ~= Color gray.
]

{ #category : #'as yet unclassified' }
RSSearchInCanvasTest >> testExactMatch_amp [
	"I test correctness of: 

- `^ highlightable` in method: `RSSearchInCanvas >> #highlightable`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSSearchInCanvas#searchForShapes:#309#314'>
	<madeBySmallAmp>
	search useExactMatch.
	self assert: search highlightable class equals: RSHighlightable.
	search
		searchForShapes: '4';
		doNotUseExactMatch;
		searchForShapes: '4'
]

{ #category : #tests }
RSSearchInCanvasTest >> testFixedShapes [

	self assert: c numberOfFixedShapes equals: 3.
	search searchForShapes: '4'.
	self assert: c numberOfFixedShapes equals: 4.
	search searchForShapes: '5'.
	self assert: c numberOfFixedShapes equals: 5.
	
	search resetAllHighlightedShapes.
	self assert: c numberOfFixedShapes equals: 3.
]

{ #category : #tests }
RSSearchInCanvasTest >> testFixedShapesAndPopup [

	| lbl |
	search searchForShapes: '4'.
	lbl := search fixedLabels first.
	lbl announce: RSMouseEnter new.
]

{ #category : #'as yet unclassified' }
RSSearchInCanvasTest >> testFixedShapes_amp_A56 [
	"I test correctness of: 

- `fixedLabels extent / 2 + (5 @ 5)` in method: `RSSearchInCanvas >> #searchForShapes:`

"

	<smallAmpCoveres:
		'ReplacePlusWithMinusMutantOperator#RSSearchInCanvas#searchForShapes:#646#677'>
	<smallAmpCoveres:
		'ReplaceDivisionWithMultiplicationMutantOperator#RSSearchInCanvas#searchForShapes:#646#667'>
	<madeBySmallAmp>
	| aCollection |
	aCollection := (search searchForShapes: '4') fixedLabels.
	self
		assert: (aCollection at: 1) computeEncompassingRectangle top
		equals: 4.999999999999998.
	search
		searchForShapes: '5';
		resetAllHighlightedShapes
]

{ #category : #tests }
RSSearchInCanvasTest >> testIsRegExpValid [
	self deny: (search isRegExpValid: '').
	self deny: (search isRegExpValid: nil).
]

{ #category : #tests }
RSSearchInCanvasTest >> testNoSearch [

	self assert: (c shapes allSatisfy: [ :s | s color = Color gray ])
]

{ #category : #tests }
RSSearchInCanvasTest >> testNumberOfHighlightedShapes [
	self assert: search numberOfHighlightedShapes equals: 0.
	search searchForShapes: '4'.
	self assert: search numberOfHighlightedShapes equals: 1.
	search searchForShapes: '5'.
	self assert: search numberOfHighlightedShapes equals: 2.
	search searchForShapes: '3'.
	self assert: search numberOfHighlightedShapes equals: 3.
	
	search resetAllHighlightedShapes.
	self assert: search numberOfHighlightedShapes equals: 0.
]

{ #category : #tests }
RSSearchInCanvasTest >> testWithEdge [

	| l |
	l := RSLine new.
	l attachPoint: RSCenteredAttachPoint new.
	l color: Color black.
	l from: shapes first.
	l to: shapes last.
	c add: l.
	
	search searchForShapes: '*5*'.
	self assert: l color equals: Color black.
	
	search searchForShapes: '*1*'.
	self assert: l color equals: Color black.
	
	search searchForShapes: '*10*'.
	self assert: l color equals: Color black
]

{ #category : #tests }
RSSearchInCanvasTest >> testWithEdgeAndhighlightable [

	| l interaction |
	
	interaction := RSHighlightable new.
	interaction highlightBorder: (RSBorder new width: 2).
	interaction withLines.
	c shapes @ interaction.
	
	l := RSLine new.
	l attachPoint: RSCenteredAttachPoint new.
	l color: Color black.
	l from: shapes first.
	l to: shapes last.
	c add: l.
	
	search searchForShapes: '*5*'.
	self assert: l color equals: Color black.
	
	search searchForShapes: '*1*'.
	self assert: l color equals: Color black.
	
	search searchForShapes: '*10*'.
	self assert: l color equals: Color black
]

{ #category : #'as yet unclassified' }
RSSearchInCanvasTest >> testWithEdge_amp_A71_A159_A34 [
	"I test correctness of: 

- `s model notNil and: [ s isNode ]` in method: `RSSearchInCanvas >> #candidateShapes`

"

	<smallAmpCoveres:
		'ReplaceSelectBlockWithAlwaysTrueBlockOperator#RSSearchInCanvas#candidateShapes#239#301'>
	<smallAmpCoveres:
		'ReplaceAndWithEqvMutantOperator#RSSearchInCanvas#candidateShapes#268#299'>
	<madeBySmallAmp>
	| l aCollection |
	l := RSLine new.
	l
		attachPoint: RSCenteredAttachPoint new;
		color: Color black;
		from: shapes first;
		to: shapes last.
	c add: l.
	aCollection := search
		searchForShapes: '*5*';
		candidateShapes.
	self assert:
		aCollection size equals: 10.
	(search
		searchForShapes: '*1*';
		searchForShapes: '*10*') resetAllHighlightedShapes.
	search useExactMatch
]
