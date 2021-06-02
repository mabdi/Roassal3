Class {
	#name : #RSForceBasedLayoutTest,
	#superclass : #RSTest,
	#instVars : [
		'classes',
		'canvas'
	],
	#category : #'Roassal3-Global-Tests-Layouts'
}

{ #category : #running }
RSForceBasedLayoutTest >> setUp [
	super setUp.
	canvas := RSCanvas new.
	classes := Collection withAllSubclasses collect:[:cls |
		RSBox new model: cls; size: 10; yourself].
	RSLineBuilder line
		canvas: canvas;
		shapes: classes;
		color: (Color blue alpha: 0.5);
		connectFrom: #superclass to: #yourself.
	canvas addAll: classes.
]

{ #category : #tests }
RSForceBasedLayoutTest >> testAddNodesAndEdges [
	RSForceBasedLayout new
		start;
		addNodes: classes;
		addEdges: canvas edges;
		step
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testAddNodesAndEdges_amp_A160 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#charge#9#16'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout new.
	self
		assert:
			aRSForceBasedLayout class equals: RSForceBasedLayout;
		assert:
			aRSForceBasedLayout gravity equals: 0.1.
	aRSForceBasedLayout
		start;
		addNodes: classes;
		start.
	self
		should: [ aRSForceBasedLayout addEdges: canvas edges ]
		raise: NotFound
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testAddNodesAndEdges_amp_A25 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#initialLayout#16#30'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout new.
	self
		assert:
			aRSForceBasedLayout class equals: RSForceBasedLayout;
		assert:
			aRSForceBasedLayout gravity equals: 0.1;
		should: [ aRSForceBasedLayout runLayoutInJob ]
			raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testAddNodesAndEdges_amp_A357_A129_A29 [
	<smallAmpCoveres:
		'ReplaceIfTrueIfFalseReceiverWithFalseOperator#RSForceBasedLayout#runLayoutIn:#19#269'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout new.
	self
		should: [ aRSForceBasedLayout runLayoutIn: Job new ]
		raise: MessageNotUnderstood
]

{ #category : #tests }
RSForceBasedLayoutTest >> testAttributes [
	RSForceBasedLayout new
		length: 100;
		charge: -300;
		center: 200 @ 200;
		on: classes
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testAttributes_amp [
	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSForceBasedLayout#stepNodeRepulsion#169#310'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout new.
	aRSForceBasedLayout := aRSForceBasedLayout
		length: 100;
		charge: -300;
		center: 200 @ 200;
		on: classes.
	self
		assert:
			aRSForceBasedLayout class equals: RSForceBasedLayout;
		assert:
			aRSForceBasedLayout nodes class equals: OrderedCollection;
		assert:
			aRSForceBasedLayout nodes size equals: 102;
		assert:
			aRSForceBasedLayout currentQuadtree class
			equals: RSQuadTreeF;
		assert:
			aRSForceBasedLayout currentQuadtree charge
			equals: -153.11206597095662;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle class
			equals: Rectangle;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle top
			equals: -213.48817281723095;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle extent class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle hasPositiveExtent;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle area
			equals: 827027.2773430583;
		deny:
			aRSForceBasedLayout currentQuadtree rectangle isTall;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle aboveCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle bottomCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle corner class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle left
			equals: -233.82581747509838;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle origin class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle width
			equals: 909.4104009428627;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle right
			equals: 675.5845834677643;
		deny:
			aRSForceBasedLayout currentQuadtree rectangle isZero;
		deny:
			aRSForceBasedLayout currentQuadtree rectangle isWide;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle innerCorners class
			equals: Array;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle innerCorners size
			equals: 4;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle topCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle topRight class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle bottomRight class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle center class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle topLeft class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle bottom
			equals: 695.9222281256317;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle floatCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle leftCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle isRectangle;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle bottomLeft class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle corners class
			equals: Array;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle corners size
			equals: 4;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle rightCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle height
			equals: 909.4104009428627;
		assert:
			aRSForceBasedLayout currentQuadtree soleChild isNil;
		assert:
			aRSForceBasedLayout currentQuadtree centerOfCharge
			equals: 203.49438501283217 @ 206.39473511521783;
		deny:
			aRSForceBasedLayout currentQuadtree isLeaf
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testAttributes_amp_A251 [
	<smallAmpCoveres:
		'ReplaceEqualWithNotEqualOperator#RSForceBasedLayout#runLayoutSimply#18#31'>
	<madeBySmallAmp>
	| aRSForceBasedLayout1 aRSForceBasedLayout2 |
	aRSForceBasedLayout1 := RSForceBasedLayout new.
	aRSForceBasedLayout2 := aRSForceBasedLayout1
		length: 100;
		charge: -300;
		center: 200 @ 200.
	self
		should: [ aRSForceBasedLayout2 runLayoutSimply ]
		raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testAttributes_amp_L7 [
	<smallAmpCoveres:
		'ReplaceIfFalseReceiverWithFalseOperator#RSForceBasedLayout#repulse:from:#31#499'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout new.
	aRSForceBasedLayout := aRSForceBasedLayout
		length: -1152921504606846976;
		charge: -300;
		center: 200 @ 200;
		on: classes.
	self
		assert:
			aRSForceBasedLayout class equals: RSForceBasedLayout;
		assert:
			aRSForceBasedLayout nodes class equals: OrderedCollection;
		assert:
			aRSForceBasedLayout nodes size equals: 102;
		assert:
			aRSForceBasedLayout currentQuadtree class
			equals: RSQuadTreeF;
		assert:
			aRSForceBasedLayout currentQuadtree charge
			equals: -153.11206597095662;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle class
			equals: Rectangle;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle top
			equals: -5.457324299572872e15;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle extent class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle hasPositiveExtent;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle area
			equals: 1.3650581514081277e32;
		deny:
			aRSForceBasedLayout currentQuadtree rectangle isTall;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle aboveCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle bottomCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle corner class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle left
			equals: -5.736045305139771e15;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle origin class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle width
			equals: 1.1683570307950082e16;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle right
			equals: 5.947525002810311e15;
		deny:
			aRSForceBasedLayout currentQuadtree rectangle isZero;
		deny:
			aRSForceBasedLayout currentQuadtree rectangle isWide;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle innerCorners class
			equals: Array;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle innerCorners size
			equals: 4;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle topCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle topRight class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle bottomRight class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle center class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle topLeft class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle bottom
			equals: 6.22624600837721e15;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle floatCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle leftCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle isRectangle;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle bottomLeft class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle corners class
			equals: Array;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle corners size
			equals: 4;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle rightCenter class
			equals: Point;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle height
			equals: 1.1683570307950082e16;
		assert:
			aRSForceBasedLayout currentQuadtree soleChild isNil;
		assert:
			aRSForceBasedLayout currentQuadtree centerOfCharge
			equals: -2.797220979360428e14 @ 1.4284635696833103e14;
		deny:
			aRSForceBasedLayout currentQuadtree isLeaf
]

{ #category : #tests }
RSForceBasedLayoutTest >> testBasic [
	RSForceBasedLayout on: classes.
	RSForceBasedLayout new
		doNotUseProgressBar;
		on: classes
]
