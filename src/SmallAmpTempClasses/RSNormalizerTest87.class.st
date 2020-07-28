Class {
	#name : #RSNormalizerTest87,
	#superclass : #RSNormalizerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSNormalizerTest87 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSNormalizerTest87 >> testBasic_amp_A11 [
	<madeBySmallAmp>
	| shapes aRSNormalizer |
	shapes := (1 to: 2)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ].
	aRSNormalizer := RSNormalizer color.
	aRSNormalizer shapes: shapes.
	self should: [ aRSNormalizer from: 100 ] raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSNormalizerTest87 >> testBasic_amp_A18 [
	<madeBySmallAmp>
	| shapes aRSNormalizer |
	shapes := (1 to: 2)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ].
	aRSNormalizer := RSNormalizer color.
	aRSNormalizer := aRSNormalizer
		shapes: shapes;
		normalize: #yourself.
	self should: [ aRSNormalizer from: 5 ] raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSNormalizerTest87 >> testBasic_amp_A20 [
	"I test correctness of: 

- `^ n` in method: `RSNormalizer class >> #width` when {#n->nil}

"

	<madeBySmallAmp>
	| shapes aRSNormalizer1 aRSNormalizer2 aRSNormalizer3 |
	shapes := (1 to: 2)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ].
	aRSNormalizer1 := RSNormalizer color.
	aRSNormalizer1 := aRSNormalizer1
		shapes: shapes;
		normalize: #yourself.
	aRSNormalizer2 := RSNormalizer size.
	aRSNormalizer3 := RSNormalizer width.
	self assert:
		aRSNormalizer3 class equals: RSNormalizer.
	aRSNormalizer2 := aRSNormalizer2
		shapes: shapes;
		from: 100;
		to: 200;
		normalize: #yourself
]

{ #category : #'as yet unclassified' }
RSNormalizerTest87 >> testBasic_amp_A22 [
	"I test correctness of: 

- `^ n` in method: `RSNormalizer class >> #height` when {#n->nil}

"

	<madeBySmallAmp>
	| shapes aRSNormalizer1 aRSNormalizer2 aRSNormalizer3 |
	shapes := (1 to: 2)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ].
	aRSNormalizer1 := RSNormalizer color.
	aRSNormalizer1 := aRSNormalizer1
		shapes: shapes;
		normalize: #yourself.
	aRSNormalizer2 := RSNormalizer size.
	aRSNormalizer3 := RSNormalizer height.
	self assert:
		aRSNormalizer3 class equals: RSNormalizer.
	aRSNormalizer2 := aRSNormalizer2
		shapes: shapes;
		from: 100;
		to: 200;
		normalize: #yourself
]

{ #category : #'as yet unclassified' }
RSNormalizerTest87 >> testBasic_amp_A23 [
	"I test correctness of: 

- `^ n` in method: `RSNormalizer class >> #fontSize` when {#n->nil}

"

	<madeBySmallAmp>
	| shapes aRSNormalizer1 aRSNormalizer2 aRSNormalizer3 |
	shapes := (1 to: 2)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ].
	aRSNormalizer1 := RSNormalizer color.
	aRSNormalizer1 := aRSNormalizer1
		shapes: shapes;
		normalize: #yourself.
	aRSNormalizer2 := RSNormalizer size.
	aRSNormalizer3 := RSNormalizer fontSize.
	self assert:
		aRSNormalizer3 class equals: RSNormalizer.
	aRSNormalizer2 := aRSNormalizer2
		shapes: shapes;
		from: 100;
		to: 200;
		normalize: #yourself
]

{ #category : #'as yet unclassified' }
RSNormalizerTest87 >> testBasic_amp_A24 [
	"I test correctness of: 

- `^ n` in method: `RSNormalizer class >> #position` when {#n->nil}

"

	<madeBySmallAmp>
	| shapes aRSNormalizer1 aRSNormalizer2 aRSNormalizer3 |
	shapes := (1 to: 2)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ].
	aRSNormalizer1 := RSNormalizer color.
	aRSNormalizer1 := aRSNormalizer1
		shapes: shapes;
		normalize: #yourself.
	aRSNormalizer2 := RSNormalizer size.
	aRSNormalizer3 := RSNormalizer position.
	self assert:
		aRSNormalizer3 class equals: RSNormalizer.
	aRSNormalizer2 := aRSNormalizer2
		shapes: shapes;
		from: 100;
		to: 200;
		normalize: #yourself
]

{ #category : #'as yet unclassified' }
RSNormalizerTest87 >> testBasic_amp_A50 [
	"I test correctness of: 

- `max max: res` in method: `RSNormalizer >> #minAndMaxFor:` when {#max->'SmallInteger minVal'. #res->2}

"

	<madeBySmallAmp>
	| shapes aRSNormalizer1 aRSNormalizer2 aCollection |
	shapes := (1 to: 2)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ].
	aRSNormalizer1 := RSNormalizer color.
	aRSNormalizer1 := aRSNormalizer1
		shapes: shapes;
		normalize: #yourself.
	aRSNormalizer2 := RSNormalizer size.
	aCollection := (aRSNormalizer2
		shapes: shapes;
		from: 100;
		to: 200;
		normalize: #yourself) minAndMaxFor: #yourself.
	self assert: aCollection equals: #(1 2)
]

{ #category : #'as yet unclassified' }
RSNormalizerTest87 >> testBasic_amp_A53 [
	"I test correctness of: 

- `^ shapes` in method: `RSNormalizer >> #shapes` when {#shapes->#()}

- `^ scale` in method: `RSNormalizer >> #scale`

- `^ #normalizerValue` in method: `RSNormalizer >> #key`

"

	<madeBySmallAmp>
	| shapes aRSNormalizer1 aRSNormalizer2 aString |
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
	aRSNormalizer2 := RSNormalizer size.
	aString := (aRSNormalizer2
		shapes: shapes;
		from: 100;
		to: 200;
		normalize: #yourself) key.
	self assert: aString equals: #normalizerValue
]
