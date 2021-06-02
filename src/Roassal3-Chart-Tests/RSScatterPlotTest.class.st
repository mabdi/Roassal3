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
	<smallAmpCoveres: 'RemoveCaretOperator#RSScatterPlot#isScatterPlot#16#21'>
	<madeBySmallAmp>
	| p aRSScatterPlot |
	aRSScatterPlot := self classToTest new.
	self
		assert:
			aRSScatterPlot class equals: RSScatterPlot;
		assert:
			aRSScatterPlot processBlock isNil.
	p := aRSScatterPlot x: #(0) y: #(0)
]
