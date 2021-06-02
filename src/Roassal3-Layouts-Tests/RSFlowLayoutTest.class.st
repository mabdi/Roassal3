Class {
	#name : #RSFlowLayoutTest,
	#superclass : #RSLayoutTest,
	#category : #'Roassal3-Layouts-Tests'
}

{ #category : #tests }
RSFlowLayoutTest >> testLinesEven [
	| layout lines line n |
	layout := RSFlowLayout new.
	layout maxWidth: 20.
	lines := layout linesFor: shapes.
	n := 5.
	self assert: lines size equals: n.
	line := lines last.
	"all shapes has the same size"
	self
		assert: line first position y
		equals: layout gapSize * n + (shapes first height * (n - 0.5))
]

{ #category : #'as yet unclassified' }
RSFlowLayoutTest >> testLinesEven_amp_A2 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSFlowLayout#isAlignMiddle#16#36'>
	<madeBySmallAmp>
	| layout lines line n |
	layout := RSFlowLayout new.
	self
		assert: layout class equals: RSFlowLayout;
		assert: layout isAlignTop;
		should: [ layout linesFor: RSGroup new ] raise: CollectionIsEmpty
]

{ #category : #tests }
RSFlowLayoutTest >> testLinesOdd [
	| layout lines line n |
	layout := RSFlowLayout new.
	layout maxWidth: 30.
	layout on: shapes.
	lines := layout linesFor: shapes.
	n := 4.
	self assert: lines size equals: n.
	line := lines last.
	"all shapes has the same size"
	self
		assert: line first position y
		equals: layout gapSize * n + (shapes first height * (n - 0.5))
]
