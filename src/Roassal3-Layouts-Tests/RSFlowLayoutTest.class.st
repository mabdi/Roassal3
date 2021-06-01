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
		equals: (layout gapSize* n)+(shapes first height * (n - 0.5))
]

{ #category : #'as yet unclassified' }
RSFlowLayoutTest >> testLinesEven_amp [
	"I test correctness of: 

- `^ alignment = #bottom` in method: `RSFlowLayout >> #isAlignBottom`

- `^ alignment = #label` in method: `RSFlowLayout >> #isAlignLabel`

- `^ alignment = #middle` in method: `RSFlowLayout >> #isAlignMiddle`

- `^ alignment = #top` in method: `RSFlowLayout >> #isAlignTop`

"

	<smallAmpCoveres: 'ReplaceEqualWithNotEqualOperator#RSFlowLayout#isAlignMiddle#18#36'>
	<smallAmpCoveres: 'ReplaceEqualWithNotEqualOperator#RSFlowLayout#isAlignLabel#17#34'>
	<smallAmpCoveres: 'ReplaceEqualWithNotEqualOperator#RSFlowLayout#isAlignTop#15#30'>
	<smallAmpCoveres: 'ReplaceEqualWithNotEqualOperator#RSFlowLayout#isAlignBottom#18#36'>
	<madeBySmallAmp>
	| layout lines line n |
	layout := RSFlowLayout new.
	self
		deny: layout isAlignBottom;
		deny: layout isAlignLabel;
		deny: layout isAlignMiddle;
		assert: layout isAlignTop.
	lines := layout
		maxWidth: 20;
		linesFor: shapes
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
		equals: (layout gapSize* n)+(shapes first height * (n - 0.5))
]
