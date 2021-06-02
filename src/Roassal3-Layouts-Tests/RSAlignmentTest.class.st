Class {
	#name : #RSAlignmentTest,
	#superclass : #TestCase,
	#instVars : [
		'align'
	],
	#category : #'Roassal3-Layouts-Tests'
}

{ #category : #running }
RSAlignmentTest >> setUp [
	super setUp.
	align := RSAlignment new.
]

{ #category : #tests }
RSAlignmentTest >> testCenter [
	| es |
	es := (1 to: 5) collect: [ :v | RSBox new size: 10 ] as: RSGroup.
	RSHorizontalLineLayout on: es.
	align shapes: es.
	self assert: align middle equals: align.
	self
		assert: es encompassingRectangle
		equals: (0.0 @ 0.0 corner: 90.0 @ 10.0)
	"	
	RSCanvas new addAll: es; yourself.
	"
]

{ #category : #'as yet unclassified' }
RSAlignmentTest >> testCenter_amp [
	<smallAmpCoveres:
		'ReplaceGreaterOrEqualWithGreaterMutantOperator#RSAlignment#topMostShape#108#168'>
	<madeBySmallAmp>
	| es |
	es := (1 to: 5) collect: [ :v | RSBox new size: 10 ] as: RSGroup.
	RSHorizontalLineLayout on: es.
	align shapes: es.
	self
		assert: align class equals: RSAlignment;
		assert: align centerMostShape class equals: RSBox;
		assert: align centerMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert: align centerMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: align centerMostShape allRecursiveConnectedShapes isHealthy;
		assert: align centerMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert: align centerMostShape matrix class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix sx equals: 1.0;
		assert: align centerMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix x equals: 85.0;
		assert: align centerMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix shy equals: 0.0;
		assert: align centerMostShape matrix y equals: 5.0;
		assert: align centerMostShape matrix translation class
			equals: Point;
		assert: align centerMostShape matrix sy equals: 1.0;
		assert: align centerMostShape matrix shx equals: 0.0;
		assert: align centerMostShape matrix scale class equals: Point;
		assert: align centerMostShape isNode;
		deny: align centerMostShape shouldUpdateLines;
		deny: align centerMostShape hasEdges;
		deny: align centerMostShape hasCornerRadius;
		assert: align centerMostShape baseRectangle class equals: Rectangle;
		assert: align centerMostShape baseRectangle top equals: -5.0;
		assert: align centerMostShape baseRectangle extent class
			equals: Point;
		assert: align centerMostShape baseRectangle hasPositiveExtent;
		assert: align centerMostShape baseRectangle area equals: 100.0;
		deny: align centerMostShape baseRectangle isTall;
		assert: align centerMostShape baseRectangle aboveCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle bottomCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle corner class
			equals: Point;
		assert: align centerMostShape baseRectangle left equals: -5.0;
		assert: align centerMostShape baseRectangle origin class
			equals: Point;
		assert: align centerMostShape baseRectangle width equals: 10.0;
		assert: align centerMostShape baseRectangle right equals: 5.0;
		deny: align centerMostShape baseRectangle isZero;
		deny: align centerMostShape baseRectangle isWide;
		assert: align centerMostShape baseRectangle innerCorners class
			equals: Array;
		assert: align centerMostShape baseRectangle innerCorners size
			equals: 4;
		assert: align centerMostShape baseRectangle topCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle topRight class
			equals: Point;
		assert: align centerMostShape baseRectangle bottomRight class
			equals: Point;
		assert: align centerMostShape baseRectangle center class
			equals: Point;
		assert: align centerMostShape baseRectangle topLeft class
			equals: Point;
		assert: align centerMostShape baseRectangle bottom equals: 5.0;
		assert: align centerMostShape baseRectangle floatCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle leftCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle isRectangle;
		assert: align centerMostShape baseRectangle bottomLeft class
			equals: Point;
		assert: align centerMostShape baseRectangle corners class
			equals: Array;
		assert: align centerMostShape baseRectangle corners size equals: 4;
		assert: align centerMostShape baseRectangle rightCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle height equals: 10.0;
		assert: align centerMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: align centerMostShape computeEncompassingRectangle top
			equals: 0.0;
		assert: align centerMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle hasPositiveExtent;
		assert: align centerMostShape computeEncompassingRectangle area
			equals: 100.0;
		deny: align centerMostShape computeEncompassingRectangle isTall;
		assert: align centerMostShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle left
			equals: 80.0;
		assert: align centerMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle width
			equals: 10.0;
		assert: align centerMostShape computeEncompassingRectangle right
			equals: 90.0;
		deny: align centerMostShape computeEncompassingRectangle isZero;
		deny: align centerMostShape computeEncompassingRectangle isWide;
		assert: align centerMostShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: align centerMostShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: align centerMostShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle center class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottom
			equals: 10.0;
		assert: align centerMostShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle isRectangle;
		assert: align centerMostShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert: align centerMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert: align centerMostShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle height
			equals: 10.0;
		assert: align centerMostShape cornerRadius isNil
]

{ #category : #'as yet unclassified' }
RSAlignmentTest >> testCenter_amp_A23 [
	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSAlignment#alignFromCenterUsing:#69#125'>
	<madeBySmallAmp>
	| es |
	es := (1 to: 5) collect: [ :v | RSBox new size: 10 ] as: RSGroup.
	RSHorizontalLineLayout on: es.
	align
		shapes: es;
		center.
	self
		assert: align class equals: RSAlignment;
		assert: align leftMostShape class equals: RSBox;
		assert: align leftMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert: align leftMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: align leftMostShape allRecursiveConnectedShapes isHealthy;
		assert: align leftMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert: align leftMostShape matrix class
			equals: AthensAffineTransform;
		assert: align leftMostShape matrix sx equals: 1.0;
		assert: align leftMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert: align leftMostShape matrix x equals: 85.0;
		assert: align leftMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: align leftMostShape matrix shy equals: 0.0;
		assert: align leftMostShape matrix y equals: 5.0;
		assert: align leftMostShape matrix translation class equals: Point;
		assert: align leftMostShape matrix sy equals: 1.0;
		assert: align leftMostShape matrix shx equals: 0.0;
		assert: align leftMostShape matrix scale class equals: Point;
		assert: align leftMostShape isNode;
		deny: align leftMostShape shouldUpdateLines;
		deny: align leftMostShape hasEdges;
		deny: align leftMostShape hasCornerRadius;
		assert: align leftMostShape baseRectangle class equals: Rectangle;
		assert: align leftMostShape baseRectangle top equals: -5.0;
		assert: align leftMostShape baseRectangle extent class
			equals: Point;
		assert: align leftMostShape baseRectangle hasPositiveExtent;
		assert: align leftMostShape baseRectangle area equals: 100.0;
		deny: align leftMostShape baseRectangle isTall;
		assert: align leftMostShape baseRectangle aboveCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle bottomCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle corner class
			equals: Point;
		assert: align leftMostShape baseRectangle left equals: -5.0;
		assert: align leftMostShape baseRectangle origin class
			equals: Point;
		assert: align leftMostShape baseRectangle width equals: 10.0;
		assert: align leftMostShape baseRectangle right equals: 5.0;
		deny: align leftMostShape baseRectangle isZero;
		deny: align leftMostShape baseRectangle isWide;
		assert: align leftMostShape baseRectangle innerCorners class
			equals: Array;
		assert: align leftMostShape baseRectangle innerCorners size
			equals: 4;
		assert: align leftMostShape baseRectangle topCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle topRight class
			equals: Point;
		assert: align leftMostShape baseRectangle bottomRight class
			equals: Point;
		assert: align leftMostShape baseRectangle center class
			equals: Point;
		assert: align leftMostShape baseRectangle topLeft class
			equals: Point;
		assert: align leftMostShape baseRectangle bottom equals: 5.0;
		assert: align leftMostShape baseRectangle floatCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle leftCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle isRectangle;
		assert: align leftMostShape baseRectangle bottomLeft class
			equals: Point;
		assert: align leftMostShape baseRectangle corners class
			equals: Array;
		assert: align leftMostShape baseRectangle corners size equals: 4;
		assert: align leftMostShape baseRectangle rightCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle height equals: 10.0;
		assert: align leftMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: align leftMostShape computeEncompassingRectangle top
			equals: 0.0;
		assert: align leftMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle hasPositiveExtent;
		assert: align leftMostShape computeEncompassingRectangle area
			equals: 100.0;
		deny: align leftMostShape computeEncompassingRectangle isTall;
		assert: align leftMostShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle left
			equals: 80.0;
		assert: align leftMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle width
			equals: 10.0;
		assert: align leftMostShape computeEncompassingRectangle right
			equals: 90.0;
		deny: align leftMostShape computeEncompassingRectangle isZero;
		deny: align leftMostShape computeEncompassingRectangle isWide;
		assert: align leftMostShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: align leftMostShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: align leftMostShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle center class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle bottom
			equals: 10.0;
		assert: align leftMostShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle isRectangle;
		assert: align leftMostShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert: align leftMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert: align leftMostShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle height
			equals: 10.0;
		assert: align leftMostShape cornerRadius isNil
]

{ #category : #'as yet unclassified' }
RSAlignmentTest >> testCenter_amp_A37_A63_A34 [
	<smallAmpCoveres: 'ReplaceIfFalseReceiverWithFalseOperator#RSAlignment#label#8#40'>
	<madeBySmallAmp>
	| es |
	es := (1 to: 5) collect: [ :v | RSBox new size: 10 ] as: RSGroup.
	RSHorizontalLineLayout on: es.
	align shapes: es.
	self should: [ align label ] raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSAlignmentTest >> testCenter_amp_D0_A46 [
	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSAlignment#alignFromMiddleUsing:#70#127'>
	<madeBySmallAmp>
	| es aCollection aRSAlignment |
	aCollection := 1 to: 5.
	1 to: 5.
	es := aCollection collect: [ :v | RSBox new size: 10 ] as: RSGroup.
	RSHorizontalLineLayout on: es.
	aRSAlignment := align shapes: es.
	aRSAlignment alignFromMiddleUsing: RSBox new.
	self
		assert:
			aRSAlignment class equals: RSAlignment;
		assert:
			aRSAlignment rightMostShape class equals: RSBox;
		assert:
			aRSAlignment rightMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert:
			aRSAlignment rightMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert:
			aRSAlignment rightMostShape allRecursiveConnectedShapes isHealthy;
		assert:
			aRSAlignment rightMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert:
			aRSAlignment rightMostShape matrix class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment rightMostShape matrix sx equals: 1.0;
		assert:
			aRSAlignment rightMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment rightMostShape matrix x equals: 85.0;
		assert:
			aRSAlignment rightMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment rightMostShape matrix shy equals: 0.0;
		assert:
			aRSAlignment rightMostShape matrix y equals: 0.0;
		assert:
			aRSAlignment rightMostShape matrix translation class
			equals: Point;
		assert:
			aRSAlignment rightMostShape matrix sy equals: 1.0;
		assert:
			aRSAlignment rightMostShape matrix shx equals: 0.0;
		assert:
			aRSAlignment rightMostShape matrix scale class
			equals: Point;
		assert:
			aRSAlignment rightMostShape isNode;
		deny:
			aRSAlignment rightMostShape shouldUpdateLines;
		deny:
			aRSAlignment rightMostShape hasEdges;
		deny:
			aRSAlignment rightMostShape hasCornerRadius;
		assert:
			aRSAlignment rightMostShape baseRectangle class
			equals: Rectangle;
		assert:
			aRSAlignment rightMostShape baseRectangle top equals: -5.0;
		assert:
			aRSAlignment rightMostShape baseRectangle extent class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle hasPositiveExtent;
		assert:
			aRSAlignment rightMostShape baseRectangle area
			equals: 100.0;
		deny:
			aRSAlignment rightMostShape baseRectangle isTall;
		assert:
			aRSAlignment rightMostShape baseRectangle aboveCenter class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle bottomCenter class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle corner class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle left equals: -5.0;
		assert:
			aRSAlignment rightMostShape baseRectangle origin class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle width
			equals: 10.0;
		assert:
			aRSAlignment rightMostShape baseRectangle right equals: 5.0;
		deny:
			aRSAlignment rightMostShape baseRectangle isZero;
		deny:
			aRSAlignment rightMostShape baseRectangle isWide;
		assert:
			aRSAlignment rightMostShape baseRectangle innerCorners class
			equals: Array;
		assert:
			aRSAlignment rightMostShape baseRectangle innerCorners size
			equals: 4;
		assert:
			aRSAlignment rightMostShape baseRectangle topCenter class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle topRight class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle bottomRight class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle center class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle topLeft class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle bottom
			equals: 5.0;
		assert:
			aRSAlignment rightMostShape baseRectangle floatCenter class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle leftCenter class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle isRectangle;
		assert:
			aRSAlignment rightMostShape baseRectangle bottomLeft class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle corners class
			equals: Array;
		assert:
			aRSAlignment rightMostShape baseRectangle corners size
			equals: 4;
		assert:
			aRSAlignment rightMostShape baseRectangle rightCenter class
			equals: Point;
		assert:
			aRSAlignment rightMostShape baseRectangle height
			equals: 10.0;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle top
			equals: -5.0;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle
				hasPositiveExtent;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle area
			equals: 100.0;
		deny:
			aRSAlignment rightMostShape computeEncompassingRectangle isTall;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle aboveCenter
				class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle bottomCenter
				class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle left
			equals: 80.0;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle width
			equals: 10.0;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle right
			equals: 90.0;
		deny:
			aRSAlignment rightMostShape computeEncompassingRectangle isZero;
		deny:
			aRSAlignment rightMostShape computeEncompassingRectangle isWide;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle innerCorners
				class
			equals: Array;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle innerCorners
				size
			equals: 4;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle topCenter
				class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle topRight
				class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle bottomRight
				class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle center class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle bottom
			equals: 5.0;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle floatCenter
				class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle leftCenter
				class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle isRectangle;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle bottomLeft
				class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle rightCenter
				class
			equals: Point;
		assert:
			aRSAlignment rightMostShape computeEncompassingRectangle height
			equals: 10.0;
		assert:
			aRSAlignment rightMostShape cornerRadius isNil;
		assert:
			aRSAlignment bottomMostShape class equals: RSBox;
		assert:
			aRSAlignment bottomMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert:
			aRSAlignment bottomMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert:
			aRSAlignment bottomMostShape allRecursiveConnectedShapes isHealthy;
		assert:
			aRSAlignment bottomMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert:
			aRSAlignment bottomMostShape matrix class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment bottomMostShape matrix sx equals: 1.0;
		assert:
			aRSAlignment bottomMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment bottomMostShape matrix x equals: 85.0;
		assert:
			aRSAlignment bottomMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment bottomMostShape matrix shy equals: 0.0;
		assert:
			aRSAlignment bottomMostShape matrix y equals: 0.0;
		assert:
			aRSAlignment bottomMostShape matrix translation class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape matrix sy equals: 1.0;
		assert:
			aRSAlignment bottomMostShape matrix shx equals: 0.0;
		assert:
			aRSAlignment bottomMostShape matrix scale class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape isNode;
		deny:
			aRSAlignment bottomMostShape shouldUpdateLines;
		deny:
			aRSAlignment bottomMostShape hasEdges;
		deny:
			aRSAlignment bottomMostShape hasCornerRadius;
		assert:
			aRSAlignment bottomMostShape baseRectangle class
			equals: Rectangle;
		assert:
			aRSAlignment bottomMostShape baseRectangle top equals: -5.0;
		assert:
			aRSAlignment bottomMostShape baseRectangle extent class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle hasPositiveExtent;
		assert:
			aRSAlignment bottomMostShape baseRectangle area
			equals: 100.0;
		deny:
			aRSAlignment bottomMostShape baseRectangle isTall;
		assert:
			aRSAlignment bottomMostShape baseRectangle aboveCenter class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle bottomCenter class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle corner class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle left
			equals: -5.0;
		assert:
			aRSAlignment bottomMostShape baseRectangle origin class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle width
			equals: 10.0;
		assert:
			aRSAlignment bottomMostShape baseRectangle right
			equals: 5.0;
		deny:
			aRSAlignment bottomMostShape baseRectangle isZero;
		deny:
			aRSAlignment bottomMostShape baseRectangle isWide;
		assert:
			aRSAlignment bottomMostShape baseRectangle innerCorners class
			equals: Array;
		assert:
			aRSAlignment bottomMostShape baseRectangle innerCorners size
			equals: 4;
		assert:
			aRSAlignment bottomMostShape baseRectangle topCenter class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle topRight class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle bottomRight class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle center class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle topLeft class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle bottom
			equals: 5.0;
		assert:
			aRSAlignment bottomMostShape baseRectangle floatCenter class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle leftCenter class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle isRectangle;
		assert:
			aRSAlignment bottomMostShape baseRectangle bottomLeft class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle corners class
			equals: Array;
		assert:
			aRSAlignment bottomMostShape baseRectangle corners size
			equals: 4;
		assert:
			aRSAlignment bottomMostShape baseRectangle rightCenter class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape baseRectangle height
			equals: 10.0;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle top
			equals: -5.0;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle
				hasPositiveExtent;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle area
			equals: 100.0;
		deny:
			aRSAlignment bottomMostShape computeEncompassingRectangle isTall;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle aboveCenter
				class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle bottomCenter
				class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle left
			equals: 80.0;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle width
			equals: 10.0;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle right
			equals: 90.0;
		deny:
			aRSAlignment bottomMostShape computeEncompassingRectangle isZero;
		deny:
			aRSAlignment bottomMostShape computeEncompassingRectangle isWide;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle innerCorners
				class
			equals: Array;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle innerCorners
				size
			equals: 4;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle topCenter
				class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle topRight
				class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle bottomRight
				class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle center class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle topLeft
				class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle bottom
			equals: 5.0;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle floatCenter
				class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle leftCenter
				class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle isRectangle;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle bottomLeft
				class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle corners
				class
			equals: Array;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle rightCenter
				class
			equals: Point;
		assert:
			aRSAlignment bottomMostShape computeEncompassingRectangle height
			equals: 10.0;
		assert:
			aRSAlignment bottomMostShape cornerRadius isNil;
		assert:
			aRSAlignment centerMostShape class equals: RSBox;
		assert:
			aRSAlignment centerMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert:
			aRSAlignment centerMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert:
			aRSAlignment centerMostShape allRecursiveConnectedShapes isHealthy;
		assert:
			aRSAlignment centerMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert:
			aRSAlignment centerMostShape matrix class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment centerMostShape matrix sx equals: 1.0;
		assert:
			aRSAlignment centerMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment centerMostShape matrix x equals: 85.0;
		assert:
			aRSAlignment centerMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment centerMostShape matrix shy equals: 0.0;
		assert:
			aRSAlignment centerMostShape matrix y equals: 0.0;
		assert:
			aRSAlignment centerMostShape matrix translation class
			equals: Point;
		assert:
			aRSAlignment centerMostShape matrix sy equals: 1.0;
		assert:
			aRSAlignment centerMostShape matrix shx equals: 0.0;
		assert:
			aRSAlignment centerMostShape matrix scale class
			equals: Point;
		assert:
			aRSAlignment centerMostShape isNode;
		deny:
			aRSAlignment centerMostShape shouldUpdateLines;
		deny:
			aRSAlignment centerMostShape hasEdges;
		deny:
			aRSAlignment centerMostShape hasCornerRadius;
		assert:
			aRSAlignment centerMostShape baseRectangle class
			equals: Rectangle;
		assert:
			aRSAlignment centerMostShape baseRectangle top equals: -5.0;
		assert:
			aRSAlignment centerMostShape baseRectangle extent class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle hasPositiveExtent;
		assert:
			aRSAlignment centerMostShape baseRectangle area
			equals: 100.0;
		deny:
			aRSAlignment centerMostShape baseRectangle isTall;
		assert:
			aRSAlignment centerMostShape baseRectangle aboveCenter class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle bottomCenter class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle corner class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle left
			equals: -5.0;
		assert:
			aRSAlignment centerMostShape baseRectangle origin class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle width
			equals: 10.0;
		assert:
			aRSAlignment centerMostShape baseRectangle right
			equals: 5.0;
		deny:
			aRSAlignment centerMostShape baseRectangle isZero;
		deny:
			aRSAlignment centerMostShape baseRectangle isWide;
		assert:
			aRSAlignment centerMostShape baseRectangle innerCorners class
			equals: Array;
		assert:
			aRSAlignment centerMostShape baseRectangle innerCorners size
			equals: 4;
		assert:
			aRSAlignment centerMostShape baseRectangle topCenter class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle topRight class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle bottomRight class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle center class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle topLeft class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle bottom
			equals: 5.0;
		assert:
			aRSAlignment centerMostShape baseRectangle floatCenter class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle leftCenter class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle isRectangle;
		assert:
			aRSAlignment centerMostShape baseRectangle bottomLeft class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle corners class
			equals: Array;
		assert:
			aRSAlignment centerMostShape baseRectangle corners size
			equals: 4;
		assert:
			aRSAlignment centerMostShape baseRectangle rightCenter class
			equals: Point;
		assert:
			aRSAlignment centerMostShape baseRectangle height
			equals: 10.0;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle top
			equals: -5.0;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle
				hasPositiveExtent;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle area
			equals: 100.0;
		deny:
			aRSAlignment centerMostShape computeEncompassingRectangle isTall;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle aboveCenter
				class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle bottomCenter
				class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle left
			equals: 80.0;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle width
			equals: 10.0;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle right
			equals: 90.0;
		deny:
			aRSAlignment centerMostShape computeEncompassingRectangle isZero;
		deny:
			aRSAlignment centerMostShape computeEncompassingRectangle isWide;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle innerCorners
				class
			equals: Array;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle innerCorners
				size
			equals: 4;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle topCenter
				class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle topRight
				class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle bottomRight
				class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle center class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle topLeft
				class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle bottom
			equals: 5.0;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle floatCenter
				class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle leftCenter
				class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle isRectangle;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle bottomLeft
				class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle corners
				class
			equals: Array;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle rightCenter
				class
			equals: Point;
		assert:
			aRSAlignment centerMostShape computeEncompassingRectangle height
			equals: 10.0;
		assert:
			aRSAlignment centerMostShape cornerRadius isNil;
		assert:
			aRSAlignment leftMostShape class equals: RSBox;
		assert:
			aRSAlignment leftMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert:
			aRSAlignment leftMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert:
			aRSAlignment leftMostShape allRecursiveConnectedShapes isHealthy;
		assert:
			aRSAlignment leftMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert:
			aRSAlignment leftMostShape matrix class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment leftMostShape matrix sx equals: 1.0;
		assert:
			aRSAlignment leftMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment leftMostShape matrix x equals: 5.0;
		assert:
			aRSAlignment leftMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment leftMostShape matrix shy equals: 0.0;
		assert:
			aRSAlignment leftMostShape matrix y equals: 0.0;
		assert:
			aRSAlignment leftMostShape matrix translation class
			equals: Point;
		assert:
			aRSAlignment leftMostShape matrix sy equals: 1.0;
		assert:
			aRSAlignment leftMostShape matrix shx equals: 0.0;
		assert:
			aRSAlignment leftMostShape matrix scale class equals: Point;
		assert:
			aRSAlignment leftMostShape isNode;
		deny:
			aRSAlignment leftMostShape shouldUpdateLines;
		deny:
			aRSAlignment leftMostShape hasEdges;
		deny:
			aRSAlignment leftMostShape hasCornerRadius;
		assert:
			aRSAlignment leftMostShape baseRectangle class
			equals: Rectangle;
		assert:
			aRSAlignment leftMostShape baseRectangle top equals: -5.0;
		assert:
			aRSAlignment leftMostShape baseRectangle extent class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle hasPositiveExtent;
		assert:
			aRSAlignment leftMostShape baseRectangle area equals: 100.0;
		deny:
			aRSAlignment leftMostShape baseRectangle isTall;
		assert:
			aRSAlignment leftMostShape baseRectangle aboveCenter class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle bottomCenter class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle corner class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle left equals: -5.0;
		assert:
			aRSAlignment leftMostShape baseRectangle origin class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle width equals: 10.0;
		assert:
			aRSAlignment leftMostShape baseRectangle right equals: 5.0;
		deny:
			aRSAlignment leftMostShape baseRectangle isZero;
		deny:
			aRSAlignment leftMostShape baseRectangle isWide;
		assert:
			aRSAlignment leftMostShape baseRectangle innerCorners class
			equals: Array;
		assert:
			aRSAlignment leftMostShape baseRectangle innerCorners size
			equals: 4;
		assert:
			aRSAlignment leftMostShape baseRectangle topCenter class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle topRight class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle bottomRight class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle center class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle topLeft class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle bottom equals: 5.0;
		assert:
			aRSAlignment leftMostShape baseRectangle floatCenter class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle leftCenter class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle isRectangle;
		assert:
			aRSAlignment leftMostShape baseRectangle bottomLeft class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle corners class
			equals: Array;
		assert:
			aRSAlignment leftMostShape baseRectangle corners size
			equals: 4;
		assert:
			aRSAlignment leftMostShape baseRectangle rightCenter class
			equals: Point;
		assert:
			aRSAlignment leftMostShape baseRectangle height
			equals: 10.0;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle top
			equals: -5.0;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle
				hasPositiveExtent;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle area
			equals: 100.0;
		deny:
			aRSAlignment leftMostShape computeEncompassingRectangle isTall;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle aboveCenter
				class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle bottomCenter
				class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle left
			equals: 0.0;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle width
			equals: 10.0;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle right
			equals: 10.0;
		deny:
			aRSAlignment leftMostShape computeEncompassingRectangle isZero;
		deny:
			aRSAlignment leftMostShape computeEncompassingRectangle isWide;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle innerCorners
				class
			equals: Array;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle innerCorners
				size
			equals: 4;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle topCenter
				class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle bottomRight
				class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle center class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle bottom
			equals: 5.0;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle floatCenter
				class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle leftCenter
				class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle isRectangle;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle bottomLeft
				class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle rightCenter
				class
			equals: Point;
		assert:
			aRSAlignment leftMostShape computeEncompassingRectangle height
			equals: 10.0;
		assert:
			aRSAlignment leftMostShape cornerRadius isNil;
		assert:
			aRSAlignment topMostShape class equals: RSBox;
		assert:
			aRSAlignment topMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert:
			aRSAlignment topMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert:
			aRSAlignment topMostShape allRecursiveConnectedShapes isHealthy;
		assert:
			aRSAlignment topMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert:
			aRSAlignment topMostShape matrix class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment topMostShape matrix sx equals: 1.0;
		assert:
			aRSAlignment topMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment topMostShape matrix x equals: 85.0;
		assert:
			aRSAlignment topMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert:
			aRSAlignment topMostShape matrix shy equals: 0.0;
		assert:
			aRSAlignment topMostShape matrix y equals: 0.0;
		assert:
			aRSAlignment topMostShape matrix translation class
			equals: Point;
		assert:
			aRSAlignment topMostShape matrix sy equals: 1.0;
		assert:
			aRSAlignment topMostShape matrix shx equals: 0.0;
		assert:
			aRSAlignment topMostShape matrix scale class equals: Point;
		assert:
			aRSAlignment topMostShape isNode;
		deny:
			aRSAlignment topMostShape shouldUpdateLines;
		deny:
			aRSAlignment topMostShape hasEdges;
		deny:
			aRSAlignment topMostShape hasCornerRadius;
		assert:
			aRSAlignment topMostShape baseRectangle class
			equals: Rectangle;
		assert:
			aRSAlignment topMostShape baseRectangle top equals: -5.0;
		assert:
			aRSAlignment topMostShape baseRectangle extent class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle hasPositiveExtent;
		assert:
			aRSAlignment topMostShape baseRectangle area equals: 100.0;
		deny:
			aRSAlignment topMostShape baseRectangle isTall;
		assert:
			aRSAlignment topMostShape baseRectangle aboveCenter class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle bottomCenter class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle corner class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle left equals: -5.0;
		assert:
			aRSAlignment topMostShape baseRectangle origin class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle width equals: 10.0;
		assert:
			aRSAlignment topMostShape baseRectangle right equals: 5.0;
		deny:
			aRSAlignment topMostShape baseRectangle isZero;
		deny:
			aRSAlignment topMostShape baseRectangle isWide;
		assert:
			aRSAlignment topMostShape baseRectangle innerCorners class
			equals: Array;
		assert:
			aRSAlignment topMostShape baseRectangle innerCorners size
			equals: 4;
		assert:
			aRSAlignment topMostShape baseRectangle topCenter class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle topRight class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle bottomRight class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle center class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle topLeft class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle bottom equals: 5.0;
		assert:
			aRSAlignment topMostShape baseRectangle floatCenter class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle leftCenter class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle isRectangle;
		assert:
			aRSAlignment topMostShape baseRectangle bottomLeft class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle corners class
			equals: Array;
		assert:
			aRSAlignment topMostShape baseRectangle corners size
			equals: 4;
		assert:
			aRSAlignment topMostShape baseRectangle rightCenter class
			equals: Point;
		assert:
			aRSAlignment topMostShape baseRectangle height equals: 10.0;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle top
			equals: -5.0;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle
				hasPositiveExtent;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle area
			equals: 100.0;
		deny:
			aRSAlignment topMostShape computeEncompassingRectangle isTall;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle aboveCenter
				class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle bottomCenter
				class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle left
			equals: 80.0;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle width
			equals: 10.0;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle right
			equals: 90.0;
		deny:
			aRSAlignment topMostShape computeEncompassingRectangle isZero;
		deny:
			aRSAlignment topMostShape computeEncompassingRectangle isWide;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle innerCorners
				class
			equals: Array;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle innerCorners
				size
			equals: 4;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle bottomRight
				class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle center class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle bottom
			equals: 5.0;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle floatCenter
				class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle leftCenter
				class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle isRectangle;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle bottomLeft
				class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle rightCenter
				class
			equals: Point;
		assert:
			aRSAlignment topMostShape computeEncompassingRectangle height
			equals: 10.0;
		assert:
			aRSAlignment topMostShape cornerRadius isNil
]

{ #category : #tests }
RSAlignmentTest >> testFromBottom [
	| es |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSHorizontalLineLayout on: es.
	es second translateBy: 0 @ 150.
	self
		assert: (es collect: [ :e | e encompassingRectangle bottom ]) asArray
		equals: #(10.0 170.0 30.0 40.0 50.0 60.0 70.0 80.0 90.0 100.0).
	self assert: align bottomMostShape equals: es second.
	align bottom.
	self
		assert: (es collect: [ :e | e encompassingRectangle bottom ]) asArray
		equals: #(170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0)
	"	
	RSView new addAll: es; yourself.
	"
]

{ #category : #'as yet unclassified' }
RSAlignmentTest >> testFromBottom_amp [
	<smallAmpCoveres:
		'ReplaceLessOrEqualWithTrueOperator#RSAlignment#centerMostShape#111#187'>
	<madeBySmallAmp>
	| es |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSHorizontalLineLayout on: es.
	es second translateBy: 0 @ 150.
	align bottom.
	self
		assert: align class equals: RSAlignment;
		assert: align centerMostShape class equals: RSBox;
		assert: align centerMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert: align centerMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: align centerMostShape allRecursiveConnectedShapes isHealthy;
		assert: align centerMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert: align centerMostShape matrix class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix sx equals: 1.0;
		assert: align centerMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix x equals: 5.0;
		assert: align centerMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix shy equals: 0.0;
		assert: align centerMostShape matrix y equals: 165.0;
		assert: align centerMostShape matrix translation class
			equals: Point;
		assert: align centerMostShape matrix sy equals: 1.0;
		assert: align centerMostShape matrix shx equals: 0.0;
		assert: align centerMostShape matrix scale class equals: Point;
		assert: align centerMostShape isNode;
		deny: align centerMostShape shouldUpdateLines;
		deny: align centerMostShape hasEdges;
		deny: align centerMostShape hasCornerRadius;
		assert: align centerMostShape baseRectangle class equals: Rectangle;
		assert: align centerMostShape baseRectangle top equals: -5.0;
		assert: align centerMostShape baseRectangle extent class
			equals: Point;
		assert: align centerMostShape baseRectangle hasPositiveExtent;
		assert: align centerMostShape baseRectangle area equals: 100.0;
		deny: align centerMostShape baseRectangle isTall;
		assert: align centerMostShape baseRectangle aboveCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle bottomCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle corner class
			equals: Point;
		assert: align centerMostShape baseRectangle left equals: -5.0;
		assert: align centerMostShape baseRectangle origin class
			equals: Point;
		assert: align centerMostShape baseRectangle width equals: 10.0;
		assert: align centerMostShape baseRectangle right equals: 5.0;
		deny: align centerMostShape baseRectangle isZero;
		deny: align centerMostShape baseRectangle isWide;
		assert: align centerMostShape baseRectangle innerCorners class
			equals: Array;
		assert: align centerMostShape baseRectangle innerCorners size
			equals: 4;
		assert: align centerMostShape baseRectangle topCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle topRight class
			equals: Point;
		assert: align centerMostShape baseRectangle bottomRight class
			equals: Point;
		assert: align centerMostShape baseRectangle center class
			equals: Point;
		assert: align centerMostShape baseRectangle topLeft class
			equals: Point;
		assert: align centerMostShape baseRectangle bottom equals: 5.0;
		assert: align centerMostShape baseRectangle floatCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle leftCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle isRectangle;
		assert: align centerMostShape baseRectangle bottomLeft class
			equals: Point;
		assert: align centerMostShape baseRectangle corners class
			equals: Array;
		assert: align centerMostShape baseRectangle corners size equals: 4;
		assert: align centerMostShape baseRectangle rightCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle height equals: 10.0;
		assert: align centerMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: align centerMostShape computeEncompassingRectangle top
			equals: 160.0;
		assert: align centerMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle hasPositiveExtent;
		assert: align centerMostShape computeEncompassingRectangle area
			equals: 100.0;
		deny: align centerMostShape computeEncompassingRectangle isTall;
		assert: align centerMostShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle left
			equals: 0.0;
		assert: align centerMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle width
			equals: 10.0;
		assert: align centerMostShape computeEncompassingRectangle right
			equals: 10.0;
		deny: align centerMostShape computeEncompassingRectangle isZero;
		deny: align centerMostShape computeEncompassingRectangle isWide;
		assert: align centerMostShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: align centerMostShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: align centerMostShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle center class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottom
			equals: 170.0;
		assert: align centerMostShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle isRectangle;
		assert: align centerMostShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert: align centerMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert: align centerMostShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle height
			equals: 10.0;
		assert: align centerMostShape cornerRadius isNil
]

{ #category : #'as yet unclassified' }
RSAlignmentTest >> testFromBottom_amp_A36 [
	<smallAmpCoveres: 'ReplaceIfFalseReceiverWithFalseOperator#RSAlignment#middle#301#333'>
	<madeBySmallAmp>
	| es |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSHorizontalLineLayout on: es.
	es second translateBy: 0 @ 150.
	align
		bottom;
		middle.
	self
		assert: align class equals: RSAlignment;
		assert: align bottomMostShape class equals: RSBox;
		assert: align bottomMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert: align bottomMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: align bottomMostShape allRecursiveConnectedShapes isHealthy;
		assert: align bottomMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert: align bottomMostShape matrix class
			equals: AthensAffineTransform;
		assert: align bottomMostShape matrix sx equals: 1.0;
		assert: align bottomMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert: align bottomMostShape matrix x equals: 590.0;
		assert: align bottomMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: align bottomMostShape matrix shy equals: 0.0;
		assert: align bottomMostShape matrix y equals: 165.0;
		assert: align bottomMostShape matrix translation class
			equals: Point;
		assert: align bottomMostShape matrix sy equals: 1.0;
		assert: align bottomMostShape matrix shx equals: 0.0;
		assert: align bottomMostShape matrix scale class equals: Point;
		assert: align bottomMostShape isNode;
		deny: align bottomMostShape shouldUpdateLines;
		deny: align bottomMostShape hasEdges;
		deny: align bottomMostShape hasCornerRadius;
		assert: align bottomMostShape baseRectangle class equals: Rectangle;
		assert: align bottomMostShape baseRectangle top equals: -50.0;
		assert: align bottomMostShape baseRectangle extent class
			equals: Point;
		assert: align bottomMostShape baseRectangle hasPositiveExtent;
		assert: align bottomMostShape baseRectangle area equals: 10000.0;
		deny: align bottomMostShape baseRectangle isTall;
		assert: align bottomMostShape baseRectangle aboveCenter class
			equals: Point;
		assert: align bottomMostShape baseRectangle bottomCenter class
			equals: Point;
		assert: align bottomMostShape baseRectangle corner class
			equals: Point;
		assert: align bottomMostShape baseRectangle left equals: -50.0;
		assert: align bottomMostShape baseRectangle origin class
			equals: Point;
		assert: align bottomMostShape baseRectangle width equals: 100.0;
		assert: align bottomMostShape baseRectangle right equals: 50.0;
		deny: align bottomMostShape baseRectangle isZero;
		deny: align bottomMostShape baseRectangle isWide;
		assert: align bottomMostShape baseRectangle innerCorners class
			equals: Array;
		assert: align bottomMostShape baseRectangle innerCorners size
			equals: 4;
		assert: align bottomMostShape baseRectangle topCenter class
			equals: Point;
		assert: align bottomMostShape baseRectangle topRight class
			equals: Point;
		assert: align bottomMostShape baseRectangle bottomRight class
			equals: Point;
		assert: align bottomMostShape baseRectangle center class
			equals: Point;
		assert: align bottomMostShape baseRectangle topLeft class
			equals: Point;
		assert: align bottomMostShape baseRectangle bottom equals: 50.0;
		assert: align bottomMostShape baseRectangle floatCenter class
			equals: Point;
		assert: align bottomMostShape baseRectangle leftCenter class
			equals: Point;
		assert: align bottomMostShape baseRectangle isRectangle;
		assert: align bottomMostShape baseRectangle bottomLeft class
			equals: Point;
		assert: align bottomMostShape baseRectangle corners class
			equals: Array;
		assert: align bottomMostShape baseRectangle corners size equals: 4;
		assert: align bottomMostShape baseRectangle rightCenter class
			equals: Point;
		assert: align bottomMostShape baseRectangle height equals: 100.0;
		assert: align bottomMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: align bottomMostShape computeEncompassingRectangle top
			equals: 115.0;
		assert: align bottomMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle hasPositiveExtent;
		assert: align bottomMostShape computeEncompassingRectangle area
			equals: 10000.0;
		deny: align bottomMostShape computeEncompassingRectangle isTall;
		assert: align bottomMostShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle left
			equals: 540.0;
		assert: align bottomMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle width
			equals: 100.0;
		assert: align bottomMostShape computeEncompassingRectangle right
			equals: 640.0;
		deny: align bottomMostShape computeEncompassingRectangle isZero;
		deny: align bottomMostShape computeEncompassingRectangle isWide;
		assert: align bottomMostShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: align bottomMostShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: align bottomMostShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle center class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle bottom
			equals: 215.0;
		assert: align bottomMostShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle isRectangle;
		assert: align bottomMostShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert: align bottomMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert: align bottomMostShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: align bottomMostShape computeEncompassingRectangle height
			equals: 100.0;
		assert: align bottomMostShape cornerRadius isNil;
		assert: align centerMostShape class equals: RSBox;
		assert: align centerMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert: align centerMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: align centerMostShape allRecursiveConnectedShapes isHealthy;
		assert: align centerMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert: align centerMostShape matrix class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix sx equals: 1.0;
		assert: align centerMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix x equals: 590.0;
		assert: align centerMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix shy equals: 0.0;
		assert: align centerMostShape matrix y equals: 165.0;
		assert: align centerMostShape matrix translation class
			equals: Point;
		assert: align centerMostShape matrix sy equals: 1.0;
		assert: align centerMostShape matrix shx equals: 0.0;
		assert: align centerMostShape matrix scale class equals: Point;
		assert: align centerMostShape isNode;
		deny: align centerMostShape shouldUpdateLines;
		deny: align centerMostShape hasEdges;
		deny: align centerMostShape hasCornerRadius;
		assert: align centerMostShape baseRectangle class equals: Rectangle;
		assert: align centerMostShape baseRectangle top equals: -50.0;
		assert: align centerMostShape baseRectangle extent class
			equals: Point;
		assert: align centerMostShape baseRectangle hasPositiveExtent;
		assert: align centerMostShape baseRectangle area equals: 10000.0;
		deny: align centerMostShape baseRectangle isTall;
		assert: align centerMostShape baseRectangle aboveCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle bottomCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle corner class
			equals: Point;
		assert: align centerMostShape baseRectangle left equals: -50.0;
		assert: align centerMostShape baseRectangle origin class
			equals: Point;
		assert: align centerMostShape baseRectangle width equals: 100.0;
		assert: align centerMostShape baseRectangle right equals: 50.0;
		deny: align centerMostShape baseRectangle isZero;
		deny: align centerMostShape baseRectangle isWide;
		assert: align centerMostShape baseRectangle innerCorners class
			equals: Array;
		assert: align centerMostShape baseRectangle innerCorners size
			equals: 4;
		assert: align centerMostShape baseRectangle topCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle topRight class
			equals: Point;
		assert: align centerMostShape baseRectangle bottomRight class
			equals: Point;
		assert: align centerMostShape baseRectangle center class
			equals: Point;
		assert: align centerMostShape baseRectangle topLeft class
			equals: Point;
		assert: align centerMostShape baseRectangle bottom equals: 50.0;
		assert: align centerMostShape baseRectangle floatCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle leftCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle isRectangle;
		assert: align centerMostShape baseRectangle bottomLeft class
			equals: Point;
		assert: align centerMostShape baseRectangle corners class
			equals: Array;
		assert: align centerMostShape baseRectangle corners size equals: 4;
		assert: align centerMostShape baseRectangle rightCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle height equals: 100.0;
		assert: align centerMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: align centerMostShape computeEncompassingRectangle top
			equals: 115.0;
		assert: align centerMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle hasPositiveExtent;
		assert: align centerMostShape computeEncompassingRectangle area
			equals: 10000.0;
		deny: align centerMostShape computeEncompassingRectangle isTall;
		assert: align centerMostShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle left
			equals: 540.0;
		assert: align centerMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle width
			equals: 100.0;
		assert: align centerMostShape computeEncompassingRectangle right
			equals: 640.0;
		deny: align centerMostShape computeEncompassingRectangle isZero;
		deny: align centerMostShape computeEncompassingRectangle isWide;
		assert: align centerMostShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: align centerMostShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: align centerMostShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle center class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottom
			equals: 215.0;
		assert: align centerMostShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle isRectangle;
		assert: align centerMostShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert: align centerMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert: align centerMostShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle height
			equals: 100.0;
		assert: align centerMostShape cornerRadius isNil;
		assert: align topMostShape class equals: RSBox;
		assert: align topMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert: align topMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: align topMostShape allRecursiveConnectedShapes isHealthy;
		assert: align topMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert: align topMostShape matrix class
			equals: AthensAffineTransform;
		assert: align topMostShape matrix sx equals: 1.0;
		assert: align topMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert: align topMostShape matrix x equals: 590.0;
		assert: align topMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: align topMostShape matrix shy equals: 0.0;
		assert: align topMostShape matrix y equals: 165.0;
		assert: align topMostShape matrix translation class equals: Point;
		assert: align topMostShape matrix sy equals: 1.0;
		assert: align topMostShape matrix shx equals: 0.0;
		assert: align topMostShape matrix scale class equals: Point;
		assert: align topMostShape isNode;
		deny: align topMostShape shouldUpdateLines;
		deny: align topMostShape hasEdges;
		deny: align topMostShape hasCornerRadius;
		assert: align topMostShape baseRectangle class equals: Rectangle;
		assert: align topMostShape baseRectangle top equals: -50.0;
		assert: align topMostShape baseRectangle extent class equals: Point;
		assert: align topMostShape baseRectangle hasPositiveExtent;
		assert: align topMostShape baseRectangle area equals: 10000.0;
		deny: align topMostShape baseRectangle isTall;
		assert: align topMostShape baseRectangle aboveCenter class
			equals: Point;
		assert: align topMostShape baseRectangle bottomCenter class
			equals: Point;
		assert: align topMostShape baseRectangle corner class equals: Point;
		assert: align topMostShape baseRectangle left equals: -50.0;
		assert: align topMostShape baseRectangle origin class equals: Point;
		assert: align topMostShape baseRectangle width equals: 100.0;
		assert: align topMostShape baseRectangle right equals: 50.0;
		deny: align topMostShape baseRectangle isZero;
		deny: align topMostShape baseRectangle isWide;
		assert: align topMostShape baseRectangle innerCorners class
			equals: Array;
		assert: align topMostShape baseRectangle innerCorners size
			equals: 4;
		assert: align topMostShape baseRectangle topCenter class
			equals: Point;
		assert: align topMostShape baseRectangle topRight class
			equals: Point;
		assert: align topMostShape baseRectangle bottomRight class
			equals: Point;
		assert: align topMostShape baseRectangle center class equals: Point;
		assert: align topMostShape baseRectangle topLeft class
			equals: Point;
		assert: align topMostShape baseRectangle bottom equals: 50.0;
		assert: align topMostShape baseRectangle floatCenter class
			equals: Point;
		assert: align topMostShape baseRectangle leftCenter class
			equals: Point;
		assert: align topMostShape baseRectangle isRectangle;
		assert: align topMostShape baseRectangle bottomLeft class
			equals: Point;
		assert: align topMostShape baseRectangle corners class
			equals: Array;
		assert: align topMostShape baseRectangle corners size equals: 4;
		assert: align topMostShape baseRectangle rightCenter class
			equals: Point;
		assert: align topMostShape baseRectangle height equals: 100.0;
		assert: align topMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: align topMostShape computeEncompassingRectangle top
			equals: 115.0;
		assert: align topMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle hasPositiveExtent;
		assert: align topMostShape computeEncompassingRectangle area
			equals: 10000.0;
		deny: align topMostShape computeEncompassingRectangle isTall;
		assert: align topMostShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle left
			equals: 540.0;
		assert: align topMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle width
			equals: 100.0;
		assert: align topMostShape computeEncompassingRectangle right
			equals: 640.0;
		deny: align topMostShape computeEncompassingRectangle isZero;
		deny: align topMostShape computeEncompassingRectangle isWide;
		assert: align topMostShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: align topMostShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: align topMostShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle center class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle bottom
			equals: 215.0;
		assert: align topMostShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle isRectangle;
		assert: align topMostShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert: align topMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert: align topMostShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: align topMostShape computeEncompassingRectangle height
			equals: 100.0;
		assert: align topMostShape cornerRadius isNil;
		assert: align rightMostShape class equals: RSBox;
		assert: align rightMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert: align rightMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: align rightMostShape allRecursiveConnectedShapes isHealthy;
		assert: align rightMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert: align rightMostShape matrix class
			equals: AthensAffineTransform;
		assert: align rightMostShape matrix sx equals: 1.0;
		assert: align rightMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert: align rightMostShape matrix x equals: 590.0;
		assert: align rightMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: align rightMostShape matrix shy equals: 0.0;
		assert: align rightMostShape matrix y equals: 165.0;
		assert: align rightMostShape matrix translation class equals: Point;
		assert: align rightMostShape matrix sy equals: 1.0;
		assert: align rightMostShape matrix shx equals: 0.0;
		assert: align rightMostShape matrix scale class equals: Point;
		assert: align rightMostShape isNode;
		deny: align rightMostShape shouldUpdateLines;
		deny: align rightMostShape hasEdges;
		deny: align rightMostShape hasCornerRadius;
		assert: align rightMostShape baseRectangle class equals: Rectangle;
		assert: align rightMostShape baseRectangle top equals: -50.0;
		assert: align rightMostShape baseRectangle extent class
			equals: Point;
		assert: align rightMostShape baseRectangle hasPositiveExtent;
		assert: align rightMostShape baseRectangle area equals: 10000.0;
		deny: align rightMostShape baseRectangle isTall;
		assert: align rightMostShape baseRectangle aboveCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle bottomCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle corner class
			equals: Point;
		assert: align rightMostShape baseRectangle left equals: -50.0;
		assert: align rightMostShape baseRectangle origin class
			equals: Point;
		assert: align rightMostShape baseRectangle width equals: 100.0;
		assert: align rightMostShape baseRectangle right equals: 50.0;
		deny: align rightMostShape baseRectangle isZero;
		deny: align rightMostShape baseRectangle isWide;
		assert: align rightMostShape baseRectangle innerCorners class
			equals: Array;
		assert: align rightMostShape baseRectangle innerCorners size
			equals: 4;
		assert: align rightMostShape baseRectangle topCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle topRight class
			equals: Point;
		assert: align rightMostShape baseRectangle bottomRight class
			equals: Point;
		assert: align rightMostShape baseRectangle center class
			equals: Point;
		assert: align rightMostShape baseRectangle topLeft class
			equals: Point;
		assert: align rightMostShape baseRectangle bottom equals: 50.0;
		assert: align rightMostShape baseRectangle floatCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle leftCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle isRectangle;
		assert: align rightMostShape baseRectangle bottomLeft class
			equals: Point;
		assert: align rightMostShape baseRectangle corners class
			equals: Array;
		assert: align rightMostShape baseRectangle corners size equals: 4;
		assert: align rightMostShape baseRectangle rightCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle height equals: 100.0;
		assert: align rightMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: align rightMostShape computeEncompassingRectangle top
			equals: 115.0;
		assert: align rightMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle hasPositiveExtent;
		assert: align rightMostShape computeEncompassingRectangle area
			equals: 10000.0;
		deny: align rightMostShape computeEncompassingRectangle isTall;
		assert: align rightMostShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle left
			equals: 540.0;
		assert: align rightMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle width
			equals: 100.0;
		assert: align rightMostShape computeEncompassingRectangle right
			equals: 640.0;
		deny: align rightMostShape computeEncompassingRectangle isZero;
		deny: align rightMostShape computeEncompassingRectangle isWide;
		assert: align rightMostShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: align rightMostShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: align rightMostShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle center class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle bottom
			equals: 215.0;
		assert: align rightMostShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle isRectangle;
		assert: align rightMostShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert: align rightMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert: align rightMostShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle height
			equals: 100.0;
		assert: align rightMostShape cornerRadius isNil
]

{ #category : #tests }
RSAlignmentTest >> testFromLeft [
	| es |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSVerticalLineLayout on: es.
	es second translateBy: -150 @ 0.
	self
		assert: (es collect: [ :e | e encompassingRectangle left ]) asArray
		equals: #(0.0 -150.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0).
	self assert: align leftMostShape equals: es second.
	align left.
	self
		assert: (es collect: [ :e | e encompassingRectangle left ]) asArray
		equals:
			#(-150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0)
	"	
	RSView new addAll: es; inspect.
	"
]

{ #category : #tests }
RSAlignmentTest >> testFromLeftWithAFixShape [
	| es |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSVerticalLineLayout on: es.
	es second translateBy: -150 @ 0.
	align fixedShape: es first.
	align left.
	self
		assert: (es collect: [ :e | e encompassingRectangle left ]) asArray
		equals: #(0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0)
	"	
	RSView new addAll: es; inspect.
	"
]

{ #category : #'as yet unclassified' }
RSAlignmentTest >> testFromLeftWithAFixShape_amp [
	<smallAmpCoveres: 'RemoveCaretOperator#RSAlignment#rightMostShape#112#123'>
	<madeBySmallAmp>
	| es |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSVerticalLineLayout on: es.
	es second translateBy: -150 @ 0.
	align fixedShape: es first.
	self
		assert: align class equals: RSAlignment;
		assert: align centerMostShape class equals: RSBox;
		assert: align centerMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert: align centerMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: align centerMostShape allRecursiveConnectedShapes isHealthy;
		assert: align centerMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert: align centerMostShape matrix class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix sx equals: 1.0;
		assert: align centerMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix x equals: 5.0;
		assert: align centerMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: align centerMostShape matrix shy equals: 0.0;
		assert: align centerMostShape matrix y equals: 5.0;
		assert: align centerMostShape matrix translation class
			equals: Point;
		assert: align centerMostShape matrix sy equals: 1.0;
		assert: align centerMostShape matrix shx equals: 0.0;
		assert: align centerMostShape matrix scale class equals: Point;
		assert: align centerMostShape isNode;
		deny: align centerMostShape shouldUpdateLines;
		deny: align centerMostShape hasEdges;
		deny: align centerMostShape hasCornerRadius;
		assert: align centerMostShape baseRectangle class equals: Rectangle;
		assert: align centerMostShape baseRectangle top equals: -5.0;
		assert: align centerMostShape baseRectangle extent class
			equals: Point;
		assert: align centerMostShape baseRectangle hasPositiveExtent;
		assert: align centerMostShape baseRectangle area equals: 100.0;
		deny: align centerMostShape baseRectangle isTall;
		assert: align centerMostShape baseRectangle aboveCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle bottomCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle corner class
			equals: Point;
		assert: align centerMostShape baseRectangle left equals: -5.0;
		assert: align centerMostShape baseRectangle origin class
			equals: Point;
		assert: align centerMostShape baseRectangle width equals: 10.0;
		assert: align centerMostShape baseRectangle right equals: 5.0;
		deny: align centerMostShape baseRectangle isZero;
		deny: align centerMostShape baseRectangle isWide;
		assert: align centerMostShape baseRectangle innerCorners class
			equals: Array;
		assert: align centerMostShape baseRectangle innerCorners size
			equals: 4;
		assert: align centerMostShape baseRectangle topCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle topRight class
			equals: Point;
		assert: align centerMostShape baseRectangle bottomRight class
			equals: Point;
		assert: align centerMostShape baseRectangle center class
			equals: Point;
		assert: align centerMostShape baseRectangle topLeft class
			equals: Point;
		assert: align centerMostShape baseRectangle bottom equals: 5.0;
		assert: align centerMostShape baseRectangle floatCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle leftCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle isRectangle;
		assert: align centerMostShape baseRectangle bottomLeft class
			equals: Point;
		assert: align centerMostShape baseRectangle corners class
			equals: Array;
		assert: align centerMostShape baseRectangle corners size equals: 4;
		assert: align centerMostShape baseRectangle rightCenter class
			equals: Point;
		assert: align centerMostShape baseRectangle height equals: 10.0;
		assert: align centerMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: align centerMostShape computeEncompassingRectangle top
			equals: 0.0;
		assert: align centerMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle hasPositiveExtent;
		assert: align centerMostShape computeEncompassingRectangle area
			equals: 100.0;
		deny: align centerMostShape computeEncompassingRectangle isTall;
		assert: align centerMostShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle left
			equals: 0.0;
		assert: align centerMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle width
			equals: 10.0;
		assert: align centerMostShape computeEncompassingRectangle right
			equals: 10.0;
		deny: align centerMostShape computeEncompassingRectangle isZero;
		deny: align centerMostShape computeEncompassingRectangle isWide;
		assert: align centerMostShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: align centerMostShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: align centerMostShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle center class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle bottom
			equals: 10.0;
		assert: align centerMostShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle isRectangle;
		assert: align centerMostShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert: align centerMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert: align centerMostShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: align centerMostShape computeEncompassingRectangle height
			equals: 10.0;
		assert: align centerMostShape cornerRadius isNil.
	align left
]

{ #category : #tests }
RSAlignmentTest >> testFromLeftWithFixedShape [
	| es c |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSVerticalLineLayout on: es.
	es second translateBy: -150 @ 0.
	c := RSCanvas new.
	c addAll: es.
	es do: [ :s | s setAsFixed ].
	self
		assert: (es collect: [ :e | e encompassingRectangle left ]) asArray
		equals: #(0.0 -150.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0).
	self assert: align leftMostShape equals: es second.
	align left.
	self
		assert: (es collect: [ :e | e encompassingRectangle left ]) asArray
		equals:
			#(-150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0 -150.0)
	"	
	RSView new addAll: es; inspect.
	"
]

{ #category : #'as yet unclassified' }
RSAlignmentTest >> testFromLeftWithFixedShape_amp_A21_A66_L34 [
	<smallAmpCoveres:
		'ReplaceLessOrEqualWithLessMutantOperator#RSAlignment#rightMostShape#182#246'>
	<madeBySmallAmp>
	| es c |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align
		shapes: es;
		top.
	RSVerticalLineLayout on: es.
	es second translateBy: -1152921504606846976 @ 0.
	RSCanvas new addAll: es.
	es do: [ :s | s setAsFixed ].
	align left.
	self
		assert: align class equals: RSAlignment;
		assert: align rightMostShape class equals: RSBox;
		assert: align rightMostShape isNode;
		assert: align rightMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert: align rightMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: align rightMostShape allRecursiveConnectedShapes isHealthy;
		assert: align rightMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert: align rightMostShape cornerRadius isNil;
		assert: align rightMostShape matrix class
			equals: AthensAffineTransform;
		assert: align rightMostShape matrix sx equals: 1.0;
		assert: align rightMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert: align rightMostShape matrix x equals: -1.152921504606847e18;
		assert: align rightMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: align rightMostShape matrix shy equals: 0.0;
		assert: align rightMostShape matrix y equals: 590.0;
		assert: align rightMostShape matrix translation class equals: Point;
		assert: align rightMostShape matrix sy equals: 1.0;
		assert: align rightMostShape matrix shx equals: 0.0;
		assert: align rightMostShape matrix scale class equals: Point;
		deny: align rightMostShape hasEdges;
		assert: align rightMostShape positionInCanvas
			equals: -1.152921504606847e18 @ 590.0;
		deny: align rightMostShape shouldUpdateLines;
		assert: align rightMostShape baseRectangle class equals: Rectangle;
		assert: align rightMostShape baseRectangle top equals: -50.0;
		assert: align rightMostShape baseRectangle extent class
			equals: Point;
		assert: align rightMostShape baseRectangle hasPositiveExtent;
		assert: align rightMostShape baseRectangle area equals: 10000.0;
		deny: align rightMostShape baseRectangle isTall;
		assert: align rightMostShape baseRectangle aboveCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle bottomCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle corner class
			equals: Point;
		assert: align rightMostShape baseRectangle left equals: -50.0;
		assert: align rightMostShape baseRectangle origin class
			equals: Point;
		assert: align rightMostShape baseRectangle width equals: 100.0;
		assert: align rightMostShape baseRectangle right equals: 50.0;
		deny: align rightMostShape baseRectangle isZero;
		deny: align rightMostShape baseRectangle isWide;
		assert: align rightMostShape baseRectangle innerCorners class
			equals: Array;
		assert: align rightMostShape baseRectangle innerCorners size
			equals: 4;
		assert: align rightMostShape baseRectangle topCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle topRight class
			equals: Point;
		assert: align rightMostShape baseRectangle bottomRight class
			equals: Point;
		assert: align rightMostShape baseRectangle center class
			equals: Point;
		assert: align rightMostShape baseRectangle topLeft class
			equals: Point;
		assert: align rightMostShape baseRectangle bottom equals: 50.0;
		assert: align rightMostShape baseRectangle floatCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle leftCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle isRectangle;
		assert: align rightMostShape baseRectangle bottomLeft class
			equals: Point;
		assert: align rightMostShape baseRectangle corners class
			equals: Array;
		assert: align rightMostShape baseRectangle corners size equals: 4;
		assert: align rightMostShape baseRectangle rightCenter class
			equals: Point;
		assert: align rightMostShape baseRectangle height equals: 100.0;
		deny: align rightMostShape hasCornerRadius;
		assert: align rightMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: align rightMostShape computeEncompassingRectangle top
			equals: 540.0;
		assert: align rightMostShape computeEncompassingRectangle extent class
			equals: Point;
		deny: align rightMostShape computeEncompassingRectangle hasPositiveExtent;
		assert: align rightMostShape computeEncompassingRectangle area
			equals: 0;
		assert: align rightMostShape computeEncompassingRectangle isTall;
		assert: align rightMostShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle left
			equals: -1.152921504606847e18;
		assert: align rightMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle width
			equals: 0.0;
		assert: align rightMostShape computeEncompassingRectangle right
			equals: -1.152921504606847e18;
		deny: align rightMostShape computeEncompassingRectangle isZero;
		deny: align rightMostShape computeEncompassingRectangle isWide;
		assert: align rightMostShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: align rightMostShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: align rightMostShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle center class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle bottom
			equals: 640.0;
		assert: align rightMostShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle isRectangle;
		assert: align rightMostShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert: align rightMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert: align rightMostShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: align rightMostShape computeEncompassingRectangle height
			equals: 100.0.
	align left
]

{ #category : #'as yet unclassified' }
RSAlignmentTest >> testFromLeft_amp [
	<smallAmpCoveres:
		'ReplaceGreaterOrEqualWithGreaterMutantOperator#RSAlignment#leftMostShape#180#242'>
	<madeBySmallAmp>
	| es |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSVerticalLineLayout on: es.
	es second translateBy: -150 @ 0.
	align left.
	self
		assert: align class equals: RSAlignment;
		assert: align leftMostShape class equals: RSBox;
		assert: align leftMostShape allRecursiveConnectedShapes class
			equals: Set;
		assert: align leftMostShape allRecursiveConnectedShapes capacity
			equals: 5;
		assert: align leftMostShape allRecursiveConnectedShapes isHealthy;
		assert: align leftMostShape allRecursiveConnectedShapes size
			equals: 1;
		assert: align leftMostShape matrix class
			equals: AthensAffineTransform;
		assert: align leftMostShape matrix sx equals: 1.0;
		assert: align leftMostShape matrix inverted class
			equals: AthensAffineTransform;
		assert: align leftMostShape matrix x equals: -100.0;
		assert: align leftMostShape matrix getMatrix class
			equals: AthensAffineTransform;
		assert: align leftMostShape matrix shy equals: 0.0;
		assert: align leftMostShape matrix y equals: 590.0;
		assert: align leftMostShape matrix translation class equals: Point;
		assert: align leftMostShape matrix sy equals: 1.0;
		assert: align leftMostShape matrix shx equals: 0.0;
		assert: align leftMostShape matrix scale class equals: Point;
		assert: align leftMostShape isNode;
		deny: align leftMostShape shouldUpdateLines;
		deny: align leftMostShape hasEdges;
		deny: align leftMostShape hasCornerRadius;
		assert: align leftMostShape baseRectangle class equals: Rectangle;
		assert: align leftMostShape baseRectangle top equals: -50.0;
		assert: align leftMostShape baseRectangle extent class
			equals: Point;
		assert: align leftMostShape baseRectangle hasPositiveExtent;
		assert: align leftMostShape baseRectangle area equals: 10000.0;
		deny: align leftMostShape baseRectangle isTall;
		assert: align leftMostShape baseRectangle aboveCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle bottomCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle corner class
			equals: Point;
		assert: align leftMostShape baseRectangle left equals: -50.0;
		assert: align leftMostShape baseRectangle origin class
			equals: Point;
		assert: align leftMostShape baseRectangle width equals: 100.0;
		assert: align leftMostShape baseRectangle right equals: 50.0;
		deny: align leftMostShape baseRectangle isZero;
		deny: align leftMostShape baseRectangle isWide;
		assert: align leftMostShape baseRectangle innerCorners class
			equals: Array;
		assert: align leftMostShape baseRectangle innerCorners size
			equals: 4;
		assert: align leftMostShape baseRectangle topCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle topRight class
			equals: Point;
		assert: align leftMostShape baseRectangle bottomRight class
			equals: Point;
		assert: align leftMostShape baseRectangle center class
			equals: Point;
		assert: align leftMostShape baseRectangle topLeft class
			equals: Point;
		assert: align leftMostShape baseRectangle bottom equals: 50.0;
		assert: align leftMostShape baseRectangle floatCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle leftCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle isRectangle;
		assert: align leftMostShape baseRectangle bottomLeft class
			equals: Point;
		assert: align leftMostShape baseRectangle corners class
			equals: Array;
		assert: align leftMostShape baseRectangle corners size equals: 4;
		assert: align leftMostShape baseRectangle rightCenter class
			equals: Point;
		assert: align leftMostShape baseRectangle height equals: 100.0;
		assert: align leftMostShape computeEncompassingRectangle class
			equals: Rectangle;
		assert: align leftMostShape computeEncompassingRectangle top
			equals: 540.0;
		assert: align leftMostShape computeEncompassingRectangle extent class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle hasPositiveExtent;
		assert: align leftMostShape computeEncompassingRectangle area
			equals: 10000.0;
		deny: align leftMostShape computeEncompassingRectangle isTall;
		assert: align leftMostShape computeEncompassingRectangle aboveCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle bottomCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle corner class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle left
			equals: -150.0;
		assert: align leftMostShape computeEncompassingRectangle origin class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle width
			equals: 100.0;
		assert: align leftMostShape computeEncompassingRectangle right
			equals: -50.0;
		deny: align leftMostShape computeEncompassingRectangle isZero;
		deny: align leftMostShape computeEncompassingRectangle isWide;
		assert: align leftMostShape computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: align leftMostShape computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: align leftMostShape computeEncompassingRectangle topCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle topRight class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle bottomRight class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle center class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle topLeft class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle bottom
			equals: 640.0;
		assert: align leftMostShape computeEncompassingRectangle floatCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle leftCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle isRectangle;
		assert: align leftMostShape computeEncompassingRectangle bottomLeft class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle corners class
			equals: Array;
		assert: align leftMostShape computeEncompassingRectangle corners size
			equals: 4;
		assert: align leftMostShape computeEncompassingRectangle rightCenter class
			equals: Point;
		assert: align leftMostShape computeEncompassingRectangle height
			equals: 100.0;
		assert: align leftMostShape cornerRadius isNil
]

{ #category : #tests }
RSAlignmentTest >> testFromRight [
	| es |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSVerticalLineLayout on: es.
	es second translateBy: 150 @ 0.
	self
		assert: (es collect: [ :e | e encompassingRectangle right ]) asArray
		equals: #(10.0 170.0 30.0 40.0 50.0 60.0 70.0 80.0 90.0 100.0).
	self assert: align rightMostShape equals: es second.
	align right.
	self
		assert: (es collect: [ :e | e encompassingRectangle right ]) asArray
		equals: #(170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0 170.0)
]

{ #category : #tests }
RSAlignmentTest >> testFromTop [
	| es |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSHorizontalLineLayout on: es.
	es second translateBy: 0 @ -50.
	self
		assert: (es collect: [ :e | e encompassingRectangle top ]) asArray
		equals: #(0.0 -50.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0).
	self assert: align topMostShape equals: es second.
	align top.
	self
		assert: (es collect: [ :e | e encompassingRectangle top ]) asArray
		equals: #(-50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0 -50.0)
]

{ #category : #tests }
RSAlignmentTest >> testFromTopWithAFixShape [
	| es |
	es := (10 to: 100 by: 10)
		collect: [ :n | 
			RSBox new
				size: n;
				yourself ].
	align shapes: es.
	RSHorizontalLineLayout on: es.
	es second translateBy: 0 @ -50.
	align fixedShape: es third.
	self
		assert: (es collect: [ :e | e encompassingRectangle top ]) asArray
		equals: #(0.0 -50.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0).
	self assert: align topMostShape equals: es third.
	align top.
	self
		assert: (es collect: [ :e | e encompassingRectangle top ]) asArray
		equals: #(0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0)
	"
For debugging only:

RSCanvas new addAll: es; yourself.
"
]

{ #category : #tests }
RSAlignmentTest >> testHasElement [
	self deny: align hasShape.
	align shapes: (Array with: RSBox new).
	self assert: align hasShape.
	align shapes: #().
	self deny: align hasShape
]

{ #category : #tests }
RSAlignmentTest >> testNoErrorOnDefault [
	RSAlignment new
		left;
		right;
		top;
		bottom
]
