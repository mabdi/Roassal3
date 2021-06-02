"
A TSLabelTest is a test class for testing the behavior of TSLabel
"
Class {
	#name : #RSLabelTest,
	#superclass : #RSTest,
	#instVars : [
		'canvas'
	],
	#category : #'Roassal3-Shapes-Tests'
}

{ #category : #running }
RSLabelTest >> setUp [
	super setUp.
	canvas := RSCanvas new
]

{ #category : #tests }
RSLabelTest >> testBuilding [
	| l |
	l := RSLabel text: 'Hello'.
	self assert: l class equals: RSLabel.
	self assert: l text equals: 'Hello'
]

{ #category : #tests }
RSLabelTest >> testBuilding2 [
	| l |
	l := RSLabel text: 'Hello' model: 42.
	self assert: l class equals: RSLabel.
	self assert: l text equals: 'Hello'.
	self assert: l model equals: 42
]

{ #category : #'as yet unclassified' }
RSLabelTest >> testBuilding_amp [
	<smallAmpCoveres: 'RemoveCaretOperator#RSLabel#isItalic#11#22'>
	<madeBySmallAmp>
	| l |
	l := RSLabel text: 'Hello'.
	self
		assert: l class equals: RSLabel;
		assert: l fontName equals: 'Source Sans Pro'
]

{ #category : #tests }
RSLabelTest >> testCairoCachedMetricProvider [
	| label provider |
	label := RSLabel new.
	label text: ''.
	provider := RSCairoCachedMetricsProvider new.
	label metricsProvider: provider.
	self assert: label extent class equals: Point.
	self assert: (provider extentsOf: label) class equals: RSTextExtents
]

{ #category : #'as yet unclassified' }
RSLabelTest >> testCairoCachedMetricProvider_amp [
	<smallAmpCoveres: 'ReplaceAndArgumentWithTrueOperator#RSLabel#hasText#12#47'>
	<madeBySmallAmp>
	| label provider |
	label := RSLabel new.
	label text: ''.
	self
		assert: label class equals: RSLabel;
		assert: label textHeight equals: 0;
		assert: label computeEncompassingRectangle class equals: Rectangle;
		assert: label computeEncompassingRectangle top equals: 0.0;
		assert: label computeEncompassingRectangle extent equals: 0.0 @ 0.0;
		deny: label computeEncompassingRectangle hasPositiveExtent;
		assert: label computeEncompassingRectangle area equals: 0;
		deny: label computeEncompassingRectangle isTall;
		assert: label computeEncompassingRectangle aboveCenter
			equals: 0 @ 0;
		assert: label computeEncompassingRectangle bottomCenter
			equals: 0 @ 0.0;
		assert: label computeEncompassingRectangle corner equals: 0.0 @ 0.0;
		assert: label computeEncompassingRectangle left equals: 0.0;
		assert: label computeEncompassingRectangle origin equals: 0.0 @ 0.0;
		assert: label computeEncompassingRectangle width equals: 0.0;
		assert: label computeEncompassingRectangle right equals: 0.0;
		assert: label computeEncompassingRectangle isZero;
		deny: label computeEncompassingRectangle isWide;
		assert: label computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: label computeEncompassingRectangle innerCorners size
			equals: 4;
		assert: (label computeEncompassingRectangle innerCorners at: 1) class
			equals: Point;
		assert: (label computeEncompassingRectangle innerCorners at: 2) class
			equals: Point;
		assert: (label computeEncompassingRectangle innerCorners at: 3) class
			equals: Point;
		assert: (label computeEncompassingRectangle innerCorners at: 4) class
			equals: Point;
		assert: label computeEncompassingRectangle topCenter
			equals: 0 @ 0.0;
		assert: label computeEncompassingRectangle topRight
			equals: 0.0 @ 0.0;
		assert: label computeEncompassingRectangle bottomRight
			equals: 0.0 @ 0.0;
		assert: label computeEncompassingRectangle center equals: 0 @ 0;
		assert: label computeEncompassingRectangle topLeft
			equals: 0.0 @ 0.0;
		assert: label computeEncompassingRectangle bottom equals: 0.0;
		assert: label computeEncompassingRectangle floatCenter
			equals: 0.0 @ 0.0;
		assert: label computeEncompassingRectangle leftCenter
			equals: 0.0 @ 0;
		assert: label computeEncompassingRectangle isRectangle;
		assert: label computeEncompassingRectangle bottomLeft
			equals: 0.0 @ 0.0;
		assert: label computeEncompassingRectangle corners class
			equals: Array;
		assert: label computeEncompassingRectangle corners size equals: 4;
		assert: (label computeEncompassingRectangle corners at: 1) class
			equals: Point;
		assert: (label computeEncompassingRectangle corners at: 2) class
			equals: Point;
		assert: (label computeEncompassingRectangle corners at: 3) class
			equals: Point;
		assert: (label computeEncompassingRectangle corners at: 4) class
			equals: Point;
		assert: label computeEncompassingRectangle rightCenter
			equals: 0.0 @ 0;
		assert: label computeEncompassingRectangle height equals: 0.0;
		assert: label baseRectangle class equals: Rectangle;
		assert: label baseRectangle top equals: 0.0;
		assert: label baseRectangle extent equals: 0.0 @ 0.0;
		deny: label baseRectangle hasPositiveExtent;
		assert: label baseRectangle area equals: 0;
		deny: label baseRectangle isTall;
		assert: label baseRectangle aboveCenter equals: 0 @ 0;
		assert: label baseRectangle bottomCenter equals: 0 @ 0.0;
		assert: label baseRectangle corner equals: 0.0 @ 0.0;
		assert: label baseRectangle left equals: 0.0;
		assert: label baseRectangle origin equals: 0.0 @ 0.0;
		assert: label baseRectangle width equals: 0.0;
		assert: label baseRectangle right equals: 0.0;
		assert: label baseRectangle isZero;
		deny: label baseRectangle isWide;
		assert: label baseRectangle innerCorners class equals: Array;
		assert: label baseRectangle innerCorners size equals: 4;
		assert: (label baseRectangle innerCorners at: 1) class
			equals: Point;
		assert: (label baseRectangle innerCorners at: 2) class
			equals: Point;
		assert: (label baseRectangle innerCorners at: 3) class
			equals: Point;
		assert: (label baseRectangle innerCorners at: 4) class
			equals: Point;
		assert: label baseRectangle topCenter equals: 0 @ 0.0;
		assert: label baseRectangle topRight equals: 0.0 @ 0.0;
		assert: label baseRectangle bottomRight equals: 0.0 @ 0.0;
		assert: label baseRectangle center equals: 0 @ 0;
		assert: label baseRectangle topLeft equals: 0.0 @ 0.0;
		assert: label baseRectangle bottom equals: 0.0;
		assert: label baseRectangle floatCenter equals: 0.0 @ 0.0;
		assert: label baseRectangle leftCenter equals: 0.0 @ 0;
		assert: label baseRectangle isRectangle;
		assert: label baseRectangle bottomLeft equals: 0.0 @ 0.0;
		assert: label baseRectangle corners class equals: Array;
		assert: label baseRectangle corners size equals: 4;
		assert: (label baseRectangle corners at: 1) class equals: Point;
		assert: (label baseRectangle corners at: 2) class equals: Point;
		assert: (label baseRectangle corners at: 3) class equals: Point;
		assert: (label baseRectangle corners at: 4) class equals: Point;
		assert: label baseRectangle rightCenter equals: 0.0 @ 0;
		assert: label baseRectangle height equals: 0.0;
		deny: label hasText.
	provider := RSCairoCachedMetricsProvider new.
	label metricsProvider: provider
]

{ #category : #'as yet unclassified' }
RSLabelTest >> testCairoCachedMetricProvider_amp_A117 [
	<smallAmpCoveres:
		'ReplaceIfTrueIfFalseReceiverWithFalseOperator#RSLabel#privateFontName#20#114'>
	<madeBySmallAmp>
	| label provider |
	label := RSLabel new.
	label text: ''.
	provider := RSCairoCachedMetricsProvider new.
	label metricsProvider: provider.
	self
		should: [ label font: LogicalFont new ]
		raise: MessageNotUnderstood
]

{ #category : #tests }
RSLabelTest >> testCairoFitMetricsProvider [
	| label h |
	label := RSLabel new.
	label text: '.'.
	h := label height.
	label metricsProvider: RSCairoFitMetricsProvider new.
	self assert: h > label height
]

{ #category : #tests }
RSLabelTest >> testDrawBorderLabel [
	canvas
		addShape:
			(RSLabel new
				withBorder;
				color: (Color purple alpha: 0.5);
				fontName: 'Source Sans Pro';
				position: -50 @ 0;
				text: 'Hello world!';
				yourself).
	canvas createMorph drawOnMockCanvas
]

{ #category : #tests }
RSLabelTest >> testDrawLabel [
	canvas
		addShape:
			(RSLabel new
				color: (Color purple alpha: 0.5);
				position: -50 @ 0;
				text: 'Hello world!';
				yourself).
	canvas createMorph drawOnMockCanvas
]

{ #category : #tests }
RSLabelTest >> testHasChildren [
	| b |
	b := RSLabel new.
	self deny: b hasChildren
]

{ #category : #tests }
RSLabelTest >> testModelWithoutText [
	| l |
	l := RSLabel new.
	self assert: l text isNil.
	self assert: l model isNil.
	l model: 42.
	self assert: l model equals: 42.
	self assert: l text equals: '42'
]

{ #category : #tests }
RSLabelTest >> testSameSize [
	| l1 l2 |
	l1 := RSLabel model: 123.
	l2 := RSLabel new text: 123.
	self assert: l1 extent equals: l2 extent
]

{ #category : #'as yet unclassified' }
RSLabelTest >> testSameSize_amp_N1 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSLabel#text:#120#125'>
	<madeBySmallAmp>
	| l1 l2 aRSLabel |
	aRSLabel := RSLabel
		model: 123;
		new.
	l2 := aRSLabel text: nil.
	self
		assert:
			aRSLabel class equals: RSLabel;
		assert:
			aRSLabel textWidth equals: 0;
		deny:
			aRSLabel hasText;
		assert:
			aRSLabel textHeight equals: 0;
		assert:
			aRSLabel baseRectangle class equals: Rectangle;
		assert:
			aRSLabel baseRectangle top equals: 0.0;
		assert:
			aRSLabel baseRectangle extent equals: 0.0 @ 0.0;
		deny:
			aRSLabel baseRectangle hasPositiveExtent;
		assert:
			aRSLabel baseRectangle area equals: 0;
		deny:
			aRSLabel baseRectangle isTall;
		assert:
			aRSLabel baseRectangle aboveCenter equals: 0 @ 0;
		assert:
			aRSLabel baseRectangle bottomCenter equals: 0 @ 0.0;
		assert:
			aRSLabel baseRectangle corner equals: 0.0 @ 0.0;
		assert:
			aRSLabel baseRectangle left equals: 0.0;
		assert:
			aRSLabel baseRectangle origin equals: 0.0 @ 0.0;
		assert:
			aRSLabel baseRectangle width equals: 0.0;
		assert:
			aRSLabel baseRectangle right equals: 0.0;
		assert:
			aRSLabel baseRectangle isZero;
		deny:
			aRSLabel baseRectangle isWide;
		assert:
			aRSLabel baseRectangle innerCorners class equals: Array;
		assert:
			aRSLabel baseRectangle innerCorners size equals: 4;
		assert: (aRSLabel baseRectangle innerCorners at: 1) class
			equals: Point;
		assert: (aRSLabel baseRectangle innerCorners at: 2) class
			equals: Point;
		assert: (aRSLabel baseRectangle innerCorners at: 3) class
			equals: Point;
		assert: (aRSLabel baseRectangle innerCorners at: 4) class
			equals: Point;
		assert:
			aRSLabel baseRectangle topCenter equals: 0 @ 0.0;
		assert:
			aRSLabel baseRectangle topRight equals: 0.0 @ 0.0;
		assert:
			aRSLabel baseRectangle bottomRight equals: 0.0 @ 0.0;
		assert:
			aRSLabel baseRectangle center equals: 0 @ 0;
		assert:
			aRSLabel baseRectangle topLeft equals: 0.0 @ 0.0;
		assert:
			aRSLabel baseRectangle bottom equals: 0.0;
		assert:
			aRSLabel baseRectangle floatCenter equals: 0.0 @ 0.0;
		assert:
			aRSLabel baseRectangle leftCenter equals: 0.0 @ 0;
		assert:
			aRSLabel baseRectangle isRectangle;
		assert:
			aRSLabel baseRectangle bottomLeft equals: 0.0 @ 0.0;
		assert:
			aRSLabel baseRectangle corners class equals: Array;
		assert:
			aRSLabel baseRectangle corners size equals: 4;
		assert: (aRSLabel baseRectangle corners at: 1) class equals: Point;
		assert: (aRSLabel baseRectangle corners at: 2) class equals: Point;
		assert: (aRSLabel baseRectangle corners at: 3) class equals: Point;
		assert: (aRSLabel baseRectangle corners at: 4) class equals: Point;
		assert:
			aRSLabel baseRectangle rightCenter equals: 0.0 @ 0;
		assert:
			aRSLabel baseRectangle height equals: 0.0;
		assert:
			aRSLabel computeEncompassingRectangle class
			equals: Rectangle;
		assert:
			aRSLabel computeEncompassingRectangle top equals: 0.0;
		assert:
			aRSLabel computeEncompassingRectangle extent
			equals: 0.0 @ 0.0;
		deny:
			aRSLabel computeEncompassingRectangle hasPositiveExtent;
		assert:
			aRSLabel computeEncompassingRectangle area equals: 0;
		deny:
			aRSLabel computeEncompassingRectangle isTall;
		assert:
			aRSLabel computeEncompassingRectangle aboveCenter
			equals: 0 @ 0;
		assert:
			aRSLabel computeEncompassingRectangle bottomCenter
			equals: 0 @ 0.0;
		assert:
			aRSLabel computeEncompassingRectangle corner
			equals: 0.0 @ 0.0;
		assert:
			aRSLabel computeEncompassingRectangle left equals: 0.0;
		assert:
			aRSLabel computeEncompassingRectangle origin
			equals: 0.0 @ 0.0;
		assert:
			aRSLabel computeEncompassingRectangle width equals: 0.0;
		assert:
			aRSLabel computeEncompassingRectangle right equals: 0.0;
		assert:
			aRSLabel computeEncompassingRectangle isZero;
		deny:
			aRSLabel computeEncompassingRectangle isWide;
		assert:
			aRSLabel computeEncompassingRectangle innerCorners class
			equals: Array;
		assert:
			aRSLabel computeEncompassingRectangle innerCorners size
			equals: 4;
		assert:
			(aRSLabel computeEncompassingRectangle innerCorners at: 1) class
			equals: Point;
		assert:
			(aRSLabel computeEncompassingRectangle innerCorners at: 2) class
			equals: Point;
		assert:
			(aRSLabel computeEncompassingRectangle innerCorners at: 3) class
			equals: Point;
		assert:
			(aRSLabel computeEncompassingRectangle innerCorners at: 4) class
			equals: Point;
		assert:
			aRSLabel computeEncompassingRectangle topCenter
			equals: 0 @ 0.0;
		assert:
			aRSLabel computeEncompassingRectangle topRight
			equals: 0.0 @ 0.0;
		assert:
			aRSLabel computeEncompassingRectangle bottomRight
			equals: 0.0 @ 0.0;
		assert:
			aRSLabel computeEncompassingRectangle center equals: 0 @ 0;
		assert:
			aRSLabel computeEncompassingRectangle topLeft
			equals: 0.0 @ 0.0;
		assert:
			aRSLabel computeEncompassingRectangle bottom equals: 0.0;
		assert:
			aRSLabel computeEncompassingRectangle floatCenter
			equals: 0.0 @ 0.0;
		assert:
			aRSLabel computeEncompassingRectangle leftCenter
			equals: 0.0 @ 0;
		assert:
			aRSLabel computeEncompassingRectangle isRectangle;
		assert:
			aRSLabel computeEncompassingRectangle bottomLeft
			equals: 0.0 @ 0.0;
		assert:
			aRSLabel computeEncompassingRectangle corners class
			equals: Array;
		assert:
			aRSLabel computeEncompassingRectangle corners size
			equals: 4;
		assert: (aRSLabel computeEncompassingRectangle corners at: 1) class
			equals: Point;
		assert: (aRSLabel computeEncompassingRectangle corners at: 2) class
			equals: Point;
		assert: (aRSLabel computeEncompassingRectangle corners at: 3) class
			equals: Point;
		assert: (aRSLabel computeEncompassingRectangle corners at: 4) class
			equals: Point;
		assert:
			aRSLabel computeEncompassingRectangle rightCenter
			equals: 0.0 @ 0;
		assert:
			aRSLabel computeEncompassingRectangle height equals: 0.0;
		assert:
			aRSLabel text isNil
]

{ #category : #tests }
RSLabelTest >> testUnderlineStruckout [
	| label |
	label := RSLabel new.
	self assert: label isNormal.
	label underline.
	label bold.
	self assert: label isBold.
	self assert: label isUnderlined
]

{ #category : #'as yet unclassified' }
RSLabelTest >> testUnderlineStruckout_amp_A77 [
	<smallAmpCoveres: 'ReplaceEqualWithNotEqualOperator#RSLabel#emphasis:#172#195'>
	<madeBySmallAmp>
	| label aRSLabel |
	label := RSLabel new.
	aRSLabel := label underline.
	aRSLabel normal.
	self
		assert:
			aRSLabel class equals: RSLabel;
		deny:
			aRSLabel isUnderlined;
		assert:
			aRSLabel isNormal;
		assert:
			aRSLabel emphasis class equals: TextEmphasis;
		assert:
			aRSLabel emphasis value equals: 0;
		deny:
			aRSLabel emphasis isKern;
		assert:
			aRSLabel emphasis dominatedByCmd0;
		deny:
			aRSLabel emphasis mayHaveExternalReferences;
		assert:
			aRSLabel emphasis anchoredMorph isNil;
		assert:
			aRSLabel emphasis emphasisCode equals: 0;
		deny:
			aRSLabel emphasis set;
		assert:
			aRSLabel emphasis mayBeExtended.
	label bold
]
