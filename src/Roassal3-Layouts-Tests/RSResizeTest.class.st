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

{ #category : #'as yet unclassified' }
RSResizeTest >> testBiggestExtent_amp_A6_A17 [
	<smallAmpCoveres:
		'ReplaceIfTrueIfFalseReceiverWithTrueOperator#RSResize#widestShape#77#156'>
	<madeBySmallAmp>
	resize
		useWidestShape;
		sameWidth.
	self
		assert: resize class equals: RSResize;
		assert: resize widestShape class equals: RSBox;
		assert: resize widestShape allRecursiveConnectedShapes class
			equals: Set;
		assert: resize widestShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: resize widestShape allRecursiveConnectedShapes isHealthy;
		assert: resize widestShape allRecursiveConnectedShapes size
			equals: 1;
		assert: resize widestShape matrix class
			equals: AthensAffineTransform;
		assert: resize widestShape matrix sx equals: 1.0;
		assert: resize widestShape matrix inverted class
			equals: AthensAffineTransform;
		assert: resize widestShape matrix x equals: 0.0;
		assert: resize widestShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: resize widestShape matrix shy equals: 0.0;
		assert: resize widestShape matrix y equals: 0.0;
		assert: resize widestShape matrix translation class equals: Point;
		assert: resize widestShape matrix sy equals: 1.0;
		assert: resize widestShape matrix shx equals: 0.0;
		assert: resize widestShape matrix scale class equals: Point;
		assert: resize widestShape isNode;
		deny: resize widestShape shouldUpdateLines;
		deny: resize widestShape hasEdges;
		deny: resize widestShape hasCornerRadius;
		assert: resize widestShape baseRectangle class equals: Rectangle;
		assert: resize widestShape baseRectangle top equals: -0.5;
		assert: resize widestShape baseRectangle extent class equals: Point;
		assert: resize widestShape baseRectangle hasPositiveExtent;
		assert: resize widestShape baseRectangle area equals: 4.0;
		deny: resize widestShape baseRectangle isTall;
		assert: resize widestShape baseRectangle aboveCenter class
			equals: Point;
		assert: resize widestShape baseRectangle bottomCenter class
			equals: Point;
		assert: resize widestShape baseRectangle corner class equals: Point;
		assert: resize widestShape baseRectangle left equals: -2.0;
		assert: resize widestShape baseRectangle origin class equals: Point;
		assert: resize widestShape baseRectangle width equals: 4.0;
		assert: resize widestShape baseRectangle right equals: 2.0;
		deny: resize widestShape baseRectangle isZero;
		assert: resize widestShape baseRectangle isWide;
		assert: resize widestShape baseRectangle innerCorners class
			equals: Array;
		assert: resize widestShape baseRectangle innerCorners size
			equals: 4;
		assert: resize widestShape baseRectangle topCenter class
			equals: Point;
		assert: resize widestShape baseRectangle topRight class
			equals: Point;
		assert: resize widestShape baseRectangle bottomRight class
			equals: Point;
		assert: resize widestShape baseRectangle center class equals: Point;
		assert: resize widestShape baseRectangle topLeft class
			equals: Point;
		assert: resize widestShape baseRectangle bottom equals: 0.5;
		assert: resize widestShape baseRectangle floatCenter class
			equals: Point;
		assert: resize widestShape baseRectangle leftCenter class
			equals: Point;
		assert: resize widestShape baseRectangle isRectangle;
		assert: resize widestShape baseRectangle bottomLeft class
			equals: Point;
		assert: resize widestShape baseRectangle corners class
			equals: Array;
		assert: resize widestShape baseRectangle corners size equals: 4;
		assert: resize widestShape baseRectangle rightCenter class
			equals: Point;
		assert: resize widestShape baseRectangle height equals: 1.0;
		assert: resize widestShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: resize widestShape computeEncompassingRectangle top
			equals: -0.5;
		assert: resize widestShape computeEncompassingRectangle extent class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle hasPositiveExtent;
		assert: resize widestShape computeEncompassingRectangle area
			equals: 4.0;
		deny: resize widestShape computeEncompassingRectangle isTall;
		assert: resize widestShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle corner class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle left
			equals: -2.0;
		assert: resize widestShape computeEncompassingRectangle origin class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle width
			equals: 4.0;
		assert: resize widestShape computeEncompassingRectangle right
			equals: 2.0;
		deny: resize widestShape computeEncompassingRectangle isZero;
		assert: resize widestShape computeEncompassingRectangle isWide;
		assert: resize widestShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: resize widestShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: resize widestShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle center class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle bottom
			equals: 0.5;
		assert: resize widestShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle isRectangle;
		assert: resize widestShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle corners class
			equals: Array;
		assert: resize widestShape computeEncompassingRectangle corners size
			equals: 4;
		assert: resize widestShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: resize widestShape computeEncompassingRectangle height
			equals: 1.0;
		assert: resize widestShape cornerRadius isNil.
	resize biggestExtent
]

{ #category : #'as yet unclassified' }
RSResizeTest >> testBiggestExtent_amp_A9 [
	<smallAmpCoveres:
		'ReplaceIfTrueIfFalseReceiverWithTrueOperator#RSResize#biggestShape#77#150'>
	<madeBySmallAmp>
	resize sameHeight.
	self
		assert: resize class equals: RSResize;
		assert: resize highestShape class equals: RSBox;
		assert: resize highestShape allRecursiveConnectedShapes class
			equals: Set;
		assert: resize highestShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: resize highestShape allRecursiveConnectedShapes isHealthy;
		assert: resize highestShape allRecursiveConnectedShapes size
			equals: 1;
		assert: resize highestShape matrix class
			equals: AthensAffineTransform;
		assert: resize highestShape matrix sx equals: 1.0;
		assert: resize highestShape matrix inverted class
			equals: AthensAffineTransform;
		assert: resize highestShape matrix x equals: 0.0;
		assert: resize highestShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: resize highestShape matrix shy equals: 0.0;
		assert: resize highestShape matrix y equals: 0.0;
		assert: resize highestShape matrix translation class equals: Point;
		assert: resize highestShape matrix sy equals: 1.0;
		assert: resize highestShape matrix shx equals: 0.0;
		assert: resize highestShape matrix scale class equals: Point;
		assert: resize highestShape isNode;
		deny: resize highestShape shouldUpdateLines;
		deny: resize highestShape hasEdges;
		deny: resize highestShape hasCornerRadius;
		assert: resize highestShape baseRectangle class equals: Rectangle;
		assert: resize highestShape baseRectangle top equals: -1.5;
		assert: resize highestShape baseRectangle extent class
			equals: Point;
		assert: resize highestShape baseRectangle hasPositiveExtent;
		assert: resize highestShape baseRectangle area equals: 6.0;
		assert: resize highestShape baseRectangle isTall;
		assert: resize highestShape baseRectangle aboveCenter class
			equals: Point;
		assert: resize highestShape baseRectangle bottomCenter class
			equals: Point;
		assert: resize highestShape baseRectangle corner class
			equals: Point;
		assert: resize highestShape baseRectangle left equals: -1.0;
		assert: resize highestShape baseRectangle origin class
			equals: Point;
		assert: resize highestShape baseRectangle width equals: 2.0;
		assert: resize highestShape baseRectangle right equals: 1.0;
		deny: resize highestShape baseRectangle isZero;
		deny: resize highestShape baseRectangle isWide;
		assert: resize highestShape baseRectangle innerCorners class
			equals: Array;
		assert: resize highestShape baseRectangle innerCorners size
			equals: 4;
		assert: resize highestShape baseRectangle topCenter class
			equals: Point;
		assert: resize highestShape baseRectangle topRight class
			equals: Point;
		assert: resize highestShape baseRectangle bottomRight class
			equals: Point;
		assert: resize highestShape baseRectangle center class
			equals: Point;
		assert: resize highestShape baseRectangle topLeft class
			equals: Point;
		assert: resize highestShape baseRectangle bottom equals: 1.5;
		assert: resize highestShape baseRectangle floatCenter class
			equals: Point;
		assert: resize highestShape baseRectangle leftCenter class
			equals: Point;
		assert: resize highestShape baseRectangle isRectangle;
		assert: resize highestShape baseRectangle bottomLeft class
			equals: Point;
		assert: resize highestShape baseRectangle corners class
			equals: Array;
		assert: resize highestShape baseRectangle corners size equals: 4;
		assert: resize highestShape baseRectangle rightCenter class
			equals: Point;
		assert: resize highestShape baseRectangle height equals: 3.0;
		assert: resize highestShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: resize highestShape computeEncompassingRectangle top
			equals: -1.5;
		assert: resize highestShape computeEncompassingRectangle extent class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle hasPositiveExtent;
		assert: resize highestShape computeEncompassingRectangle area
			equals: 6.0;
		assert: resize highestShape computeEncompassingRectangle isTall;
		assert: resize highestShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle corner class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle left
			equals: -1.0;
		assert: resize highestShape computeEncompassingRectangle origin class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle width
			equals: 2.0;
		assert: resize highestShape computeEncompassingRectangle right
			equals: 1.0;
		deny: resize highestShape computeEncompassingRectangle isZero;
		deny: resize highestShape computeEncompassingRectangle isWide;
		assert: resize highestShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: resize highestShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: resize highestShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle center class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle bottom
			equals: 1.5;
		assert: resize highestShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle isRectangle;
		assert: resize highestShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle corners class
			equals: Array;
		assert: resize highestShape computeEncompassingRectangle corners size
			equals: 4;
		assert: resize highestShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: resize highestShape computeEncompassingRectangle height
			equals: 3.0;
		assert: resize highestShape cornerRadius isNil.
	resize biggestExtent
]

{ #category : #tests }
RSResizeTest >> testBiggestShape [
	self assert: resize biggestShape equals: shapes last.
	resize useBiggestShape.
	self assert: resize fixedShape equals: shapes last
]

{ #category : #'as yet unclassified' }
RSResizeTest >> testBiggestShape_amp_A9 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSResize#biggestExtent#39#57'>
	<madeBySmallAmp>
	resize
		sameHeight;
		useBiggestShape.
	self
		assert: resize class equals: RSResize;
		assert: resize biggestExtent equals: 2.0 @ 3.0
]

{ #category : #tests }
RSResizeTest >> testHighestShape [
	self assert: resize highestShape equals: shapes last
]

{ #category : #tests }
RSResizeTest >> testSameHeight [
	resize fixedShape: shapes second.
	resize sameHeight.
	self
		assert: (shapes collect: #extent) sorted asArray
		equals: (Array with: 2.0 @ 2.0 with: 3.0 @ 2.0 with: 4.0 @ 2.0)
]

{ #category : #tests }
RSResizeTest >> testSameSize [
	resize fixedShape: shapes second.
	resize sameSize.
	self
		assert: (shapes collect: #extent) asSet asArray
		equals: (Array with: 3.0 @ 2.0)
]

{ #category : #tests }
RSResizeTest >> testSameSizeWithoutFixedShape [
	resize sameSize.
	self
		assert: (shapes collect: #extent) asSet asArray
		equals: (Array with: 4.0 @ 3.0)
]

{ #category : #tests }
RSResizeTest >> testSameWidth [
	resize fixedShape: shapes second.
	resize sameWidth.
	self
		assert: (shapes collect: #extent) sorted asArray
		equals: (Array with: 3.0 @ 1.0 with: 3.0 @ 2.0 with: 3.0 @ 3.0)
]

{ #category : #tests }
RSResizeTest >> testWidestShape [
	self assert: resize widestShape equals: shapes last
]
