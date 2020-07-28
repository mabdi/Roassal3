Class {
	#name : #RSSequentialAnimationTest391,
	#superclass : #RSSequentialAnimationTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSSequentialAnimationTest391 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSSequentialAnimationTest391 >> testStepEvent_amp_L13 [
	<madeBySmallAmp>
	| value loop animation aRSSequentialAnimation |
	canvas := RSCanvas new.
	value := nil.
	loop := 0.
	aRSSequentialAnimation := RSSequentialAnimation new.
	animation := aRSSequentialAnimation
		loops: 3;
		add:
			(RSTransitionAnimation new
				duration: 200 milliSeconds;
				onStepDo: [ :t | value := t ]);
		when: RSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	canvas addAnimation: animation.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSSequentialAnimationTest391 >> testStepEvent_amp_L16 [
	<madeBySmallAmp>
	| value loop animation aRSSequentialAnimation |
	canvas := RSCanvas new.
	value := nil.
	loop := 0.
	aRSSequentialAnimation := RSSequentialAnimation new.
	animation := aRSSequentialAnimation
		loops: 3;
		add:
			(RSTransitionAnimation new
				duration: SmallInteger maxVal milliSeconds;
				onStepDo: [ :t | value := t ]);
		when: RSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	canvas addAnimation: animation.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSSequentialAnimationTest391 >> testStepEvent_amp_L17 [
	<madeBySmallAmp>
	| value loop animation aRSSequentialAnimation |
	canvas := RSCanvas new.
	value := nil.
	loop := 0.
	aRSSequentialAnimation := RSSequentialAnimation new.
	animation := aRSSequentialAnimation
		loops: 3;
		add:
			(RSTransitionAnimation new
				duration: SmallInteger minVal milliSeconds;
				onStepDo: [ :t | value := t ]);
		when: RSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	canvas addAnimation: animation.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSSequentialAnimationTest391 >> testStepEvent_amp_L28 [
	<madeBySmallAmp>
	| value loop animation aRSSequentialAnimation |
	canvas := RSCanvas new.
	value := nil.
	loop := 0.
	aRSSequentialAnimation := RSSequentialAnimation new.
	animation := aRSSequentialAnimation
		loops: 3;
		add:
			(RSTransitionAnimation new
				duration: 100 milliSeconds;
				onStepDo: [ :t | value := t ]);
		when: RSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	canvas addAnimation: animation.
	self
		should: [ self runAnimation: animation threshold: 250 ]
		raise: Error
]

{ #category : #'as yet unclassified' }
RSSequentialAnimationTest391 >> testStepEvent_amp_L6 [
	<madeBySmallAmp>
	| value loop animation aRSSequentialAnimation |
	canvas := RSCanvas new.
	value := nil.
	loop := 0.
	aRSSequentialAnimation := RSSequentialAnimation new.
	animation := aRSSequentialAnimation
		loops: 6;
		add:
			(RSTransitionAnimation new
				duration: 100 milliSeconds;
				onStepDo: [ :t | value := t ]);
		when: RSAnimationLoopEvent do: [ :evt | loop := loop + 1 ].
	canvas addAnimation: animation.
	self
		should: [ self runAnimation: animation threshold: 500 ]
		raise: Error
]
