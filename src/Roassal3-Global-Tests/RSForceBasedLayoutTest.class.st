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
RSForceBasedLayoutTest >> testAddNodesAndEdges_amp_A225 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#charge#9#16'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#nodes#8#14'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#currentQuadtree#18#27'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#gravity#10#18'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#center#9#16'>
	<smallAmpCoveres:
		'ReplaceIdentityWithNegationOfIdentity#RSForceBasedLayout#mockElementAt:#52#79'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#alpha#8#14'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#friction#11#20'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#theta#8#14'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#length#9#16'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSForceBasedLayout#initialLayout#16#30'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout new.
	aRSForceBasedLayout
		start;
		addNodes: classes;
		addEdges: canvas edges.
	self
		should: [ aRSForceBasedLayout newMockEdgeFor: RSLine new ]
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

- `^ theta` in method: `RSForceBasedLayout >> #theta` when {#theta->0.8}

- `^ gravity` in method: `RSForceBasedLayout >> #gravity` when {#gravity->0.1}

- `^ quadtree` in method: `RSForceBasedLayout >> #currentQuadtree` when {#quadtree->nil}

- `1 - k` in method: `RSForceBasedLayout >> #stepEdgeForces`

"

	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#stepEdgeForces#183#189'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#stepEdgeForces#286#306'>
	<smallAmpCoveres:
		'ReplaceIfFalseReceiverWithTrueOperator#RSForceBasedLayout#repulse:from:#122#497'>
	<smallAmpCoveres:
		'ReplacePlusWithMinusMutantOperator#RSForceBasedLayout#stepGravityForce#177#202'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#repulse:from:#81#117'>
	<smallAmpCoveres:
		'ReplaceLessWithGreaterMutantOperator#RSForceBasedLayout#repulse:from:#381#388'>
	<smallAmpCoveres:
		'ReplaceIfFalseWithIfTrueMutantOperator#RSForceBasedLayout#accumulate:#372#477'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#stepEdgeForces#402#414'>
	<smallAmpCoveres:
		'ReplaceMultiplicationWithDivisionMutantOperator#RSForceBasedLayout#stepGravityForce#48#62'>
	<smallAmpCoveres:
		'ReplaceIfTrueWithIfFalseMutantOperator#RSForceBasedLayout#stepGravityForce#66#98'>
	<smallAmpCoveres:
		'ReplacePlusWithMinusMutantOperator#RSForceBasedLayout#accumulate:#256#313'>
	<smallAmpCoveres:
		'ReplaceMultiplicationWithDivisionMutantOperator#RSForceBasedLayout#stepEdgeForces#407#414'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#stepFriction#226#240'>
	<smallAmpCoveres:
		'ReplaceMultiplicationWithDivisionMutantOperator#RSForceBasedLayout#stepEdgeForces#260#306'>
	<smallAmpCoveres:
		'ReplaceIfFalseWithIfTrueMutantOperator#RSForceBasedLayout#repulse:from:#31#499'>
	<smallAmpCoveres:
		'ReplaceIfFalseWithIfTrueMutantOperator#RSForceBasedLayout#repulse:from:#505#614'>
	<smallAmpCoveres:
		'ReplaceIfTrueReceiverWithFalseOperator#RSForceBasedLayout#repulse:from:#350#495'>
	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSForceBasedLayout#stepNodeRepulsion#169#310'>
	<smallAmpCoveres:
		'ReplaceIfTrueReceiverWithTrueOperator#RSForceBasedLayout#accumulate:#612#646'>
	<smallAmpCoveres:
		'ReplaceIfTrueWithIfFalseMutantOperator#RSForceBasedLayout#repulse:from:#212#344'>
	<smallAmpCoveres:
		'ReplacePlusWithMinusMutantOperator#RSForceBasedLayout#accumulate:#529#544'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#stepGravityForce#188#201'>
	<smallAmpCoveres:
		'ReplaceEqualWithNotEqualOperator#RSForceBasedLayout#repulse:from:#31#53'>
	<smallAmpCoveres:
		'ReplaceIfFalseReceiverWithTrueOperator#RSForceBasedLayout#stepEdgeForces#222#467'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#repulse:from:#319#329'>
	<smallAmpCoveres:
		'ReplacePlusWithMinusMutantOperator#RSForceBasedLayout#stepEdgeForces#453#465'>
	<smallAmpCoveres:
		'ReplaceMultiplicationWithDivisionMutantOperator#RSForceBasedLayout#stepFriction#225#252'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#stepEdgeForces#425#429'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#stepFriction#215#252'>
	<smallAmpCoveres:
		'ReplaceIfFalseReceiverWithTrueOperator#RSForceBasedLayout#repulse:from:#31#499'>
	<smallAmpCoveres:
		'ReplaceIfTrueReceiverWithTrueOperator#RSForceBasedLayout#stepGravityForce#66#98'>
	<smallAmpCoveres:
		'ReplaceIfTrueReceiverWithTrueOperator#RSForceBasedLayout#repulse:from:#212#344'>
	<smallAmpCoveres:
		'ReplaceMultiplicationWithDivisionMutantOperator#RSForceBasedLayout#accumulate:#487#510'>
	<smallAmpCoveres:
		'ReplaceIfFalseReceiverWithTrueOperator#RSForceBasedLayout#repulse:from:#505#614'>
	<smallAmpCoveres: 'ReplaceAndWithFalseOperator#RSForceBasedLayout#repulse:from:#350#391'>
	<smallAmpCoveres:
		'ReplaceLessWithGreaterMutantOperator#RSForceBasedLayout#repulse:from:#212#245'>
	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSForceBasedLayout#stepGravityForce#102#204'>
	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSForceBasedLayout#stepFriction#107#308'>
	<smallAmpCoveres:
		'ReplaceMultiplicationWithDivisionMutantOperator#RSForceBasedLayout#stepEdgeForces#458#465'>
	<smallAmpCoveres:
		'ReplaceMinusWithPlusMutantOperator#RSForceBasedLayout#repulse:from:#483#493'>
	<smallAmpCoveres:
		'ReplaceIfFalseReceiverWithFalseOperator#RSForceBasedLayout#accumulate:#372#477'>
	<smallAmpCoveres:
		'ReplaceMultiplicationWithDivisionMutantOperator#RSForceBasedLayout#repulse:from:#417#456'>
	<smallAmpCoveres:
		'ReplacePlusWithMinusMutantOperator#RSForceBasedLayout#accumulate:#565#603'>
	<smallAmpCoveres:
		'ReplacePlusWithMinusMutantOperator#RSForceBasedLayout#accumulate:#205#234'>
	<smallAmpCoveres:
		'ReplaceDoBlockWithEmptyBlockOperator#RSForceBasedLayout#stepEdgeForces#43#470'>
	<madeBySmallAmp>
	| aRSForceBasedLayout |
	aRSForceBasedLayout := RSForceBasedLayout new.
	self
		assert:
			aRSForceBasedLayout alpha isNil;
		assert:
			aRSForceBasedLayout theta equals: 0.8;
		assert:
			aRSForceBasedLayout gravity equals: 0.1;
		assert:
			aRSForceBasedLayout currentQuadtree isNil.
	aRSForceBasedLayout := aRSForceBasedLayout
		length: 100;
		charge: -300;
		center: 200 @ 200;
		on: classes.
	self
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

- `^ length` in method: `RSForceBasedLayout >> #length` when {#length->20}

- `^ center` in method: `RSForceBasedLayout >> #center`

- `^ nodes` in method: `RSForceBasedLayout >> #nodes` when {#nodes->#()}

- `iterations = 0` in method: `RSForceBasedLayout >> #runLayoutSimply` when {#iterations->0}

- `alpha * gravity` in method: `RSForceBasedLayout >> #stepGravityForce` when {#alpha->0.005003662286632569. #gravity->0.1}

- `alpha > 0.005` in method: `RSForceBasedLayout >> #runLayoutIn:` when {#alpha->0.099}

"

	<smallAmpCoveres: 'ReplaceDoBlockWithEmptyBlockOperator#RSForceBasedLayout#step#126#154'>
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
			aRSForceBasedLayout length equals: 20;
		assert:
			aRSForceBasedLayout center equals: 0 @ 0;
		assert:
			aRSForceBasedLayout nodes class equals: Array.
	aRSForceBasedLayout := aRSForceBasedLayout
		doNotUseProgressBar;
		on: classes.
	self
		assert:
			aRSForceBasedLayout currentQuadtree class
			equals: RSQuadTreeF;
		assert:
			aRSForceBasedLayout currentQuadtree charge
			equals: -15.311206597095662;
		assert:
			aRSForceBasedLayout currentQuadtree rectangle top
			equals: -148.19100435117414
]
