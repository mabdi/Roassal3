Class {
	#name : #RSForceBasedLayoutTest,
	#superclass : #RSTest,
	#instVars : [
		'classes',
		'canvas'
	],
	#category : #'Roassal3-Global-Tests-Layouts'
}

{ #category : #running }
RSForceBasedLayoutTest >> setUp [
	super setUp.
	canvas := RSCanvas new.
	classes := Collection withAllSubclasses collect:[:cls |
		RSBox new model: cls; size: 10; yourself].
	RSLineBuilder line
		canvas: canvas;
		shapes: classes;
		color: (Color blue alpha: 0.5);
		connectFrom: #superclass to: #yourself.
	canvas addAll: classes.
]

{ #category : #tests }
RSForceBasedLayoutTest >> testAddNodesAndEdges [

	RSForceBasedLayout new
		start;
		addNodes: classes;
		addEdges: canvas edges;
		step.
		
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testAddNodesAndEdges_amp_A184 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#currentQuadtree#18#27'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout new.
	(aRSForceBasedLayout
		start;
		addNodes: classes) nodes: #().
	self
		should: [ aRSForceBasedLayout addEdges: canvas edges ]
		raise: NotFound
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testAddNodesAndEdges_amp_A242_A306_A202 [
	<smallAmpCoveres:
		'ReplaceIdentityWithNegationOfIdentity#RSForceBasedLayout#mockElementAt:#52#79'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout new.
	(aRSForceBasedLayout
		start;
		addNodes: classes) start.
	self
		should: [ aRSForceBasedLayout addEdges: canvas edges ]
		raise: NotFound
]

{ #category : #tests }
RSForceBasedLayoutTest >> testAttributes [
	RSForceBasedLayout new
		length: 100;
		charge: -300;
		center: 200@200;
		on: classes
		
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testAttributes_amp [
	"I test correctness of: 

- `^ alpha` in method: `RSForceBasedLayout >> #alpha` when {#alpha->nil}

- `^ initialLayout` in method: `RSForceBasedLayout >> #initialLayout`

- `^ charge` in method: `RSForceBasedLayout >> #charge` when {#charge->-30}

- `^ friction` in method: `RSForceBasedLayout >> #friction` when {#friction->0.9}

- `^ theta` in method: `RSForceBasedLayout >> #theta` when {#theta->0.8}

- `^ gravity` in method: `RSForceBasedLayout >> #gravity` when {#gravity->0.1}

- `^ quadtree` in method: `RSForceBasedLayout >> #currentQuadtree` when {#quadtree->nil}

- `^ length` in method: `RSForceBasedLayout >> #length` when {#length->20}

- `^ center` in method: `RSForceBasedLayout >> #center`

- `^ nodes` in method: `RSForceBasedLayout >> #nodes` when {#nodes->#()}

- `alpha > 0.005` in method: `RSForceBasedLayout >> #runLayoutIn:` when {#alpha->0.099}

- `each realElement == realNode` in method: `RSForceBasedLayout >> #mockElementAt:`

"

	<smallAmpCoveres:
		'ReplaceMultiplicationWithDivisionMutantOperator#RSForceBasedLayout#stepEdgeForces#260#306'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout new.
	self
		assert:
			aRSForceBasedLayout alpha isNil;
		assert:
			aRSForceBasedLayout initialLayout class
			equals: RSGridLayout;
		assert:
			aRSForceBasedLayout charge equals: -30;
		assert:
			aRSForceBasedLayout friction equals: 0.9;
		assert:
			aRSForceBasedLayout theta equals: 0.8;
		assert:
			aRSForceBasedLayout gravity equals: 0.1;
		assert:
			aRSForceBasedLayout currentQuadtree isNil;
		assert:
			aRSForceBasedLayout length equals: 20;
		assert:
			aRSForceBasedLayout center equals: 0 @ 0;
		assert:
			aRSForceBasedLayout nodes class equals: Array.
	aRSForceBasedLayout := aRSForceBasedLayout
		length: 100;
		charge: -300;
		center: 200 @ 200;
		on: classes.
	self
		assert:
			aRSForceBasedLayout currentQuadtree class
			equals: RSQuadTreeF;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle top
			equals: -213.48817281723095
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testAttributes_amp_L4_A201 [
	<smallAmpCoveres:
		'ReplaceEqualWithNotEqualOperator#RSForceBasedLayout#runLayoutSimply#18#31'>
	<madeBySmallAmp>
	| aRSForceBasedLayout1 aRSForceBasedLayout2 |
	aRSForceBasedLayout1 := RSForceBasedLayout new.
	aRSForceBasedLayout2 := aRSForceBasedLayout1
		length: 50;
		charge: -300.
	self
		should: [ aRSForceBasedLayout2 runLayoutSimply ]
		raise: MessageNotUnderstood
]

{ #category : #tests }
RSForceBasedLayoutTest >> testBasic [
	RSForceBasedLayout on: classes.
	RSForceBasedLayout new
		doNotUseProgressBar;
		on: classes.
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testBasic_amp_A166 [
	"I test correctness of: 

- `iterations = 0` in method: `RSForceBasedLayout >> #runLayoutSimply` when {#iterations->0}

"

	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSForceBasedLayout#doExecute:#216#281'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout
		on: classes;
		new.
	aRSForceBasedLayout := aRSForceBasedLayout
		doNotUseProgressBar;
		on: classes.
	self
		assert:
			aRSForceBasedLayout currentQuadtree class
		equals: RSQuadTreeF.
	aRSForceBasedLayout step
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testBasic_amp_A41 [
	"I test correctness of: 

- `alpha > 0.005` in method: `RSForceBasedLayout >> #runLayoutSimply` when {#alpha->0.099}

- `nodes do: #applyToRealElement` in method: `RSForceBasedLayout >> #step`

"

	<smallAmpCoveres:
		'ReplaceGreaterWithLessMutantOperator#RSForceBasedLayout#runLayoutSimply#73#85'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout
		on: classes;
		new.
	aRSForceBasedLayout := aRSForceBasedLayout
		iterations: 0;
		doNotUseProgressBar;
		on: classes.
	self
		assert:
			aRSForceBasedLayout currentQuadtree class
			equals: RSQuadTreeF;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle top
			equals: -148.19100435117414
]
