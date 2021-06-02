"
I am test class for composite shapes in roassal
"
Class {
	#name : #RSCompositeTest,
	#superclass : #RSTest,
	#category : #'Roassal3-Shapes-Tests'
}

{ #category : #tests }
RSCompositeTest >> testAdjustChildren [
	| box circle g composite |
	box := RSBox new size: 20.
	circle := RSEllipse new size: 20.
	g := RSGroup new.
	g
		add: box;
		add: circle.
	composite := g asShape.
	self assert: composite extent equals: 20 @ 20.
	RSVerticalLineLayout on: g.
	self assert: composite extent equals: 20 @ 20.
	composite adjustToChildren.
	self assert: composite extent equals: 20 @ 50
]

{ #category : #tests }
RSCompositeTest >> testEdgesCanvasAndComposite01 [
	"basic case in a canvas"

	| c b1 b2 e1 |
	c := RSCanvas new.
	b1 := RSBox new position: 0 @ 0.
	b2 := RSBox new position: 100 @ 100.
	e1 := RSLine new
		from: b1;
		to: b2.
	c
		addAll:
			{b1.
			b2.
			e1}.
	self assert: e1 startPoint equals: b1 position.
	self assert: e1 endPoint equals: b2 position
]

{ #category : #tests }
RSCompositeTest >> testEdgesCanvasAndComposite02 [
	"basic example in composite"

	| c b1 b2 e1 |
	c := RSComposite new.
	b1 := RSBox new position: 0 @ 0.
	b2 := RSBox new position: 100 @ 100.
	e1 := RSLine new
		from: b1;
		to: b2.
	c
		shapes:
			{b1.
			b2.
			e1}.
	self assert: e1 startPoint equals: b1 position.
	self assert: e1 endPoint equals: b2 position
]

{ #category : #'as yet unclassified' }
RSCompositeTest >> testEdgesCanvasAndComposite02_amp_A18 [
	"basic example in composite"

	<smallAmpCoveres: 'ReplaceAndArgumentWithTrueOperator#RSComposite#hasChildren#16#59'>
	<madeBySmallAmp>
	| c b1 b2 e1 aRSLine |
	c := RSComposite new.
	c adjustToChildren.
	self
		assert: c class equals: RSComposite;
		deny: c hasChildren.
	b1 := RSBox new position: 0 @ 0.
	b2 := RSBox new position: 100 @ 100.
	aRSLine := RSLine new.
	e1 := aRSLine
		from: b1;
		to: b2.
	c
		shapes:
			{b1.
			b2.
			e1}
]

{ #category : #'as yet unclassified' }
RSCompositeTest >> testEdgesCanvasAndComposite02_amp_D8 [
	"basic example in composite"

	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSComposite#adjustToChildren#707#753'>
	<madeBySmallAmp>
	| c b1 b2 e1 aRSLine |
	c := RSComposite new.
	b1 := RSBox new position: 0 @ 0.
	b2 := RSBox new position: 100 @ 100.
	aRSLine := RSLine new.
	e1 := aRSLine
		from: b1;
		to: b2.
	c
		shapes:
			{b1.
			b2.
			e1};
		shapes:
			{b1.
			b2.
			e1}.
	self
		assert: c class equals: RSComposite;
		assert: c matrix class equals: AthensAffineTransform;
		assert: c matrix sx equals: 1.0;
		assert: c matrix inverted class equals: AthensAffineTransform;
		assert: c matrix inverted sx equals: 1.0;
		assert: c matrix inverted inverted class
			equals: AthensAffineTransform;
		assert: c matrix inverted x equals: 0.0;
		assert: c matrix inverted getMatrix class
			equals: AthensAffineTransform;
		assert: c matrix inverted shy equals: -0.0;
		assert: c matrix inverted y equals: 0.0;
		assert: c matrix inverted translation class equals: Point;
		assert: c matrix inverted sy equals: 1.0;
		assert: c matrix inverted shx equals: -0.0;
		assert: c matrix inverted scale class equals: Point;
		assert: c matrix x equals: 0.0;
		assert: c matrix getMatrix class equals: AthensAffineTransform;
		assert: c matrix getMatrix sx equals: 1.0;
		assert: c matrix getMatrix inverted class
			equals: AthensAffineTransform;
		assert: c matrix getMatrix x equals: 0.0;
		assert: c matrix getMatrix getMatrix class
			equals: AthensAffineTransform;
		assert: c matrix getMatrix shy equals: 0.0;
		assert: c matrix getMatrix y equals: 0.0;
		assert: c matrix getMatrix translation class equals: Point;
		assert: c matrix getMatrix sy equals: 1.0;
		assert: c matrix getMatrix shx equals: 0.0;
		assert: c matrix getMatrix scale class equals: Point;
		assert: c matrix shy equals: 0.0;
		assert: c matrix y equals: 0.0;
		assert: c matrix translation equals: 0.0 @ 0.0;
		assert: c matrix sy equals: 1.0;
		assert: c matrix shx equals: 0.0;
		assert: c matrix scale equals: 1.0 @ 1.0;
		assert: c computeEncompassingRectangle class equals: Rectangle;
		assert: c computeEncompassingRectangle top equals: -55.0;
		assert: c computeEncompassingRectangle extent equals: 110.0 @ 110.0;
		assert: c computeEncompassingRectangle hasPositiveExtent;
		assert: c computeEncompassingRectangle area equals: 12100.0;
		deny: c computeEncompassingRectangle isTall;
		assert: c computeEncompassingRectangle aboveCenter equals: 0 @ 0;
		assert: c computeEncompassingRectangle bottomCenter
			equals: 0 @ 55.0;
		assert: c computeEncompassingRectangle corner equals: 55.0 @ 55.0;
		assert: c computeEncompassingRectangle left equals: -55.0;
		assert: c computeEncompassingRectangle origin equals: -55.0 @ -55.0;
		assert: c computeEncompassingRectangle width equals: 110.0;
		assert: c computeEncompassingRectangle right equals: 55.0;
		deny: c computeEncompassingRectangle isZero;
		deny: c computeEncompassingRectangle isWide;
		assert: c computeEncompassingRectangle innerCorners class
			equals: Array;
		assert: c computeEncompassingRectangle innerCorners size equals: 4;
		assert: (c computeEncompassingRectangle innerCorners at: 1) class
			equals: Point;
		assert: (c computeEncompassingRectangle innerCorners at: 2) class
			equals: Point;
		assert: (c computeEncompassingRectangle innerCorners at: 3) class
			equals: Point;
		assert: (c computeEncompassingRectangle innerCorners at: 4) class
			equals: Point;
		assert: c computeEncompassingRectangle topCenter equals: 0 @ -55.0;
		assert: c computeEncompassingRectangle topRight
			equals: 55.0 @ -55.0;
		assert: c computeEncompassingRectangle bottomRight
			equals: 55.0 @ 55.0;
		assert: c computeEncompassingRectangle center equals: 0 @ 0;
		assert: c computeEncompassingRectangle topLeft
			equals: -55.0 @ -55.0;
		assert: c computeEncompassingRectangle bottom equals: 55.0;
		assert: c computeEncompassingRectangle floatCenter
			equals: 0.0 @ 0.0;
		assert: c computeEncompassingRectangle leftCenter equals: -55.0 @ 0;
		assert: c computeEncompassingRectangle isRectangle;
		assert: c computeEncompassingRectangle bottomLeft
			equals: -55.0 @ 55.0;
		assert: c computeEncompassingRectangle corners class equals: Array;
		assert: c computeEncompassingRectangle corners size equals: 4;
		assert: (c computeEncompassingRectangle corners at: 1) class
			equals: Point;
		assert: (c computeEncompassingRectangle corners at: 2) class
			equals: Point;
		assert: (c computeEncompassingRectangle corners at: 3) class
			equals: Point;
		assert: (c computeEncompassingRectangle corners at: 4) class
			equals: Point;
		assert: c computeEncompassingRectangle rightCenter equals: 55.0 @ 0;
		assert: c computeEncompassingRectangle height equals: 110.0
]

{ #category : #tests }
RSCompositeTest >> testEdgesCanvasAndComposite03 [
	"from box to child"

	| c b1 b2 e1 com |
	c := RSCanvas new.
	com := RSComposite new.
	b1 := RSBox new
		size: 10;
		position: 0 @ 0.
	com add: b1.
	com adjustToChildren.
	b1 position: 50 @ 50.
	com position: 200 @ 0.
	b2 := RSBox new
		size: 10;
		position: 100 @ 100.
	e1 := RSLine new
		from: b1;
		to: b2.
	c
		addAll:
			{com.
			b2.
			e1}.
	self assert: e1 startPoint equals: com position + b1 position.
	self assert: e1 endPoint equals: b2 position
]

{ #category : #tests }
RSCompositeTest >> testEdgesCanvasAndComposite04 [
	"from child to child"

	| c b1 b2 e1 com1 com2 |
	c := RSCanvas new.
	com1 := RSComposite new.
	b1 := RSBox new
		size: 10;
		position: 0 @ 0.
	com1 add: b1.
	com1 adjustToChildren.
	b1 position: 50 @ 50.
	com1 position: 200 @ 0.
	com2 := RSComposite new.
	b2 := RSBox new size: 10.
	com2 add: b2.
	com2 adjustToChildren.
	com2 position: -100 @ 0.
	b2 position: 100 @ 100.
	e1 := RSLine new
		from: b1;
		to: b2.
	c
		addAll:
			{com1.
			com2.
			e1}.
	self assert: e1 startPoint equals: com1 position + b1 position.
	self assert: e1 endPoint equals: com2 position + b2 position
]

{ #category : #tests }
RSCompositeTest >> testEdgesCanvasAndComposite05 [
	"from child to box, where the edge is with the child"

	| c b1 b2 e1 com |
	c := RSCanvas new.
	com := RSComposite new.
	b1 := RSBox new
		size: 10;
		position: 50 @ 50.
	com add: b1.
	com position: 200 @ 0.
	b2 := RSBox new
		size: 10;
		position: 100 @ 100.
	e1 := RSLine new
		from: b1;
		to: b2.
	com add: e1.
	com adjustToChildren.
	c
		addAll:
			{com.
			b2}.
	self assert: e1 startPoint equals: b1 position.
	"but b2 is not in the space of com"
	self assert: e1 endPoint equals: b2 position
]

{ #category : #tests }
RSCompositeTest >> testHasChildren [
	| b |
	b := RSComposite new.
	self deny: b hasChildren.
	b shapes: {}.
	self deny: b hasChildren.
	b
		shapes:
			{RSBox new.
			RSEllipse new}.
	self assert: b hasChildren
]

{ #category : #tests }
RSCompositeTest >> testPaddingOkay [
	"No error should be raised"

	RSComposite new
		shapes:
			(RSGroup new
				add: RSBox new;
				yourself);
		padding: 5.
	RSComposite new
		shapes:
			(RSGroup new
				add: RSBox new;
				add: RSBox new;
				yourself);
		padding: 5.
	RSComposite new
		shapes: RSGroup new;
		padding: 5
]

{ #category : #tests }
RSCompositeTest >> testPositionInCanvas [
	| box composite canvas |
	canvas := RSCanvas new.
	box := RSBox new
		size: 100;
		yourself.
	composite := RSComposite new
		shapes: {box};
		position: 100 @ 100;
		yourself.
	canvas add: composite.
	box translateTo: 10 @ 10.
	self assert: composite position equals: 100 @ 100.
	self assert: composite positionInCanvas equals: 100 @ 100.
	self assert: box position equals: 10 @ 10.
	self assert: box positionInCanvas equals: 110 @ 110
]

{ #category : #'as yet unclassified' }
RSCompositeTest >> testPositionInCanvas_amp [
	<smallAmpCoveres: 'RemoveCaretOperator#RSComposite#camera#9#23'>
	<madeBySmallAmp>
	| box composite canvas aRSBox aRSComposite1 aRSComposite2 |
	canvas := RSCanvas new.
	aRSBox := RSBox new.
	box := aRSBox
		size: 100;
		yourself.
	aRSComposite1 := RSComposite new.
	composite := aRSComposite1
		shapes: {box};
		position: 100 @ 100;
		yourself.
	aRSComposite2 := canvas add: composite.
	self
		assert:
			aRSComposite2 class equals: RSComposite;
		assert:
			aRSComposite2 camera class equals: RSCamera;
		assert:
			aRSComposite2 camera canvas class equals: RSCanvas;
		assert:
			aRSComposite2 camera canvas deepNodes class
			equals: OrderedCollection;
		assert:
			aRSComposite2 camera canvas deepNodes size equals: 2;
		assert:
			aRSComposite2 camera canvas extent class equals: Point;
		assert:
			aRSComposite2 camera canvas numberOfEdges equals: 0;
		assert:
			aRSComposite2 camera canvas animations class
			equals: OrderedCollection;
		assertEmpty:
			aRSComposite2 camera canvas animations;
		assert:
			aRSComposite2 camera canvas lines class equals: RSGroup;
		assertEmpty:
			aRSComposite2 camera canvas lines;
		assert:
			aRSComposite2 camera canvas color class equals: Color;
		assert:
			aRSComposite2 camera canvas numberOfNodes equals: 1;
		assert:
			aRSComposite2 camera canvas shapes class equals: RSGroup;
		assert:
			aRSComposite2 camera canvas shapes size equals: 1;
		assert:
			aRSComposite2 camera canvas numberOfShapes equals: 1;
		deny:
			aRSComposite2 camera canvas showRectangles;
		assert:
			aRSComposite2 camera canvas visibleRectangle class
			equals: Rectangle;
		assert:
			aRSComposite2 camera canvas numberOfDeepNodes equals: 2;
		assert:
			aRSComposite2 camera canvas fixedShapes class
			equals: RSGroup;
		assertEmpty:
			aRSComposite2 camera canvas fixedShapes;
		assert:
			aRSComposite2 camera canvas edges class equals: RSGroup;
		assertEmpty:
			aRSComposite2 camera canvas edges;
		assert:
			aRSComposite2 camera canvas clearBackground;
		assert:
			aRSComposite2 camera canvas numberOfFixedShapes equals: 0;
		assert:
			aRSComposite2 camera canvas encompassingRectangle class
			equals: Rectangle;
		assert:
			aRSComposite2 camera canvas announcer class
			equals: Announcer;
		assert:
			aRSComposite2 camera canvas camera class equals: RSCamera;
		assert:
			aRSComposite2 camera canvas basicRectangle class
			equals: Rectangle;
		assert:
			aRSComposite2 camera canvas morph isNil;
		assert:
			aRSComposite2 camera canvas nodes class equals: RSGroup;
		assert:
			aRSComposite2 camera canvas nodes size equals: 1;
		deny:
			aRSComposite2 camera canvas isShape;
		assert:
			aRSComposite2 camera position equals: 0 @ 0;
		assert:
			aRSComposite2 camera scale equals: 1.0000001
]
