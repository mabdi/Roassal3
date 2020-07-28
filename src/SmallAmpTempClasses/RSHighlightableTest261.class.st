Class {
	#name : #RSHighlightableTest261,
	#superclass : #RSHighlightableTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSHighlightableTest261 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSHighlightableTest261 >> testBasic_amp [
	"I test correctness of: 

- `^ highlightShapes` in method: `RSHighlightable >> #highlightShapes`

"

	<madeBySmallAmp>
	| c shapes previousColor aRSHighlightable |
	c := RSCanvas new.
	shapes := (1 to: 10)
		collect: [ :n | 
			RSEllipse new
				size: 20;
				model: n ]
		as: RSGroup.
	c addAll: shapes.
	RSGridLayout on: shapes.
	previousColor := shapes fifth color.
	aRSHighlightable := RSHighlightable new.
	self
		assert:
			aRSHighlightable highlightShapes class
		equals: BlockClosure.
	aRSHighlightable doHighlight: shapes fifth.
	RSHighlightable new
		record: shapes fifth selector: #color value: Color blue;
		restore: shapes fifth selector: #color
]

{ #category : #'as yet unclassified' }
RSHighlightableTest261 >> testBasic_amp_A20 [
	"I test correctness of: 

- `^ inst` in method: `RSHighlightable class >> #defaultRed` when {#inst->nil}

"

	<madeBySmallAmp>
	| c shapes previousColor aRSHighlightable1 aRSHighlightable2 |
	c := RSCanvas new.
	shapes := (1 to: 10)
		collect: [ :n | 
			RSEllipse new
				size: 20;
				model: n ]
		as: RSGroup.
	c addAll: shapes.
	RSGridLayout on: shapes.
	previousColor := shapes fifth color.
	RSHighlightable new
		doHighlight: shapes fifth;
		record: shapes fifth selector: #color value: Color blue.
	aRSHighlightable1 := RSHighlightable new.
	aRSHighlightable2 := RSHighlightable defaultRed.
	self assert:
		aRSHighlightable2 class equals: RSHighlightable.
	aRSHighlightable1 restore: shapes fifth selector: #color
]

{ #category : #'as yet unclassified' }
RSHighlightableTest261 >> testBasic_amp_A26 [
	"I test correctness of: 

- `^ announcer ifNil: [ announcer := Announcer new ]` in method: `RSHighlightable >> #announcer` when {#announcer->nil}

"

	<madeBySmallAmp>
	| c shapes previousColor aRSHighlightable anAnnouncer |
	c := RSCanvas new.
	shapes := (1 to: 10)
		collect: [ :n | 
			RSEllipse new
				size: 20;
				model: n ]
		as: RSGroup.
	c addAll: shapes.
	RSGridLayout on: shapes.
	previousColor := shapes fifth color.
	RSHighlightable new
		doHighlight: shapes fifth;
		record: shapes fifth selector: #color value: Color blue.
	aRSHighlightable := RSHighlightable new.
	anAnnouncer := aRSHighlightable
		restore: shapes fifth selector: #color;
		announcer.
	self assert:
		anAnnouncer class equals: Announcer
]
