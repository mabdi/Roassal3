Class {
	#name : #RSUMLClassBuilderTest40,
	#superclass : #RSUMLClassBuilderTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTest40 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSUMLClassBuilderTest40 >> testJustClassName_amp_L1 [
	"I test correctness of: 

- `^ classes` in method: `RSUMLClassBuilder >> #classes` when {#classes->nil}

"

	<madeBySmallAmp>
	| builder shape |
	builder := self classToTest new.
	self assert: builder classes isNil.
	builder classes: {nil}.
	self should: [ builder build ] raise: MessageNotUnderstood
]
