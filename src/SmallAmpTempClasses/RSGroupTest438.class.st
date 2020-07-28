Class {
	#name : #RSGroupTest438,
	#superclass : #RSGroupTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSGroupTest438 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSGroupTest438 >> testAddShape_amp_A12 [
	"I test correctness of: 

- `^ RSComposite new
	model: model;
	shapes: self yourself` in method: `RSGroup >> #asShapeFor:`

"

	<madeBySmallAmp>
	| g aRSComposite |
	g := RSGroup new.
	aRSComposite := g
		add: RSBox new;
		asShape.
	self assert:
		aRSComposite class equals: RSComposite
]

{ #category : #'as yet unclassified' }
RSGroupTest438 >> testAddShape_amp_A6 [
	"I test correctness of: 

- `^ self extent y` in method: `RSGroup >> #height`

"

	<madeBySmallAmp>
	| g aNumber |
	g := RSGroup new.
	aNumber := g
		add: RSBox new;
		height.
	self assert: aNumber equals: 0.0
]

{ #category : #'as yet unclassified' }
RSGroupTest438 >> testCache02_amp_A13 [
	<madeBySmallAmp>
	| shapes s sps |
	shapes := #(1 1)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ]
		as: RSGroup.
	s := shapes shapeFromModel: 1.
	self should: [ shapes pushFront ] raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSGroupTest438 >> testCache02_amp_A16 [
	"I test correctness of: 

- `^ self extent x` in method: `RSGroup >> #width`

"

	<madeBySmallAmp>
	| shapes s sps aNumber |
	shapes := #(1 1)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ]
		as: RSGroup.
	aNumber := shapes
		shapeFromModel: 1;
		shapesFromModel: 1;
		width.
	self assert: aNumber equals: 0.0
]

{ #category : #'as yet unclassified' }
RSGroupTest438 >> testCache02_amp_A27 [
	<madeBySmallAmp>
	| shapes s sps |
	shapes := #(1 1)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ]
		as: RSGroup.
	sps := shapes
		shapeFromModel: 1;
		shapesFromModel: 1.
	self should: [ shapes pushFront ] raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSGroupTest438 >> testCache02_amp_A5 [
	<madeBySmallAmp>
	| shapes s sps |
	shapes := #(1 1)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ]
		as: RSGroup.
	s := shapes shapeFromModel: 1.
	self should: [ shapes pushBack ] raise: AssertionFailure
]

{ #category : #'as yet unclassified' }
RSGroupTest438 >> testCache02_amp_L1 [
	"I test correctness of: 

- `^ t` in method: `RSGroup >> #shapesFromModel:` when {#t->nil}

"

	<madeBySmallAmp>
	| shapes s sps |
	shapes := #(nil nil)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ]
		as: RSGroup.
	sps := shapes
		shapeFromModel: 1;
		shapesFromModel: 1.
	self assertEmpty: sps
]

{ #category : #'as yet unclassified' }
RSGroupTest438 >> testCache03_amp_A17 [
	"I test correctness of: 

- `anObject isNil
	ifTrue: [ 'KeyForNilObjects' ]
	ifFalse: [ anObject ]` in method: `RSGroup >> #shapesFromModel:` when {#anObject->1}

"

	<madeBySmallAmp>
	| shapes shape aCollection |
	shapes := #(1 1)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ]
		as: RSGroup.
	aCollection := shapes
		shapesFromModel: 1;
		shapeFromModel: 1;
		shapeFromModelCache.
	self assert:
		aCollection size equals: 1
]

{ #category : #'as yet unclassified' }
RSGroupTest438 >> testCache04_amp_A5 [
	<madeBySmallAmp>
	| es |
	es := #(1)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ]
		as: RSGroup.
	es
		addAll:
			(#(1)
				collect: [ :n | 
					RSBox new
						model: n;
						yourself ]
				as: RSGroup).
	self should: [ es pushBack ] raise: AssertionFailure
]

{ #category : #'as yet unclassified' }
RSGroupTest438 >> testDrawGroup_amp_A1 [
	"I test correctness of: 

- `^ self encompassingRectangle extent` in method: `RSGroup >> #extent`

"

	<madeBySmallAmp>
	| g c com aPoint |
	c := RSCanvas new.
	g := RSGroup new.
	aPoint := g
		add: RSBox new;
		extent.
	self assert:
		aPoint class equals: Point
]

{ #category : #'as yet unclassified' }
RSGroupTest438 >> testModels_amp_A14 [
	<madeBySmallAmp>
	| g |
	g := RSGroup new.
	g add: RSBox new.
	self should: [ g pushFront ] raise: MessageNotUnderstood
]
