Class {
	#name : #RSCameraTest,
	#superclass : #RSTest,
	#category : #'Roassal3-Global-Tests-Core'
}

{ #category : #tests }
RSCameraTest >> testPosition [
	| c |
	c := RSCanvas new.
	c add: (RSEllipse new size: 30).
	c camera translateBy: 25 @ 15.
	self assert: c camera position equals: 25 @ 15
]

{ #category : #'as yet unclassified' }
RSCameraTest >> testPosition_amp [
	<smallAmpCoveres: 'RemoveCaretOperator#RSCamera#canvas#9#16'>
	<madeBySmallAmp>
	| c aRSCamera |
	c := RSCanvas new.
	aRSCamera := c
		add: (RSEllipse new size: 30);
		camera.
	self
		assert:
			aRSCamera class equals: RSCamera;
		assert:
			aRSCamera canvas class equals: RSCanvas;
		assert:
			aRSCamera canvas deepNodes class equals: OrderedCollection;
		assert:
			aRSCamera canvas deepNodes size equals: 1;
		assert: (aRSCamera canvas deepNodes at: 1) class equals: RSEllipse;
		assert:
			aRSCamera canvas extent equals: 500 @ 500;
		assert:
			aRSCamera canvas numberOfEdges equals: 0;
		assert:
			aRSCamera canvas animations class equals: OrderedCollection;
		assertEmpty:
			aRSCamera canvas animations;
		assert:
			aRSCamera canvas lines class equals: RSGroup;
		assertEmpty:
			aRSCamera canvas lines;
		assert:
			aRSCamera canvas color class equals: Color;
		assert:
			aRSCamera canvas color hsvSaturation equals: 0.0;
		assert:
			aRSCamera canvas color alpha equals: 1.0;
		assert:
			aRSCamera canvas color red equals: 1.0;
		assert:
			aRSCamera canvas color brightness equals: 1.0;
		assert:
			aRSCamera canvas color name equals: #white;
		assert:
			aRSCamera canvas color hue equals: 0.0;
		assert:
			aRSCamera canvas color beOpaque class equals: Color;
		assert:
			aRSCamera canvas color green equals: 1.0;
		assert:
			aRSCamera canvas color chroma equals: 0.0;
		assert:
			aRSCamera canvas color lightness equals: 1.0;
		assert:
			aRSCamera canvas color hslSaturation equals: 0.0;
		assert:
			aRSCamera canvas color saturation equals: 0.0;
		assert:
			aRSCamera canvas color luminance equals: 1.0;
		assert:
			aRSCamera canvas color blue equals: 1.0;
		assert:
			aRSCamera canvas numberOfNodes equals: 1;
		assert:
			aRSCamera canvas shapes class equals: RSGroup;
		assert:
			aRSCamera canvas shapes size equals: 1;
		assert: (aRSCamera canvas shapes at: 1) class equals: RSEllipse;
		assert:
			aRSCamera canvas numberOfShapes equals: 1;
		deny:
			aRSCamera canvas showRectangles;
		assert:
			aRSCamera canvas visibleRectangle class equals: Rectangle;
		assert:
			aRSCamera canvas visibleRectangle top
			equals: -249.99997500000248;
		assert:
			aRSCamera canvas visibleRectangle extent class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle hasPositiveExtent;
		assert:
			aRSCamera canvas visibleRectangle area
			equals: 249999.95000000746;
		deny:
			aRSCamera canvas visibleRectangle isTall;
		assert:
			aRSCamera canvas visibleRectangle aboveCenter class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle bottomCenter class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle corner class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle left
			equals: -249.99997500000248;
		assert:
			aRSCamera canvas visibleRectangle origin class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle width
			equals: 499.99995000000496;
		assert:
			aRSCamera canvas visibleRectangle right
			equals: 249.99997500000248;
		deny:
			aRSCamera canvas visibleRectangle isZero;
		deny:
			aRSCamera canvas visibleRectangle isWide;
		assert:
			aRSCamera canvas visibleRectangle innerCorners class
			equals: Array;
		assert:
			aRSCamera canvas visibleRectangle innerCorners size
			equals: 4;
		assert:
			aRSCamera canvas visibleRectangle topCenter class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle topRight class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle bottomRight class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle center class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle topLeft class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle bottom
			equals: 249.99997500000248;
		assert:
			aRSCamera canvas visibleRectangle floatCenter class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle leftCenter class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle isRectangle;
		assert:
			aRSCamera canvas visibleRectangle bottomLeft class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle corners class
			equals: Array;
		assert:
			aRSCamera canvas visibleRectangle corners size equals: 4;
		assert:
			aRSCamera canvas visibleRectangle rightCenter class
			equals: Point;
		assert:
			aRSCamera canvas visibleRectangle height
			equals: 499.99995000000496;
		assert:
			aRSCamera canvas numberOfDeepNodes equals: 1;
		assert:
			aRSCamera canvas fixedShapes class equals: RSGroup;
		assertEmpty:
			aRSCamera canvas fixedShapes;
		assert:
			aRSCamera canvas edges class equals: RSGroup;
		assertEmpty:
			aRSCamera canvas edges;
		assert:
			aRSCamera canvas clearBackground;
		assert:
			aRSCamera canvas numberOfFixedShapes equals: 0;
		assert:
			aRSCamera canvas encompassingRectangle class
			equals: Rectangle;
		assert:
			aRSCamera canvas encompassingRectangle top equals: -15.0;
		assert:
			aRSCamera canvas encompassingRectangle extent class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle hasPositiveExtent;
		assert:
			aRSCamera canvas encompassingRectangle area equals: 900.0;
		deny:
			aRSCamera canvas encompassingRectangle isTall;
		assert:
			aRSCamera canvas encompassingRectangle aboveCenter class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle bottomCenter class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle corner class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle left equals: -15.0;
		assert:
			aRSCamera canvas encompassingRectangle origin class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle width equals: 30.0;
		assert:
			aRSCamera canvas encompassingRectangle right equals: 15.0;
		deny:
			aRSCamera canvas encompassingRectangle isZero;
		deny:
			aRSCamera canvas encompassingRectangle isWide;
		assert:
			aRSCamera canvas encompassingRectangle innerCorners class
			equals: Array;
		assert:
			aRSCamera canvas encompassingRectangle innerCorners size
			equals: 4;
		assert:
			aRSCamera canvas encompassingRectangle topCenter class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle topRight class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle bottomRight class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle center class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle topLeft class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle bottom equals: 15.0;
		assert:
			aRSCamera canvas encompassingRectangle floatCenter class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle leftCenter class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle isRectangle;
		assert:
			aRSCamera canvas encompassingRectangle bottomLeft class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle corners class
			equals: Array;
		assert:
			aRSCamera canvas encompassingRectangle corners size
			equals: 4;
		assert:
			aRSCamera canvas encompassingRectangle rightCenter class
			equals: Point;
		assert:
			aRSCamera canvas encompassingRectangle height equals: 30.0;
		assert:
			aRSCamera canvas announcer class equals: Announcer;
		assert:
			aRSCamera canvas announcer subscriptions class
			equals: SubscriptionRegistry;
		assert:
			aRSCamera canvas camera class equals: RSCamera;
		assert:
			aRSCamera canvas camera canvas class equals: RSCanvas;
		assert:
			aRSCamera canvas camera position class equals: Point;
		assert:
			aRSCamera canvas camera scale equals: 1.0000001;
		assert:
			aRSCamera canvas basicRectangle class equals: Rectangle;
		assert:
			aRSCamera canvas basicRectangle top equals: 0;
		assert:
			aRSCamera canvas basicRectangle extent class equals: Point;
		assert:
			aRSCamera canvas basicRectangle hasPositiveExtent;
		assert:
			aRSCamera canvas basicRectangle area equals: 250000;
		deny:
			aRSCamera canvas basicRectangle isTall;
		assert:
			aRSCamera canvas basicRectangle aboveCenter class
			equals: Point;
		assert:
			aRSCamera canvas basicRectangle bottomCenter class
			equals: Point;
		assert:
			aRSCamera canvas basicRectangle corner class equals: Point;
		assert:
			aRSCamera canvas basicRectangle left equals: 0;
		assert:
			aRSCamera canvas basicRectangle origin class equals: Point;
		assert:
			aRSCamera canvas basicRectangle width equals: 500;
		assert:
			aRSCamera canvas basicRectangle right equals: 500;
		deny:
			aRSCamera canvas basicRectangle isZero;
		deny:
			aRSCamera canvas basicRectangle isWide;
		assert:
			aRSCamera canvas basicRectangle innerCorners class
			equals: Array;
		assert:
			aRSCamera canvas basicRectangle innerCorners size equals: 4;
		assert:
			aRSCamera canvas basicRectangle topCenter class
			equals: Point;
		assert:
			aRSCamera canvas basicRectangle topRight class
			equals: Point;
		assert:
			aRSCamera canvas basicRectangle bottomRight class
			equals: Point;
		assert:
			aRSCamera canvas basicRectangle center class equals: Point;
		assert:
			aRSCamera canvas basicRectangle topLeft class equals: Point;
		assert:
			aRSCamera canvas basicRectangle bottom equals: 500;
		assert:
			aRSCamera canvas basicRectangle floatCenter class
			equals: Point;
		assert:
			aRSCamera canvas basicRectangle leftCenter class
			equals: Point;
		assert:
			aRSCamera canvas basicRectangle isRectangle;
		assert:
			aRSCamera canvas basicRectangle bottomLeft class
			equals: Point;
		assert:
			aRSCamera canvas basicRectangle corners class equals: Array;
		assert:
			aRSCamera canvas basicRectangle corners size equals: 4;
		assert:
			aRSCamera canvas basicRectangle rightCenter class
			equals: Point;
		assert:
			aRSCamera canvas basicRectangle height equals: 500;
		assert:
			aRSCamera canvas morph isNil;
		assert:
			aRSCamera canvas nodes class equals: RSGroup;
		assert:
			aRSCamera canvas nodes size equals: 1;
		assert: (aRSCamera canvas nodes at: 1) class equals: RSEllipse;
		deny:
			aRSCamera canvas isShape.
	aRSCamera translateBy: 25 @ 15
]

{ #category : #tests }
RSCameraTest >> testZoomToFit [
	| c c2 |
	c := RSCanvas new.
	c add: (RSEllipse new size: 30).
	c2 := c camera translateBy: 25 @ 15.
	c2 zoomToFit.
	self assert: c2 scale equals: 15.0
]
