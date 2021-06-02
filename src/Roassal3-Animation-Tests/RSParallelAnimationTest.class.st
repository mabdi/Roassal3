Class {
	#name : #RSParallelAnimationTest,
	#superclass : #RSAnimationTest,
	#category : #'Roassal3-Animation-Tests'
}

{ #category : #tests }
RSParallelAnimationTest >> testAddingAnimations [
	self addingInComposite: canvas parallelAnimation duration: 2 second
]

{ #category : #tests }
RSParallelAnimationTest >> testDuration [
	| animation |
	animation := RSParallelAnimation new.
	self assert: animation duration equals: 0 seconds.
	animation := RSParallelAnimation new
		add: (RSTransitionAnimation new duration: 2 seconds);
		add: (RSTransitionAnimation new duration: 4 seconds);
		yourself.
	self assert: animation duration equals: 4 seconds.
	self assert: animation allDuration equals: 4 seconds.
	animation := RSParallelAnimation new
		loops: 5;
		add:
			(RSTransitionAnimation new
				duration: 2 seconds;
				loops: 5);
		add: (RSTransitionAnimation new duration: 4 seconds);
		yourself.
	self assert: animation duration equals: 10 seconds.
	self assert: animation allDuration equals: 50 seconds.
	animation := RSParallelAnimation new
		repeat;
		add:
			(RSTransitionAnimation new
				duration: 2 seconds;
				repeat);
		add: (RSTransitionAnimation new duration: 4 seconds);
		yourself.
	self assert: animation duration equals: 4 seconds.
	self assert: animation allDuration equals: 4 seconds
]

{ #category : #'as yet unclassified' }
RSParallelAnimationTest >> testDuration_amp_A73 [
	<smallAmpCoveres: 'ReplaceDoBlockWithEmptyBlockOperator#RSParallelAnimation#start#22#77'>
	<madeBySmallAmp>
	| animation aRSParallelAnimation1 aRSParallelAnimation2 aRSParallelAnimation3 aRSParallelAnimation4 |
	aRSParallelAnimation1 := RSParallelAnimation
		new;
		new.
	animation := aRSParallelAnimation1
		add: (RSTransitionAnimation new duration: 2 seconds);
		add: (RSTransitionAnimation new duration: 4 seconds);
		yourself.
	aRSParallelAnimation2 := RSParallelAnimation new.
	aRSParallelAnimation3 := aRSParallelAnimation2
		loops: 5;
		add:
			(RSTransitionAnimation new
				duration: 2 seconds;
				loops: 5);
		add: (RSTransitionAnimation new duration: 4 seconds).
	aRSParallelAnimation3 start.
	self
		assert:
			aRSParallelAnimation3 class equals: RSParallelAnimation;
		assert:
			aRSParallelAnimation3 animations class
			equals: OrderedCollection;
		assert:
			aRSParallelAnimation3 animations size equals: 2;
		assert: (aRSParallelAnimation3 animations at: 1) class
			equals: RSTransitionAnimation;
		assert: (aRSParallelAnimation3 animations at: 1) progress class
			equals: SmallFloat64;
		assert: (aRSParallelAnimation3 animations at: 1) allDuration class
			equals: Duration;
		assert: (aRSParallelAnimation3 animations at: 1) to equals: 1;
		assert: (aRSParallelAnimation3 animations at: 1) duration class
			equals: Duration;
		assert: (aRSParallelAnimation3 animations at: 1) startPauseTime
			equals: 0;
		assert: (aRSParallelAnimation3 animations at: 1) isRunning;
		assert: (aRSParallelAnimation3 animations at: 1) isDelayDone;
		assert: (aRSParallelAnimation3 animations at: 1) delay isNil;
		assert: (aRSParallelAnimation3 animations at: 1) pauseTime
			equals: 0;
		deny: (aRSParallelAnimation3 animations at: 1) isPaused;
		assert: (aRSParallelAnimation3 animations at: 1) endPauseTime
			equals: 0;
		deny: (aRSParallelAnimation3 animations at: 1) isRepeating;
		assert: (aRSParallelAnimation3 animations at: 1) loops equals: 5;
		assert: (aRSParallelAnimation3 animations at: 1) currentLoop
			equals: 0;
		assert: (aRSParallelAnimation3 animations at: 1) scale class
			equals: NSLinearScale;
		assert: (aRSParallelAnimation3 animations at: 1) endTime isNil;
		assert: (aRSParallelAnimation3 animations at: 1) from equals: 0;
		assert: (aRSParallelAnimation3 animations at: 1) startLoopTime class
			equals: SmallInteger;
		assert: (aRSParallelAnimation3 animations at: 1) startTime class
			equals: SmallInteger;
		assert: (aRSParallelAnimation3 animations at: 1) canvas class
			equals: RSDefaultTimer;
		deny: (aRSParallelAnimation3 animations at: 1) hasCompleted;
		assert: (aRSParallelAnimation3 animations at: 1) announcer class
			equals: Announcer;
		assert: (aRSParallelAnimation3 animations at: 1) easing class
			equals: RSLinearInterpolator;
		assert: (aRSParallelAnimation3 animations at: 1) stepAction class
			equals: BlockClosure;
		assert:
			(aRSParallelAnimation3 animations at: 1) stepAction sourceNode
				formattedCode
			equals: '';
		assert: (aRSParallelAnimation3 animations at: 2) class
			equals: RSTransitionAnimation;
		assert: (aRSParallelAnimation3 animations at: 2) progress class
			equals: SmallFloat64;
		assert: (aRSParallelAnimation3 animations at: 2) allDuration class
			equals: Duration;
		assert: (aRSParallelAnimation3 animations at: 2) to equals: 1;
		assert: (aRSParallelAnimation3 animations at: 2) duration class
			equals: Duration;
		assert: (aRSParallelAnimation3 animations at: 2) startPauseTime
			equals: 0;
		assert: (aRSParallelAnimation3 animations at: 2) isRunning;
		assert: (aRSParallelAnimation3 animations at: 2) isDelayDone;
		assert: (aRSParallelAnimation3 animations at: 2) delay isNil;
		assert: (aRSParallelAnimation3 animations at: 2) pauseTime
			equals: 0;
		deny: (aRSParallelAnimation3 animations at: 2) isPaused;
		assert: (aRSParallelAnimation3 animations at: 2) endPauseTime
			equals: 0;
		deny: (aRSParallelAnimation3 animations at: 2) isRepeating;
		assert: (aRSParallelAnimation3 animations at: 2) loops equals: 1;
		assert: (aRSParallelAnimation3 animations at: 2) currentLoop
			equals: 0;
		assert: (aRSParallelAnimation3 animations at: 2) scale class
			equals: NSLinearScale;
		assert: (aRSParallelAnimation3 animations at: 2) endTime isNil;
		assert: (aRSParallelAnimation3 animations at: 2) from equals: 0;
		assert: (aRSParallelAnimation3 animations at: 2) startLoopTime class
			equals: SmallInteger;
		assert: (aRSParallelAnimation3 animations at: 2) startTime class
			equals: SmallInteger;
		assert: (aRSParallelAnimation3 animations at: 2) canvas class
			equals: RSDefaultTimer;
		deny: (aRSParallelAnimation3 animations at: 2) hasCompleted;
		assert: (aRSParallelAnimation3 animations at: 2) announcer class
			equals: Announcer;
		assert: (aRSParallelAnimation3 animations at: 2) easing class
			equals: RSLinearInterpolator;
		assert: (aRSParallelAnimation3 animations at: 2) stepAction class
			equals: BlockClosure;
		assert:
			(aRSParallelAnimation3 animations at: 2) stepAction sourceNode
				formattedCode
			equals: ''.
	animation := aRSParallelAnimation2 yourself.
	aRSParallelAnimation4 := RSParallelAnimation new.
	animation := aRSParallelAnimation4
		repeat;
		add:
			(RSTransitionAnimation new
				duration: 2 seconds;
				repeat);
		add: (RSTransitionAnimation new duration: 4 seconds);
		yourself
]

{ #category : #'as yet unclassified' }
RSParallelAnimationTest >> testDuration_amp_A73_A31 [
	<smallAmpCoveres: 'ReplaceDoBlockWithEmptyBlockOperator#RSParallelAnimation#pause#22#42'>
	<madeBySmallAmp>
	| animation aRSParallelAnimation1 aRSParallelAnimation2 aRSParallelAnimation3 |
	aRSParallelAnimation1 := RSParallelAnimation
		new;
		new.
	aRSParallelAnimation1
		add: (RSTransitionAnimation new duration: 2 seconds);
		add: (RSTransitionAnimation new duration: 4 seconds);
		yourself;
		pause.
	self
		assert:
			aRSParallelAnimation1 class equals: RSParallelAnimation;
		assert:
			aRSParallelAnimation1 animations class
			equals: OrderedCollection;
		assert:
			aRSParallelAnimation1 animations size equals: 2;
		assert: (aRSParallelAnimation1 animations at: 1) class
			equals: RSTransitionAnimation;
		assert: (aRSParallelAnimation1 animations at: 1) progress class
			equals: SmallFloat64;
		assert: (aRSParallelAnimation1 animations at: 1) allDuration class
			equals: Duration;
		assert: (aRSParallelAnimation1 animations at: 1) to equals: 1;
		assert: (aRSParallelAnimation1 animations at: 1) duration class
			equals: Duration;
		assert: (aRSParallelAnimation1 animations at: 1) startPauseTime class
			equals: SmallInteger;
		deny: (aRSParallelAnimation1 animations at: 1) isRunning;
		assert: (aRSParallelAnimation1 animations at: 1) isDelayDone;
		assert: (aRSParallelAnimation1 animations at: 1) delay isNil;
		assert: (aRSParallelAnimation1 animations at: 1) pauseTime
			equals: 0;
		assert: (aRSParallelAnimation1 animations at: 1) isPaused;
		assert: (aRSParallelAnimation1 animations at: 1) endPauseTime
			equals: 0;
		deny: (aRSParallelAnimation1 animations at: 1) isRepeating;
		assert: (aRSParallelAnimation1 animations at: 1) loops equals: 1;
		assert: (aRSParallelAnimation1 animations at: 1) currentLoop
			equals: 0;
		assert: (aRSParallelAnimation1 animations at: 1) scale class
			equals: NSLinearScale;
		assert: (aRSParallelAnimation1 animations at: 1) endTime isNil;
		assert: (aRSParallelAnimation1 animations at: 1) from equals: 0;
		assert: (aRSParallelAnimation1 animations at: 1) startLoopTime class
			equals: SmallInteger;
		assert: (aRSParallelAnimation1 animations at: 1) startTime isNil;
		assert: (aRSParallelAnimation1 animations at: 1) canvas class
			equals: RSDefaultTimer;
		deny: (aRSParallelAnimation1 animations at: 1) hasCompleted;
		assert: (aRSParallelAnimation1 animations at: 1) announcer class
			equals: Announcer;
		assert: (aRSParallelAnimation1 animations at: 1) easing class
			equals: RSLinearInterpolator;
		assert: (aRSParallelAnimation1 animations at: 1) stepAction class
			equals: BlockClosure;
		assert:
			(aRSParallelAnimation1 animations at: 1) stepAction sourceNode
				formattedCode
			equals: '';
		assert: (aRSParallelAnimation1 animations at: 2) class
			equals: RSTransitionAnimation;
		assert: (aRSParallelAnimation1 animations at: 2) progress class
			equals: SmallFloat64;
		assert: (aRSParallelAnimation1 animations at: 2) allDuration class
			equals: Duration;
		assert: (aRSParallelAnimation1 animations at: 2) to equals: 1;
		assert: (aRSParallelAnimation1 animations at: 2) duration class
			equals: Duration;
		assert: (aRSParallelAnimation1 animations at: 2) startPauseTime class
			equals: SmallInteger;
		deny: (aRSParallelAnimation1 animations at: 2) isRunning;
		assert: (aRSParallelAnimation1 animations at: 2) isDelayDone;
		assert: (aRSParallelAnimation1 animations at: 2) delay isNil;
		assert: (aRSParallelAnimation1 animations at: 2) pauseTime
			equals: 0;
		assert: (aRSParallelAnimation1 animations at: 2) isPaused;
		assert: (aRSParallelAnimation1 animations at: 2) endPauseTime
			equals: 0;
		deny: (aRSParallelAnimation1 animations at: 2) isRepeating;
		assert: (aRSParallelAnimation1 animations at: 2) loops equals: 1;
		assert: (aRSParallelAnimation1 animations at: 2) currentLoop
			equals: 0;
		assert: (aRSParallelAnimation1 animations at: 2) scale class
			equals: NSLinearScale;
		assert: (aRSParallelAnimation1 animations at: 2) endTime isNil;
		assert: (aRSParallelAnimation1 animations at: 2) from equals: 0;
		assert: (aRSParallelAnimation1 animations at: 2) startLoopTime class
			equals: SmallInteger;
		assert: (aRSParallelAnimation1 animations at: 2) startTime isNil;
		assert: (aRSParallelAnimation1 animations at: 2) canvas class
			equals: RSDefaultTimer;
		deny: (aRSParallelAnimation1 animations at: 2) hasCompleted;
		assert: (aRSParallelAnimation1 animations at: 2) announcer class
			equals: Announcer;
		assert: (aRSParallelAnimation1 animations at: 2) easing class
			equals: RSLinearInterpolator;
		assert: (aRSParallelAnimation1 animations at: 2) stepAction class
			equals: BlockClosure;
		assert:
			(aRSParallelAnimation1 animations at: 2) stepAction sourceNode
				formattedCode
			equals: ''.
	aRSParallelAnimation2 := RSParallelAnimation new.
	(aRSParallelAnimation2
		loops: 5;
		add:
			(RSTransitionAnimation new
				duration: 2 seconds;
				loops: 5);
		add: (RSTransitionAnimation new duration: 4 seconds)) start.
	animation := aRSParallelAnimation2 yourself.
	aRSParallelAnimation3 := RSParallelAnimation new.
	animation := aRSParallelAnimation3
		repeat;
		add:
			(RSTransitionAnimation new
				duration: 2 seconds;
				repeat);
		add: (RSTransitionAnimation new duration: 4 seconds);
		yourself
]

{ #category : #tests }
RSParallelAnimationTest >> testParallelAnimationCreation [
	self
		createAnimationWith: [ canvas parallelAnimationFrom: {} ]
		animationClass: RSParallelAnimation
]

{ #category : #tests }
RSParallelAnimationTest >> testStep [
	| value animation |
	value := 0.
	animation := RSParallelAnimation new
		add: (RSTransitionAnimation new onStepDo: [ :t | value := value + 1 ]);
		add: (RSTransitionAnimation new onStepDo: [ :t | value := value + 1 ]);
		yourself.
	canvas addAnimation: animation.
	self assert: value equals: 0.
	canvas playAnimations.
	self assert: value equals: 2
]

{ #category : #tests }
RSParallelAnimationTest >> testStepEvent [
	| value loop animation |
	value := nil.
	loop := 0.
	animation := RSParallelAnimation new
		loops: 3;
		add:
			(RSTransitionAnimation new
				duration: 100 milliSeconds;
				onStepDo: [ :t | value := t ]);
		when: RSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	canvas addAnimation: animation.
	self assert: value isNil.
	self assert: loop equals: 0.
	self assert: animation endTime isNil.
	self runAnimation: animation threshold: 500.
	self deny: value isNil.
	self assert: loop equals: 3.
	self deny: animation endTime isNil.
	self deny: animation isRunning
]

{ #category : #'as yet unclassified' }
RSParallelAnimationTest >> testStepEvent_amp_A22 [
	<smallAmpCoveres:
		'ReplaceIfTrueWithIfFalseMutantOperator#RSParallelAnimation#step#357#399'>
	<madeBySmallAmp>
	| value loop animation aRSParallelAnimation |
	value := nil.
	loop := 0.
	aRSParallelAnimation := RSParallelAnimation new.
	(aRSParallelAnimation
		loops: 3;
		add:
			(RSTransitionAnimation new
				duration: 100 milliSeconds;
				onStepDo: [ :t | value := t ])) step.
	animation := aRSParallelAnimation
		when: RSAnimationLoopEvent
		do: [ :evt | loop := loop + 1 ].
	canvas addAnimation: animation.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSParallelAnimationTest >> testStepEvent_amp_A33 [
	<smallAmpCoveres:
		'ReplaceIfTrueReceiverWithTrueOperator#RSParallelAnimation#step#357#399'>
	<madeBySmallAmp>
	| value loop animation aRSParallelAnimation |
	value := nil.
	loop := 0.
	aRSParallelAnimation := RSParallelAnimation new.
	animation := aRSParallelAnimation
		loops: 3;
		add:
			(RSTransitionAnimation new
				duration: 100 milliSeconds;
				onStepDo: [ :t | value := t ]);
		when: RSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	animation start.
	canvas addAnimation: animation.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: MessageNotUnderstood
]
