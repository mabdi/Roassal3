Class {
	#name : #RSScatterPlotTest,
	#superclass : #RSAbstractChartTest,
	#category : #'Roassal3-Chart-Tests'
}

{ #category : #tests }
RSScatterPlotTest >> classToTest [
	^ RSScatterPlot
]

{ #category : #'as yet unclassified' }
RSScatterPlotTest >> testEmptyPlot_amp [
	"I test correctness of: 

- `^ true` in method: `RSScatterPlot >> #isScatterPlot`

- `^ processBlock` in method: `RSScatterPlot >> #processBlock` when {#processBlock->nil}

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSScatterPlot#processBlock#15#28'>
	<madeBySmallAmp>
	| p aRSScatterPlot |
	aRSScatterPlot := self classToTest new.
	self
		assert:
			aRSScatterPlot isScatterPlot;
		assert:
			aRSScatterPlot processBlock isNil.
	p := aRSScatterPlot x: #(0) y: #(0)
]
