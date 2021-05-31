"
I am test class for composite shapes in roassal
"
Class {
	#name : #RSCompositeTest,
	#superclass : #RSTest,
	#category : #'Roassal3-Shapes-Tests'
}

{ #category : #tests }
RSCompositeTest >> testAdjustChildren [

	| box circle g composite |
	box := RSBox new size: 20.
	circle := RSEllipse new size: 20.
	g := RSGroup new.
	g add: box; add: circle.
	composite := g asShape.
	self assert: composite extent equals: (20 @ 20). 

	RSVerticalLineLayout on: g.
	self assert: composite extent equals: (20 @ 20).
	composite adjustToChildren.
	self assert: composite extent equals: (20 @ 50).


]

{ #category : #'as yet unclassified' }
RSCompositeTest >> testAdjustChildren_amp_D2_R4 [
	"I test correctness of: 

- `children notNil and: [ children isNotEmpty ]` in method: `RSComposite >> #hasChildren` when {#children->nil}

"

	<smallAmpCoveres: 'ReplaceAndArgumentWithTrueOperator#RSComposite#hasChildren#16#59'>
	<madeBySmallAmp>
	| box circle g composite |
	box := RSBox new size: 20.
	circle := RSEllipse new size: 20.
	g := RSGroup new.
	RSGroup new.
	composite := g asShape.
	RSVerticalLineLayout on: g.
	composite adjustToChildren.
	self deny: composite hasChildren
]

{ #category : #tests }
RSCompositeTest >> testEdgesCanvasAndComposite01 [
	"basic case in a canvas"
	| c b1 b2 e1 |
	c := RSCanvas new.
	b1 := RSBox new position: 0 @ 0.
	b2 := RSBox new position: 100 @ 100.
	e1 := RSLine new from: b1; to: b2.
	c addAll: { b1. b2. e1 }.
	
	self assert: e1 startPoint equals: b1 position.
	self assert: e1 endPoint equals: b2 position.
]

{ #category : #tests }
RSCompositeTest >> testEdgesCanvasAndComposite02 [
	"basic example in composite"
	| c b1 b2 e1 |
	c := RSComposite new.
	b1 := RSBox new position: 0@0.
	b2 := RSBox new position: 100@100.
	e1 := RSLine new from: b1; to: b2.
	c shapes: { b1. b2. e1 }.
	
	self assert: e1 startPoint equals: b1 position.
	self assert: e1 endPoint equals: b2 position.
]

{ #category : #'as yet unclassified' }
RSCompositeTest >> testEdgesCanvasAndComposite02_amp_A22 [
	"I test correctness of: 

- `children notNil and: [ children isNotEmpty ]` in method: `RSComposite >> #hasChildren` when {#children->nil}

"

	<smallAmpCoveres: 'ReplaceAndArgumentWithTrueOperator#RSComposite#hasChildren#16#59'>
	<madeBySmallAmp>
	| c b1 b2 e1 aRSLine |
	c := RSComposite new.
	c shapes.
	self deny: c hasChildren.
	b1 := RSBox new position: 0 @ 0.
	b2 := RSBox new position: 100 @ 100.
	aRSLine := RSLine new.
	e1 := aRSLine
		from: b1;
		to: b2.
	c
		shapes:
			{b1.
			b2.
			e1}
]

{ #category : #tests }
RSCompositeTest >> testEdgesCanvasAndComposite03 [
	"from box to child"
	| c b1 b2 e1 com |
	c := RSCanvas new.
	com := RSComposite new.
	b1 := RSBox new size: 10; position: 0@0.
	com add: b1.
	com adjustToChildren.
	b1 position: 50@50.
	com position: 200@0.
	b2 := RSBox new size: 10; position: 100@100.
	e1 := RSLine new from: b1; to: b2.
	c addAll: { com. b2. e1 }.
	
	self assert: e1 startPoint equals: com position + b1 position.
	self assert: e1 endPoint equals: b2 position.
]

{ #category : #tests }
RSCompositeTest >> testEdgesCanvasAndComposite04 [
	"from child to child"
	| c b1 b2 e1 com1 com2 |
	c := RSCanvas new.
	com1 := RSComposite new.
	b1 := RSBox new size: 10; position: 0@0.
	com1 add: b1.
	com1 adjustToChildren.
	b1 position: 50@50.
	com1 position: 200@0.
	
	com2 := RSComposite new.
	b2 := RSBox new size: 10.
	com2 add: b2.
	com2 adjustToChildren.
	com2 position: -100@0.
	b2 position: 100@100.
	
	e1 := RSLine new from: b1; to: b2.
	c addAll: { com1. com2. e1 }.
	
	self assert: e1 startPoint equals: com1 position + b1 position.
	self assert: e1 endPoint equals: com2 position + b2 position.
]

{ #category : #tests }
RSCompositeTest >> testEdgesCanvasAndComposite05 [
	"from child to box, where the edge is with the child"
	| c b1 b2 e1 com |
	c := RSCanvas new.
	com := RSComposite new.
	b1 := RSBox new size: 10; position: 50@50.
	com add: b1.
	com position: 200@0.
	b2 := RSBox new size: 10; position: 100@100.
	e1 := RSLine new from: b1; to: b2.
	
	com add: e1.
	com adjustToChildren.
	c addAll: { com. b2. }.
	
	self assert: e1 startPoint equals: b1 position.
	"but b2 is not in the space of com"
	self assert: e1 endPoint equals: b2 position.
	
	
]

{ #category : #'as yet unclassified' }
RSCompositeTest >> testEdgesCanvasAndComposite05_amp_L64_A86_A54 [
	"I test correctness of: 

- `(center := rect floatCenter) = (0 @ 0)` in method: `RSComposite >> #padding:`

"

	<smallAmpCoveres: 'ReplaceIfTrueWithIfFalseMutantOperator#RSComposite#padding:#954#1008'>
	<smallAmpCoveres: 'ReplaceEqualWithNotEqualOperator#RSComposite#padding:#954#989'>
	<smallAmpCoveres: 'ReplaceIfTrueReceiverWithTrueOperator#RSComposite#padding:#954#1008'>
	<smallAmpCoveres: 'ReplaceDoBlockWithEmptyBlockOperator#RSComposite#padding:#1039#1082'>
	<madeBySmallAmp>
	| c b1 b2 e1 com aRSBox1 aRSBox2 aRSLine1 aRSLine2 |
	c := RSCanvas new.
	com := RSComposite new.
	aRSBox1 := RSBox new.
	b1 := aRSBox1
		size: 10;
		position: 50 @ 50.
	com
		add: b1;
		position: 200 @ 0;
		padding: 5.
	aRSBox2 := RSBox new.
	b2 := aRSBox2
		size: 10;
		position: 100 @ 0.
	aRSLine1 := RSLine new.
	e1 := aRSLine1
		from: b1;
		to: b2.
	aRSLine2 := com add: e1.
	self assert:
		aRSLine2 startPoint equals: 0.0 @ 0.0.
	com
		lines;
		adjustToChildren
]

{ #category : #tests }
RSCompositeTest >> testHasChildren [
	| b |
	b := RSComposite new.
	self deny: b hasChildren.
	b shapes: {}.
	self deny: b hasChildren.
	b shapes: {RSBox new. RSEllipse new}.
	self assert: b hasChildren.
]

{ #category : #tests }
RSCompositeTest >> testPaddingOkay [
	"No error should be raised"
	
	RSComposite new
		shapes: (RSGroup new add: RSBox new; yourself);
		padding: 5.

	RSComposite new
		shapes: (RSGroup new add: RSBox new; add: RSBox new; yourself);
		padding: 5.
		
	RSComposite new
		shapes: (RSGroup new);
		padding: 5.
]

{ #category : #tests }
RSCompositeTest >> testPositionInCanvas [
	| box composite canvas |
	canvas := RSCanvas new.
	box := RSBox new
		size: 100;
		yourself.
	composite := RSComposite new
		shapes: { box };
		position: 100@100;
		yourself.
	canvas add: composite.
	box translateTo: 10@10.
	self assert: composite position equals: 100@100.
	self assert: composite positionInCanvas equals: 100@100.
	self assert: box position equals: 10@10.
	self assert: box positionInCanvas equals: 110@110.
]

{ #category : #'as yet unclassified' }
RSCompositeTest >> testPositionInCanvas_amp [
	"I test correctness of: 

- `^ parent camera` in method: `RSComposite >> #camera`

- `self shapes do: [ :n | n addRecursivelyIn: aCollection ]` in method: `RSComposite >> #addRecursivelyIn:`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSComposite#camera#9#23'>
	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSComposite#addRecursivelyIn:#70#125'>
	<madeBySmallAmp>
	| box composite canvas aRSBox aRSComposite1 aRSComposite2 |
	canvas := RSCanvas new.
	aRSBox := RSBox new.
	box := aRSBox
		size: 100;
		yourself.
	aRSComposite1 := RSComposite new.
	composite := aRSComposite1
		shapes: {box};
		position: 100 @ 100;
		yourself.
	aRSComposite2 := canvas add: composite.
	self
		assert:
			aRSComposite2 camera class equals: RSCamera;
		assert:
			aRSComposite2 camera canvas deepNodes class
			equals: OrderedCollection
]
