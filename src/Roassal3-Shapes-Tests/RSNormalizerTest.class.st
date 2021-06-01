"
I am test for RSNormalizer
"
Class {
	#name : #RSNormalizerTest,
	#superclass : #RSTest,
	#category : #'Roassal3-Shapes-Tests'
}

{ #category : #tests }
RSNormalizerTest >> testBasic [ 
	| shapes |
	shapes := (1 to: 2) collect: [ :n | RSBox new model: n; yourself ].
	
	self assert: shapes size equals: 2.
	self assert: shapes first color equals: Color lightGray.
	RSNormalizer color
		shapes: shapes;
		normalize: #yourself.
	self assert: shapes first color equals: Color green.
	RSNormalizer size
		shapes: shapes;
		from: 100;
		to: 200;
		normalize: #yourself.
	self assert: shapes first extent equals: 100@100.
	self assert: shapes first extent equals: 100@100.
]

{ #category : #'as yet unclassified' }
RSNormalizerTest >> testBasic_amp [
	"I test correctness of: 

- `^ shapes` in method: `RSNormalizer >> #shapes` when {#shapes->#()}

- `^ scale` in method: `RSNormalizer >> #scale`

- `max max: res` in method: `RSNormalizer >> #minAndMaxFor:` when {#max->'SmallInteger minVal'. #res->2}

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSNormalizer#shapes#56#63'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSNormalizer#scale#8#14'>
	<smallAmpCoveres: 'ReplaceMaxWithMinMutantOperator#RSNormalizer#minAndMaxFor:#263#274'>
	<madeBySmallAmp>
	| shapes aRSNormalizer1 aRSNormalizer2 |
	shapes := (1 to: 2)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ].
	aRSNormalizer1 := RSNormalizer color.
	self
		assert:
			aRSNormalizer1 shapes class equals: Array;
		assert:
			aRSNormalizer1 scale class equals: NSLinearScale.
	aRSNormalizer1 := aRSNormalizer1
		shapes: shapes;
		normalize: #yourself.
	self assert:
		aRSNormalizer1 scale input to equals: 2.
	aRSNormalizer2 := RSNormalizer size.
	aRSNormalizer2 := aRSNormalizer2
		shapes: shapes;
		from: 100;
		to: 200;
		normalize: #yourself
]
