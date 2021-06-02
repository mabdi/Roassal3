"
A TSGroupTest is a test class for testing the behavior of TSGroup
"
Class {
	#name : #RSGroupTest,
	#superclass : #RSTest,
	#category : #'Roassal3-Shapes-Tests'
}

{ #category : #tests }
RSGroupTest >> testAddShape [
	| g |
	g := RSGroup new.
	g add: RSBox new.
]

{ #category : #'as yet unclassified' }
RSGroupTest >> testAddShape_amp_A12 [
	"I test correctness of: 

- `^ RSComposite new
	model: model;
	shapes: self yourself` in method: `RSGroup >> #asShapeFor:`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSGroup#asShapeFor:#660#719'>
	<madeBySmallAmp>
	| g aRSComposite |
	g := RSGroup new.
	aRSComposite := g asShape.
	self assert:
		aRSComposite class equals: RSComposite.
	g add: RSBox new
]

{ #category : #'as yet unclassified' }
RSGroupTest >> testAddShape_amp_A21 [
	"I test correctness of: 

- `^ self extent x` in method: `RSGroup >> #width`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSGroup#width#9#23'>
	<madeBySmallAmp>
	| g aNumber |
	g := RSGroup new.
	aNumber := g
		add: RSBox new;
		width.
	self assert: aNumber equals: 10.0
]

{ #category : #'as yet unclassified' }
RSGroupTest >> testAddShape_amp_A25 [
	"I test correctness of: 

- `^ t` in method: `RSGroup >> #shapesFromModel:` when {#t->nil}

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSGroup#shapesFromModel:#906#908'>
	<madeBySmallAmp>
	| g aCollection |
	g := RSGroup new.
	aCollection := g
		add: RSBox new;
		shapesFromModel: 1.
	self assertEmpty: aCollection
]

{ #category : #tests }
RSGroupTest >> testAsGroup [
	| t |
	t := #(1 2 3) asGroup.
	self assert: t asArray equals: #(1 2 3).
	self assert: t class equals: RSGroup
]

{ #category : #tests }
RSGroupTest >> testCache01 [

	| shapes shape |
	shapes := (1 to: 5) collect: [:n | RSBox new model: n; yourself ] as: RSGroup.
	self assert: shapes class equals: RSGroup.
	self assert: shapes shapeFromModelCache isEmpty.
	
	shape := shapes shapeFromModel: 2.
	self assert: shape class equals: RSBox.
	self assert: shape model equals: 2.
	
	self deny: shapes shapeFromModelCache isEmpty.
]

{ #category : #'as yet unclassified' }
RSGroupTest >> testCache01_amp_A5_A3_A35 [
	"I test correctness of: 

- `^ self extent y` in method: `RSGroup >> #height`

"

	<smallAmpCoveres: 'ReplaceDoBlockWithEmptyBlockOperator#RSGroup#pushFront#12#30'>
	<madeBySmallAmp>
	| shapes shape aNumber |
	shapes := (1 to: 5)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ]
		as: RSGroup.
	aNumber := shapes
		shapeFromModel: 2;
		height.
	self
		assert: aNumber equals: 10.0;
		should: [ shapes pushFront ] raise: MessageNotUnderstood
]

{ #category : #tests }
RSGroupTest >> testCache02 [

	| shapes s sps |
	shapes := #(1 1) collect: [:n | RSBox new model: n; yourself] as: RSGroup.
	
	s := shapes shapeFromModel: 1.
	self assert: s class equals: RSBox.
	self assert: s model equals: 1.
	
	sps := shapes shapesFromModel: 1.
	self assert: sps class equals: RSGroup.
	self assert: sps size equals: 2
]

{ #category : #'as yet unclassified' }
RSGroupTest >> testCache02_amp_A14 [
	"I test correctness of: 

- `^ self encompassingRectangle center` in method: `RSGroup >> #position`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSGroup#position#11#45'>
	<madeBySmallAmp>
	| shapes s sps aPoint |
	shapes := #(1 1)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ]
		as: RSGroup.
	aPoint := shapes
		shapeFromModel: 1;
		position.
	self assert: aPoint equals: 0 @ 0.
	sps := shapes shapesFromModel: 1
]

{ #category : #'as yet unclassified' }
RSGroupTest >> testCache02_amp_A30 [
	<smallAmpCoveres: 'ReplaceDoBlockWithEmptyBlockOperator#RSGroup#pushBack#63#96'>
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
	self should: [ shapes pushBack ] raise: AssertionFailure
]

{ #category : #tests }
RSGroupTest >> testCache03 [

	| shapes shape |
	shapes := #(1 1) collect: [:n | RSBox new model: n; yourself] as: RSGroup.
	
	shapes shapesFromModel: 1.
	shape := shapes shapeFromModel: 1.
	self assert: shape class equals: RSBox.
	self assert: shape model equals: 1.
	
]

{ #category : #tests }
RSGroupTest >> testCache04 [

	| es |
	es := #(1) collect: [:n | RSBox new model: n; yourself] as: RSGroup.
	self assert: (es shapesFromModel: 1) size equals: 1.
	
	es addAll: (#(1) collect: [:n | RSBox new model: n; yourself] as: RSGroup). 
	self assert: (es shapesFromModel: 1) size equals: 2.
]

{ #category : #tests }
RSGroupTest >> testDrawGroup [
	| g c com |
	c := RSCanvas new.
	g := RSGroup new.
	g add: RSBox new.
	com := RSComposite new
		shapes: g.
	c addShape: com.
	self assert: c numberOfShapes equals: 1.
	c createMorph drawOnMockCanvas.
]

{ #category : #tests }
RSGroupTest >> testModels [
	| g |
	g := RSGroup new.
	g add: RSBox new.
	g add: RSBox new.
	g add: RSBox new.

	self assert: (g allSatisfy: [ :s | s model isNil ]).
	g models: #('hello' 'world' 'bonjour').
	
	self assert: (g collect: [ :s | s model ]) asArray equals: #('hello' 'world' 'bonjour')
	 
]

{ #category : #tests }
RSGroupTest >> testShapeFromModel [
	| group |
	group := (1 to: 5) collect: [:n | RSBox new model: n; yourself] as: RSGroup.
	self assert: (group shapeFromModel: 1) equals: group first.
	self assert: (group shapeFromModel: 5) equals: group last.

]

{ #category : #tests }
RSGroupTest >> testTranslucent [
	| g |
	g := RSGroup new.
	g add: RSBox new.
	g add: RSBox new.
	g add: RSBox new.

	self assert: (g allSatisfy: [ :s | s color alpha = 1 ]).
	g translucent.
	self assert: (g allSatisfy: [ :s | s color alpha < 1 ]).
	 
]
