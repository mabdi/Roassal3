Class {
	#name : #RSLinePlotTest,
	#superclass : #RSAbstractChartTest,
	#category : #'Roassal3-Chart-Tests'
}

{ #category : #tests }
RSLinePlotTest >> classToTest [
	^ RSLinePlot
]

{ #category : #'as yet unclassified' }
RSLinePlotTest >> testEmptyPlot_amp [
	<smallAmpCoveres: 'RemoveCaretOperator#RSLinePlot#isLinePlot#13#18'>
	<madeBySmallAmp>
	| p aRSLinePlot |
	aRSLinePlot := self classToTest new.
	self
		assert:
			aRSLinePlot class equals: RSLinePlot;
		assert:
			aRSLinePlot isLinePlot.
	p := aRSLinePlot x: #(0) y: #(0)
]
