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
RSForceBasedLayoutTest >> testAddNodesAndEdges_amp_A26_A205 [
	<smallAmpCoveres:
		'ReplaceIfFalseReceiverWithTrueOperator#RSForceBasedLayout#repulse:from:#31#499'>
	<smallAmpCoveres:
		'ReplaceEqualWithNotEqualOperator#RSForceBasedLayout#repulse:from:#31#53'>
	<smallAmpCoveres:
		'ReplaceIfFalseWithIfTrueMutantOperator#RSForceBasedLayout#repulse:from:#31#499'>
	<madeBySmallAmp>
	| aRSForceBasedLayout1 aRSForceBasedLayout2 |
	aRSForceBasedLayout1 := RSForceBasedLayout new.
	aRSForceBasedLayout2 := aRSForceBasedLayout1
		useProgressBar;
		start;
		addNodes: classes.
	self
		should: [ aRSForceBasedLayout2
				repulse: RSMockElement new
				from: RSQuadTreeF new ]
		raise: MessageNotUnderstood
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

- `^ gravity` in method: `RSForceBasedLayout >> #gravity` when {#gravity->0.1}

- `^ nodes` in method: `RSForceBasedLayout >> #nodes` when {#nodes->#()}

- `alpha > 0.005` in method: `RSForceBasedLayout >> #runLayoutIn:` when {#alpha->0.099}

- `alpha * gravity` in method: `RSForceBasedLayout >> #stepGravityForce` when {#alpha->0.005003662286632569. #gravity->0.1}

"

	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#repulse:from:#483#493'>
	<smallAmpCoveres:
		'ReplaceMultiplicationWithDivisionMutantOperator#RSForceBasedLayout#repulse:from:#417#456'>
	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSForceBasedLayout#stepFriction#107#308'>
	<smallAmpCoveres:
		'ReplaceIfTrueReceiverWithFalseOperator#RSForceBasedLayout#repulse:from:#350#495'>
	<smallAmpCoveres:
		'ReplaceGreaterWithLessMutantOperator#RSForceBasedLayout#runLayoutIn:#76#88'>
	<smallAmpCoveres:
		'ReplaceIfTrueIfFalseReceiverWithFalseOperator#RSForceBasedLayout#runLayoutIn:#19#269'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#stepFriction#215#252'>
	<smallAmpCoveres:
		'ReplaceIfTrueReceiverWithTrueOperator#RSForceBasedLayout#repulse:from:#212#344'>
	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSForceBasedLayout#stepNodeRepulsion#169#310'>
	<smallAmpCoveres:
		'ReplaceLessWithGreaterMutantOperator#RSForceBasedLayout#repulse:from:#212#245'>
	<smallAmpCoveres:
		'ReplaceIfFalseWithIfTrueMutantOperator#RSForceBasedLayout#repulse:from:#505#614'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#stepFriction#226#240'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#repulse:from:#81#117'>
	<smallAmpCoveres:
		'ReplaceLessWithGreaterMutantOperator#RSForceBasedLayout#repulse:from:#381#388'>
	<smallAmpCoveres:
		'ReplaceIfTrueWithIfFalseMutantOperator#RSForceBasedLayout#repulse:from:#212#344'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#repulse:from:#319#329'>
	<smallAmpCoveres:
		'ReplaceIfFalseReceiverWithTrueOperator#RSForceBasedLayout#repulse:from:#505#614'>
	<smallAmpCoveres: 'ReplaceAndWithFalseOperator#RSForceBasedLayout#repulse:from:#350#391'>
	<smallAmpCoveres:
		'ReplaceMultiplicationWithDivisionMutantOperator#RSForceBasedLayout#stepFriction#225#252'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout new.
	self
		assert:
			aRSForceBasedLayout alpha isNil;
		assert:
			aRSForceBasedLayout gravity equals: 0.1;
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

{ #category : #tests }
RSForceBasedLayoutTest >> testBasic [
	RSForceBasedLayout on: classes.
	RSForceBasedLayout new
		doNotUseProgressBar;
		on: classes.
]

{ #category : #'as yet unclassified' }
RSForceBasedLayoutTest >> testBasic_amp [
	"I test correctness of: 

- `^ initialLayout` in method: `RSForceBasedLayout >> #initialLayout`

- `^ charge` in method: `RSForceBasedLayout >> #charge` when {#charge->-30}

- `^ friction` in method: `RSForceBasedLayout >> #friction` when {#friction->0.9}

- `^ theta` in method: `RSForceBasedLayout >> #theta` when {#theta->0.8}

- `^ quadtree` in method: `RSForceBasedLayout >> #currentQuadtree` when {#quadtree->nil}

- `^ length` in method: `RSForceBasedLayout >> #length` when {#length->20}

- `^ center` in method: `RSForceBasedLayout >> #center`

- `iterations = 0` in method: `RSForceBasedLayout >> #runLayoutSimply` when {#iterations->0}

- `nodes do: #applyToRealElement` in method: `RSForceBasedLayout >> #step`

"

	<smallAmpCoveres:
		'ReplaceGreaterWithLessMutantOperator#RSForceBasedLayout#runLayoutSimply#73#85'>
	<smallAmpCoveres:
		'ReplaceIfTrueIfFalseReceiverWithFalseOperator#RSForceBasedLayout#runLayoutSimply#18#199'>
	<smallAmpCoveres: 'ReplaceDoBlockWithEmptyBlockOperator#RSForceBasedLayout#step#126#154'>
	<smallAmpCoveres:
		'ReplaceEqualWithNotEqualOperator#RSForceBasedLayout#runLayoutSimply#18#31'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout
		on: classes;
		new.
	self
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
			aRSForceBasedLayout currentQuadtree isNil;
		assert:
			aRSForceBasedLayout length equals: 20;
		assert:
			aRSForceBasedLayout center equals: 0 @ 0.
	aRSForceBasedLayout := aRSForceBasedLayout
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
