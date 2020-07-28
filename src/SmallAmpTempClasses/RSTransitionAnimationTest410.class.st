Class {
	#name : #RSTransitionAnimationTest410,
	#superclass : #RSTransitionAnimationTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testBasicCanvas_amp [
	"I test correctness of: 

- `^ scale range last` in method: `RSTransitionAnimation >> #to`

- `^ scale` in method: `RSTransitionAnimation >> #scale` when {#scale->0.85}

- `^ scale range first` in method: `RSTransitionAnimation >> #from`

"

	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation.
	self
		assert: animation to equals: 1;
		assert: animation scale class equals: NSLinearScale;
		assert: animation from equals: 0
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testDelay_amp [
	"I test correctness of: 

- `^ easing` in method: `RSTransitionAnimation >> #easing`

- `^ stepAction` in method: `RSTransitionAnimation >> #stepAction`

"

	<madeBySmallAmp>
	| animation aRSTransitionAnimation |
	aRSTransitionAnimation := canvas newAnimation.
	self
		assert:
			aRSTransitionAnimation easing class
			equals: RSLinearInterpolator;
		assert:
			aRSTransitionAnimation stepAction class
			equals: BlockClosure.
	animation := aRSTransitionAnimation delay: 100 milliSeconds
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testDelay_amp_A0 [
	"I test correctness of: 

- `progress > 1` in method: `RSTransitionAnimation >> #progress` when {#progress->0.0}

"

	<madeBySmallAmp>
	| animation aRSTransitionAnimation |
	aRSTransitionAnimation := canvas newAnimation.
	aRSTransitionAnimation
		delay: 100 milliSeconds;
		progress.
	self assert:
		aRSTransitionAnimation currentLoop equals: 1
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_A11 [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation duration: 100 milliSeconds.
	self runAnimation: animation threshold: 500.
	animation := animation
		reset;
		step;
		duration: 100 milliSeconds
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_A27 [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation duration: 100 milliSeconds.
	self runAnimation: animation threshold: 500.
	animation := animation
		reset;
		duration: 100 milliSeconds.
	animation initialize.
	canvas addAnimation: animation.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_A7 [
	<madeBySmallAmp>
	| animation aRSTransitionAnimation |
	aRSTransitionAnimation := canvas newAnimation.
	animation := aRSTransitionAnimation duration: 100 milliSeconds.
	aRSTransitionAnimation reset.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_A8 [
	<madeBySmallAmp>
	| animation aRSTransitionAnimation |
	aRSTransitionAnimation := canvas newAnimation.
	animation := aRSTransitionAnimation duration: 100 milliSeconds.
	aRSTransitionAnimation initialize.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_L11 [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation duration: 100 milliSeconds.
	self
		should: [ self runAnimation: animation threshold: 0 ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_L13 [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation duration: 100 milliSeconds.
	self
		should: [ self runAnimation: animation threshold: SmallInteger minVal ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_L16 [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation duration: 100 milliSeconds.
	self runAnimation: animation threshold: 500.
	animation := animation
		reset;
		duration: 200 milliSeconds
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_L19 [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation duration: 100 milliSeconds.
	self runAnimation: animation threshold: 500.
	animation := animation
		reset;
		duration: SmallInteger maxVal milliSeconds.
	canvas addAnimation: animation.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_L20 [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation duration: 100 milliSeconds.
	self runAnimation: animation threshold: 500.
	animation := animation
		reset;
		duration: SmallInteger minVal milliSeconds.
	canvas addAnimation: animation.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_L4 [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation duration: 0 milliSeconds.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: ZeroDivide
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_L5 [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation
		duration: SmallInteger maxVal milliSeconds.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest410 >> testStepReset_amp_L6 [
	<madeBySmallAmp>
	| animation |
	animation := canvas newAnimation
		duration: SmallInteger minVal milliSeconds.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]
