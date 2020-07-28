Class {
	#name : #RSResizeTest256,
	#superclass : #RSResizeTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSResizeTest256 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSResizeTest256 >> testSameWidth_amp_A14 [
	"I test correctness of: 

- `biggestShape extent < e extent
	ifTrue: [ e ]
	ifFalse: [ biggestShape ]` in method: `RSResize >> #biggestShape`

"

	<madeBySmallAmp>
	| aRSBox |
	aRSBox := resize
		fixedShape: shapes second;
		sameWidth;
		biggestShape.
	self assert:
		aRSBox baseRectangle top equals: -0.5
]

{ #category : #'as yet unclassified' }
RSResizeTest256 >> testSameWidth_amp_A15 [
	"I test correctness of: 

- `widestElement extent x < e extent x
	ifTrue: [ e ]
	ifFalse: [ widestElement ]` in method: `RSResize >> #widestShape`

"

	<madeBySmallAmp>
	| aRSBox |
	aRSBox := resize
		fixedShape: shapes second;
		sameWidth;
		widestShape.
	self assert:
		aRSBox baseRectangle top equals: -0.5
]

{ #category : #'as yet unclassified' }
RSResizeTest256 >> testSameWidth_amp_A18 [
	"I test correctness of: 

- `^ fixedShape extent` in method: `RSResize >> #biggestExtent`

"

	<madeBySmallAmp>
	| aPoint |
	aPoint := resize
		fixedShape: shapes second;
		sameWidth;
		biggestExtent.
	self assert:
		aPoint class equals: Point
]
