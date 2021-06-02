Class {
	#name : #RSResizeTest,
	#superclass : #TestCase,
	#instVars : [
		'resize',
		'shapes'
	],
	#category : #'Roassal3-Layouts-Tests'
}

{ #category : #running }
RSResizeTest >> setUp [
	super setUp.
	shapes := (1 to: 3) collect: [ :o | 
		RSBox new
			height: o;
			width: o + 1;
			yourself ].
	resize := RSResize new.
	resize shapes: shapes.
]

{ #category : #tests }
RSResizeTest >> testBiggestExtent [
	self assert: resize biggestExtent equals: 4 @ 3
]

{ #category : #tests }
RSResizeTest >> testBiggestShape [
	self assert: resize biggestShape equals: shapes last.
	resize useBiggestShape.
	self assert: resize fixedShape equals: shapes last.
]

{ #category : #'as yet unclassified' }
RSResizeTest >> testBiggestShape_amp_A13 [
	"I test correctness of: 

- `^ fixedShape extent` in method: `RSResize >> #biggestExtent`

- `highestShape extent y < e extent y
	ifTrue: [ e ]
	ifFalse: [ highestShape ]` in method: `RSResize >> #highestShape`

"

	<smallAmpCoveres:
		'ReplaceIfTrueIfFalseReceiverWithTrueOperator#RSResize#highestShape#77#154'>
	<madeBySmallAmp>
	resize useBiggestShape.
	self assert: resize biggestExtent equals: 4.0 @ 3.0.
	resize sameHeight.
	self assert: resize highestShape baseRectangle area equals: 6.0
]

{ #category : #'as yet unclassified' }
RSResizeTest >> testBiggestShape_amp_A6 [
	"I test correctness of: 

- `biggestShape extent < e extent
	ifTrue: [ e ]
	ifFalse: [ biggestShape ]` in method: `RSResize >> #biggestShape`

- `widestElement extent x < e extent x
	ifTrue: [ e ]
	ifFalse: [ widestElement ]` in method: `RSResize >> #widestShape`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSResize#biggestExtent#39#57'>
	<madeBySmallAmp>
	resize sameWidth.
	self
		assert: resize biggestShape baseRectangle top equals: -0.5;
		assert: resize widestShape baseRectangle top equals: -0.5.
	resize useBiggestShape
]

{ #category : #tests }
RSResizeTest >> testHighestShape [
	self assert: resize highestShape equals: shapes last.

]

{ #category : #tests }
RSResizeTest >> testSameHeight [
	resize fixedShape: shapes second.
	resize sameHeight.
	self assert: (shapes collect: #extent) sorted asArray equals: (Array with: (2.0@2.0) with: (3.0@2.0) with: (4.0@2.0))
]

{ #category : #tests }
RSResizeTest >> testSameSize [
	resize fixedShape: shapes second.
	resize sameSize.
	self assert: (shapes collect: #extent) asSet asArray equals: (Array with: (3.0@2.0))
]

{ #category : #tests }
RSResizeTest >> testSameSizeWithoutFixedShape [
	resize sameSize.
	self assert: (shapes collect: #extent) asSet asArray equals: (Array with: (4.0 @ 3.0))
]

{ #category : #tests }
RSResizeTest >> testSameWidth [
	resize fixedShape: shapes second.
	resize sameWidth.
	self assert: (shapes collect: #extent) sorted asArray equals: (Array with: (3.0@1.0) with:(3.0@2.0) with: (3.0@3.0))
]

{ #category : #tests }
RSResizeTest >> testWidestShape [
	self assert: resize widestShape equals: shapes last.

]
