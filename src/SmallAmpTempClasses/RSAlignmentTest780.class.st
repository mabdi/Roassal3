Class {
	#name : #RSAlignmentTest780,
	#superclass : #RSAlignmentTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSAlignmentTest780 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSAlignmentTest780 >> testCenter_amp_A11 [
	"I test correctness of: 

- `maxS encompassingRectangle floatCenter
	<= s encompassingRectangle floatCenter` in method: `RSAlignment >> #centerMostShape`

"

	<madeBySmallAmp>
	| es aRSBox |
	es := (1 to: 5) collect: [ :v | RSBox new size: 10 ] as: RSGroup.
	RSHorizontalLineLayout on: es.
	aRSBox := align
		shapes: es;
		centerMostShape.
	self assert:
		aRSBox matrix x equals: 85.0
]

{ #category : #'as yet unclassified' }
RSAlignmentTest780 >> testCenter_amp_A11_A1 [
	"I test correctness of: 

- `maxS encompassingRectangle top >= s encompassingRectangle top` in method: `RSAlignment >> #topMostShape`

"

	<madeBySmallAmp>
	| es aRSBox |
	es := (1 to: 5) collect: [ :v | RSBox new size: 10 ] as: RSGroup.
	RSHorizontalLineLayout on: es.
	aRSBox := align
		shapes: es;
		topMostShape.
	self assert:
		aRSBox matrix x equals: 85.0.
	align centerMostShape
]

{ #category : #'as yet unclassified' }
RSAlignmentTest780 >> testCenter_amp_A11_L10_A7 [
	"I test correctness of: 

- `maxS encompassingRectangle top <= s encompassingRectangle top` in method: `RSAlignment >> #bottomMostShape`

"

	<madeBySmallAmp>
	| es aRSBox |
	es := (1 to: 2) collect: [ :v | RSBox new size: 10 ] as: RSGroup.
	RSHorizontalLineLayout on: es.
	aRSBox := align
		shapes: es;
		bottomMostShape.
	self assert:
		aRSBox matrix x equals: 25.0.
	align centerMostShape
]

{ #category : #'as yet unclassified' }
RSAlignmentTest780 >> testFromBottom_amp_A11_A33 [
	"I test correctness of: 

- `maxS encompassingRectangle floatCenter
	<= s encompassingRectangle floatCenter` in method: `RSAlignment >> #centerMostShape`

"

	<madeBySmallAmp>
	| es aRSBox |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align
		shapes: es;
		centerMostShape.
	RSHorizontalLineLayout on: es.
	es second translateBy: 0 @ 150.
	aRSBox := align
		bottom;
		centerMostShape.
	self assert:
		aRSBox matrix x equals: 5.0
]

{ #category : #'as yet unclassified' }
RSAlignmentTest780 >> testFromLeftWithFixedShape_amp_A11 [
	"I test correctness of: 

- `maxS encompassingRectangle floatCenter
	<= s encompassingRectangle floatCenter` in method: `RSAlignment >> #centerMostShape`

"

	<madeBySmallAmp>
	| es c aRSBox |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	aRSBox := align
		shapes: es;
		centerMostShape.
	self assert:
		aRSBox baseRectangle top equals: -50.0.
	RSVerticalLineLayout on: es.
	es second translateBy: -150 @ 0.
	RSCanvas new addAll: es.
	es do: [ :s | s setAsFixed ].
	align left
]

{ #category : #'as yet unclassified' }
RSAlignmentTest780 >> testFromLeftWithFixedShape_amp_A15 [
	"I test correctness of: 

- `maxS encompassingRectangle left >= s encompassingRectangle left` in method: `RSAlignment >> #leftMostShape`

"

	<madeBySmallAmp>
	| es c aRSBox |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSVerticalLineLayout on: es.
	es second translateBy: -150 @ 0.
	RSCanvas new addAll: es.
	es do: [ :s | s setAsFixed ].
	aRSBox := align
		left;
		leftMostShape.
	self assert:
		aRSBox matrix x equals: -100.0
]

{ #category : #'as yet unclassified' }
RSAlignmentTest780 >> testFromRight_amp_A20 [
	"I test correctness of: 

- `maxS encompassingRectangle right <= s encompassingRectangle right` in method: `RSAlignment >> #rightMostShape`

"

	<madeBySmallAmp>
	| es aRSBox |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSVerticalLineLayout on: es.
	es second translateBy: 150 @ 0.
	aRSBox := align
		right;
		rightMostShape.
	self assert:
		aRSBox matrix x equals: 120.0
]
