Class {
	#name : #RSChartTest427,
	#superclass : #RSChartTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSChartTest427 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testBasic_amp_A94 [
	"I test correctness of: 

- `^ colors` in method: `RSChart >> #colors`

- `^ plots size` in method: `RSChart >> #numberOfPlots`

"

	<madeBySmallAmp>
	| x aRSChart |
	x := -10.0 to: 20.0 count: 100.
	aRSChart := RSChart new.
	self
		assert:
			aRSChart colors class equals: NSOrdinalScale;
		assert:
			aRSChart numberOfPlots equals: 0.
	aRSChart
		addPlot: (RSScatterPlot new x: x y: (x raisedTo: 3));
		addPlot: (RSLinePlot new x: x y: (x raisedTo: 2));
		addDecoration: RSHorizontalTick new;
		xRawLog;
		addDecoration: RSVerticalTick new.
	self should: [ aRSChart := aRSChart build ] raise: AssertionFailure
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testMinMaxValue2_amp_A11 [
	"I test correctness of: 

- `^ aScale` in method: `RSChart >> #yScale:`

"

	<madeBySmallAmp>
	| y c x aNSPowScale |
	y := #(-10 -13 -15).
	x := #(4 6 9).
	c := RSChart new.
	aNSPowScale := c
		addPlot: (RSLinePlot new x: x y: y);
		ySqrt.
	self assert:
		aNSPowScale class equals: NSPowScale.
	c build
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testMinMaxValue2_amp_A13 [
	"I test correctness of: 

- `^ aScale` in method: `RSChart >> #xScale:`

"

	<madeBySmallAmp>
	| y c x aNSPowScale |
	y := #(-10 -13 -15).
	x := #(4 6 9).
	c := RSChart new.
	aNSPowScale := c
		addPlot: (RSLinePlot new x: x y: y);
		xSqrt.
	self assert:
		aNSPowScale class equals: NSPowScale.
	c build
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testMinMaxValue_amp_L9 [
	<madeBySmallAmp>
	| y c |
	y := #(SmallInteger maxVal 13 15).
	c := RSChart new.
	c addPlot: (RSLinePlot new y: y).
	self should: [ c build ] raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testMustInclude02_amp_A13 [
	"I test correctness of: 

- `^ self xScale: NSScale sqrt` in method: `RSChart >> #xSqrt`

"

	<madeBySmallAmp>
	| y c aNSPowScale |
	y := #(-10 -13 -15).
	c := RSChart new.
	aNSPowScale := c
		addPlot: (RSLinePlot new y: y);
		xSqrt.
	self assert:
		aNSPowScale class equals: NSPowScale.
	c
		mustInclude0inY;
		build
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testMustInclude02_amp_A56 [
	"I test correctness of: 

- `^ self xScale: NSScale ln` in method: `RSChart >> #xLn`

"

	<madeBySmallAmp>
	| y c aNSLnScale |
	y := #(-10 -13 -15).
	c := RSChart new.
	aNSLnScale := c
		addPlot: (RSLinePlot new y: y);
		mustInclude0inY;
		xLn.
	self assert:
		aNSLnScale class equals: NSLnScale.
	c build
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testMustInclude02_amp_L24 [
	<madeBySmallAmp>
	| y c |
	y := #(-10 -13 SmallInteger minVal).
	c := RSChart new.
	c addPlot: (RSLinePlot new y: y).
	self should: [ c mustInclude0inY ] raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testMustInclude0_amp_A43 [
	"I test correctness of: 

- `^ self yScale: NSScale sqrt` in method: `RSChart >> #ySqrt`

"

	<madeBySmallAmp>
	| y c aNSPowScale |
	y := #(10 13 15).
	c := RSChart new.
	aNSPowScale := c
		addPlot: (RSLinePlot new y: y);
		mustInclude0inY;
		ySqrt.
	self assert:
		aNSPowScale class equals: NSPowScale.
	c build
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testMustInclude0_amp_L9 [
	<madeBySmallAmp>
	| y c |
	y := #(SmallInteger maxVal 13 15).
	c := RSChart new.
	c addPlot: (RSLinePlot new y: y).
	self should: [ c mustInclude0inY ] raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testWithWeirdValuesLineWithTicks2_amp_A9 [
	"I test correctness of: 

- `^ self xScale: NSScale symlog` in method: `RSChart >> #xLog`

"

	<madeBySmallAmp>
	| x g d c labels aNSSymLogScale |
	x := {-5 . 0 . 1 . 2}.
	g := RSChart new.
	d := RSLinePlot new x: x y: x log.
	aNSSymLogScale := g
		addPlot: d;
		xLog.
	self assert:
		aNSSymLogScale class equals: NSSymLogScale.
	c := g
		addDecoration: RSVerticalTick new;
		build;
		canvas
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testWithWeirdValuesLineWithTicks_amp_A151 [
	"I test correctness of: 

- `^ self yScale: NSScale linear` in method: `RSChart >> #yLinear`

"

	<madeBySmallAmp>
	| values g d line c aNSLinearScale |
	values := {Float infinity negated.
	Float infinity negated.
	0.30102999566398114.
	0.47712125471966244}.
	g := RSChart new.
	d := RSLinePlot new y: values.
	aNSLinearScale := g
		addPlot: d;
		addDecoration: RSHorizontalTick new;
		addDecoration: RSVerticalTick new;
		build;
		canvas;
		yLinear.
	self assert:
		aNSLinearScale class equals: NSLinearScale
]

{ #category : #'as yet unclassified' }
RSChartTest427 >> testYMarker_amp_A96 [
	"I test correctness of: 

- `^ decorations` in method: `RSChart >> #decorations`

- `^ self yScale: NSScale log` in method: `RSChart >> #yRawLog`

"

	<madeBySmallAmp>
	| x c p1 p2 marker line aNSLogScale |
	x := -3.14 to: 3.14 by: 0.01.
	c := RSChart new.
	self assert: c decorations class equals: OrderedCollection.
	p1 := RSLinePlot new.
	p1 x: x y: x sin * 0.22.
	c addPlot: p1.
	p2 := RSLinePlot new.
	p2 x: x y: x cos * 0.18.
	aNSLogScale := c
		addPlot: p2;
		addDecoration: RSHorizontalTick new;
		addDecoration: RSVerticalTick new asFloat;
		yRawLog.
	self assert:
		aNSLogScale class equals: NSLogScale.
	marker := RSYMarkerDecoration new.
	c addDecoration: marker.
	self should: [ c build ] raise: AssertionFailure
]
