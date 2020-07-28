Class {
	#name : #RSSearchInCanvasTest209,
	#superclass : #RSSearchInCanvasTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSSearchInCanvasTest209 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSSearchInCanvasTest209 >> testBasic_amp_A15 [
	"I test correctness of: 

- `^ 'S'` in method: `RSSearchInCanvas >> #keyForSearch`

"

	<madeBySmallAmp>
	| aString |
	aString := search
		searchForShapes: '*4*';
		searchForShapes: '*5*';
		keyForSearch.
	self assert: aString equals: 'S'.
	search resetAllHighlightedShapes
]

{ #category : #'as yet unclassified' }
RSSearchInCanvasTest209 >> testIsRegExpValid_amp [
	"I test correctness of: 

- `^ highlightable` in method: `RSSearchInCanvas >> #highlightable`

"

	<madeBySmallAmp>
	| aFalse |
	aFalse := search isRegExpValid: ''.
	self assert: search highlightable class equals: RSHighlightable.
	aFalse value not.
	search isRegExpValid: nil
]

{ #category : #'as yet unclassified' }
RSSearchInCanvasTest209 >> testIsRegExpValid_amp_A17 [
	"I test correctness of: 

- `^ 'R'` in method: `RSSearchInCanvas >> #keyForReset`

"

	<madeBySmallAmp>
	| aString |
	(search isRegExpValid: '') value not.
	aString := search
		isRegExpValid: nil;
		keyForReset.
	self assert: aString equals: 'R'
]

{ #category : #'as yet unclassified' }
RSSearchInCanvasTest209 >> testIsRegExpValid_amp_A23 [
	<madeBySmallAmp>
	(search isRegExpValid: '') value not.
	search isRegExpValid: nil.
	self
		should: [ search searchForShapes ]
		takeMoreThan: (Duration milliSeconds: 2000)
]

{ #category : #'as yet unclassified' }
RSSearchInCanvasTest209 >> testWithEdgeAndhighlightable_amp_A11 [
	"I test correctness of: 

- `s model notNil and: [ s isNode ]` in method: `RSSearchInCanvas >> #candidateShapes`

"

	<madeBySmallAmp>
	| l interaction aCollection |
	interaction := RSHighlightable new.
	interaction
		highlightBorder: (RSBorder new width: 2);
		withEdges.
	c shapes @ interaction.
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
	search
		searchForShapes: '*1*';
		searchForShapes: '*10*'
]
