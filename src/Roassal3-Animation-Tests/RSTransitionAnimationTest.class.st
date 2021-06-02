"
I have test for animation in trachel
"
Class {
	#name : #RSTransitionAnimationTest,
	#superclass : #RSAnimationTest,
	#category : #'Roassal3-Animation-Tests'
}

{ #category : #tests }
RSTransitionAnimationTest >> testDuration [
	| animation |
	animation := RSTransitionAnimation new duration: 2 seconds.
	self assert: animation duration equals: 2 seconds.
	self assert: animation allDuration equals: 2 seconds.
	animation := RSTransitionAnimation new
		duration: 2 seconds;
		loops: 5.
	self assert: animation duration equals: 2 seconds.
	self assert: animation allDuration equals: 10 seconds.
	animation := RSTransitionAnimation new
		duration: 2 seconds;
		repeat.
	self assert: animation duration equals: 2 seconds.
	self assert: animation allDuration equals: 2 seconds
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest >> testDuration_amp [
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSTransitionAnimation#progress#55#100'>
	<madeBySmallAmp>
	| animation aRSTransitionAnimation1 aRSTransitionAnimation2 aRSTransitionAnimation3 |
	aRSTransitionAnimation1 := RSTransitionAnimation new.
	self
		assert:
			aRSTransitionAnimation1 class equals: RSTransitionAnimation;
		assert:
			aRSTransitionAnimation1 stepAction class
			equals: BlockClosure;
		assert:
			aRSTransitionAnimation1 stepAction sourceNode formattedCode
			equals: ''.
	animation := aRSTransitionAnimation1 duration: 2 seconds.
	self
		assert:
			aRSTransitionAnimation1 class equals: RSTransitionAnimation;
		assert:
			aRSTransitionAnimation1 progress class equals: SmallFloat64.
	aRSTransitionAnimation2 := RSTransitionAnimation new.
	animation := aRSTransitionAnimation2
		duration: 2 seconds;
		loops: 5.
	aRSTransitionAnimation3 := RSTransitionAnimation new.
	animation := aRSTransitionAnimation3
		duration: 2 seconds;
		repeat
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest >> testDuration_amp_A76 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSTransitionAnimation#progressValue:#136#160'>
	<madeBySmallAmp>
	| animation aRSTransitionAnimation anUndefinedObject aNumber |
	animation := RSTransitionAnimation new duration: 2 seconds.
	aRSTransitionAnimation := RSTransitionAnimation new.
	aNumber := aRSTransitionAnimation
		duration: 2 seconds;
		loops: 5;
		progressValue: 0.25.
	self assert:
		aNumber asString equals: 'a SAObservationPrimitive'.
	anUndefinedObject := RSTransitionAnimation new.
	animation := anUndefinedObject
		duration: 2 seconds;
		repeat
]

{ #category : #tests }
RSTransitionAnimationTest >> testStep [
	| value |
	value := 0.
	canvas newAnimation onStepDo: [ :t | value := value + 1 ].
	self assert: value equals: 0.
	canvas playAnimations.
	self assert: value equals: 1
]

{ #category : #tests }
RSTransitionAnimationTest >> testStepEvent [
	| value loop animation |
	value := nil.
	loop := 0.
	animation := canvas newAnimation
		duration: 100 milliSeconds;
		loops: 3;
		onStepDo: [ :t | value := t ];
		when: RSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	self assert: value isNil.
	self assert: loop equals: 0.
	self assert: animation endTime isNil.
	self runAnimation: animation threshold: 3000.
	self deny: value isNil.
	self assert: loop equals: 3.
	self deny: animation endTime isNil.
	self deny: animation isRunning
]

{ #category : #tests }
RSTransitionAnimationTest >> testStepReset [
	| animation |
	animation := canvas newAnimation duration: 100 milliSeconds.
	self runAnimation: animation threshold: 500.
	self deny: animation isRunning.
	self assert: animation currentLoop equals: nil.
	self assert: canvas animations size equals: 0.
	animation
		reset;
		duration: 100 milliSeconds.
	canvas addAnimation: animation.
	self assert: canvas animations size equals: 1.
	self runAnimation: animation threshold: 500
]

{ #category : #'as yet unclassified' }
RSTransitionAnimationTest >> testStepReset_amp_D2 [
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSTransitionAnimation#progress#56#83'>
	<madeBySmallAmp>
	| animation aRSTransitionAnimation |
	aRSTransitionAnimation := canvas newAnimation.
	animation := aRSTransitionAnimation duration: 100 milliSeconds.
	self
		assert:
			aRSTransitionAnimation class equals: RSTransitionAnimation;
		assert:
			aRSTransitionAnimation progress class equals: SmallFloat64;
		runAnimation: animation threshold: 500.
	animation := animation
		reset;
		duration: 100 milliSeconds;
		reset;
		duration: 100 milliSeconds
]

{ #category : #tests }
RSTransitionAnimationTest >> testTransitionAnimationCreation [
	self
		createAnimationWith: [ canvas newAnimation ]
		animationClass: RSTransitionAnimation
]
