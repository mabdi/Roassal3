Class {
	#name : #RSCameraTest154,
	#superclass : #RSCameraTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSCameraTest154 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSCameraTest154 >> testPosition_amp [
	"I test correctness of: 

- `^ canvas` in method: `RSCamera >> #canvas`

- `^ scale` in method: `RSCamera >> #scale` when {#scale->1.0000001}

"

	<madeBySmallAmp>
	| c aRSCamera |
	c := RSCanvas new.
	aRSCamera := c
		add: (RSEllipse new size: 30);
		camera.
	self
		assert:
			aRSCamera canvas class equals: RSCanvas;
		assert:
			aRSCamera scale equals: 1.0000001.
	aRSCamera translateBy: 25 @ 15
]

{ #category : #'as yet unclassified' }
RSCameraTest154 >> testPosition_amp_A3 [
	"I test correctness of: 

- `scale = aNumber` in method: `RSCamera >> #scale:` when {#scale->1.0000001. #aNumber->15.0}

"

	<madeBySmallAmp>
	| c aRSCamera |
	c := RSCanvas new.
	aRSCamera := c
		add: (RSEllipse new size: 30);
		camera.
	aRSCamera
		translateBy: 25 @ 15;
		zoomToFit.
	self assert:
		aRSCamera scale equals: 15.0
]
