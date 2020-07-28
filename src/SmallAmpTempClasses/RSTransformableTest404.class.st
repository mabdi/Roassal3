Class {
	#name : #RSTransformableTest404,
	#superclass : #RSTransformableTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSTransformableTest404 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSTransformableTest404 >> testCornerDirections_amp_A41 [
	"I test correctness of: 

- `^ RSBitmap new
	form: (self iconNamed: #smallUpdate);
	scaleBy: 2;
	when: RSMouseEnter send: #showRotationCursor to: self;
	when: RSMouseLeave send: #removeCursor to: self;
	yourself` in method: `RSTransformable >> #rotationShape`

"

	<madeBySmallAmp>
	| interaction base new aRSBitmap |
	interaction := RSTransformable new.
	base := 20 @ 20 corner: 100 @ 100.
	aRSBitmap := interaction
		bottomRight: 10 @ 120 rectangle: base;
		bottomCenter: 10 @ 120 rectangle: base;
		bottomLeft: 0 @ 120 rectangle: base;
		topLeft: 0 @ 0 rectangle: base;
		topCenter: 50 @ 0 rectangle: base;
		topRight: 120 @ 0 rectangle: base;
		leftCenter: 0 @ 120 rectangle: base;
		rotationShape.
	self assert:
		aRSBitmap class equals: RSBitmap.
	new := interaction rightCenter: 120 @ 120 rectangle: base
]
