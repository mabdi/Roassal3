Class {
	#name : #RSChartTest,
	#superclass : #RSTest,
	#category : #'Roassal3-Chart-Tests'
}

{ #category : #tests }
RSChartTest >> testBasic [

	| x |
	x := -10.0 to: 20.0 count: 100.

	RSChart new
    addPlot: (RSScatterPlot new x: x y: (x raisedTo: 3));
    addPlot: (RSLinePlot new x: x y: (x raisedTo: 2));
	addDecoration: RSHorizontalTick new;
	addDecoration: RSVerticalTick new;
	build
]

{ #category : #'as yet unclassified' }
RSChartTest >> testBasic_amp [
	"I test correctness of: 

- `^ decorations` in method: `RSChart >> #decorations`

- `^ colors` in method: `RSChart >> #colors`

- `^ plots size` in method: `RSChart >> #numberOfPlots`

- `^ aDecoration` in method: `RSChart >> #addDecoration:`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#colors#31#38'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#addDecoration:#330#342'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#numberOfPlots#69#80'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#decorations#71#83'>
	<madeBySmallAmp>
	| x aRSChart aRSHorizontalTick |
	x := -10.0 to: 20.0 count: 100.
	aRSChart := RSChart new.
	self
		assert:
			aRSChart decorations class equals: OrderedCollection;
		assert:
			aRSChart colors class equals: NSOrdinalScale;
		assert:
			aRSChart numberOfPlots equals: 0.
	aRSHorizontalTick := aRSChart
		addPlot: (RSScatterPlot new x: x y: (x raisedTo: 3));
		addPlot: (RSLinePlot new x: x y: (x raisedTo: 2));
		addDecoration: RSHorizontalTick new.
	self assert:
		aRSHorizontalTick class equals: RSHorizontalTick.
	aRSChart addDecoration: RSVerticalTick new
]

{ #category : #'as yet unclassified' }
RSChartTest >> testBasic_amp_A32_A40_A102 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#yRawLog#64#89'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#yScale:#68#75'>
	<madeBySmallAmp>
	| x aRSChart |
	x := -10.0 to: 20.0 count: 100.
	aRSChart := RSChart new.
	(aRSChart renderPlotsIn: RSCanvas new) yRawLog.
	self
		should: [ aRSChart controllerInteraction ]
		raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSChartTest >> testBasic_amp_A32_A40_A29 [
	"I test correctness of: 

- `^ self xScale: NSScale ln` in method: `RSChart >> #xLn`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#xLn#6#30'>
	<madeBySmallAmp>
	| x aRSChart aNSLnScale |
	x := -10.0 to: 20.0 count: 100.
	aRSChart := RSChart new.
	aNSLnScale := aRSChart xLn.
	self assert:
		aNSLnScale class equals: NSLnScale.
	aRSChart renderPlotsIn: RSCanvas new.
	self
		should: [ aRSChart controllerInteraction ]
		raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
RSChartTest >> testBasic_amp_A37_A209_A16 [
	"I test correctness of: 

- `^ self xScale: NSScale linear` in method: `RSChart >> #xLinear`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#xScale:#68#75'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#xLinear#10#38'>
	<madeBySmallAmp>
	| x aRSChart aNSLinearScale |
	x := -10.0 to: 20.0 count: 100.
	aRSChart := RSChart new.
	aNSLinearScale := aRSChart xLinear.
	self
		assert:
			aNSLinearScale class equals: NSLinearScale;
		should: [ aRSChart inspectorContext ] raise: MessageNotUnderstood
]

{ #category : #tests }
RSChartTest >> testMinMaxValue [

	| y c |
	y := #(10 13 15).
	c := RSChart new.
	c addPlot: (RSLinePlot new y: y).
	c build.
	self assert: c minValueX equals: 1.
	self assert: c maxValueX equals: 3.
	self assert: c minValueY equals: 10.
	self assert: c maxValueY equals: 15.
]

{ #category : #tests }
RSChartTest >> testMinMaxValue2 [

	| y c x |
	y := #(-10 -13 -15).
	x := #(4 6 9).
	c := RSChart new.
	c addPlot: (RSLinePlot new x: x y: y).
	c build.
	self assert: c minValueX equals: 4.
	self assert: c maxValueX equals: 9.
	self assert: c minValueY equals: -15.
	self assert: c maxValueY equals: -10.
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMinMaxValue2_amp_A101_A108 [
	"I test correctness of: 

- `^ self xScale: NSScale symlog` in method: `RSChart >> #xLog`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#xLog#7#35'>
	<madeBySmallAmp>
	| y c x aNSSymLogScale |
	y := #(-10 -13 -15).
	x := #(4 6 9).
	c := RSChart new.
	aNSSymLogScale := c
		addPlot: (RSLinePlot new x: x y: y);
		build;
		xLog.
	self assert:
		aNSSymLogScale class equals: NSSymLogScale.
	c minValueY: -1000
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMinMaxValue2_amp_A11_A58_A213 [
	"I test correctness of: 

- `^ self yScale: NSScale ln` in method: `RSChart >> #yLn`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#yLn#6#30'>
	<madeBySmallAmp>
	| y c x aNSLnScale |
	y := #(-10 -13 -15).
	x := #(4 6 9).
	c := RSChart new.
	aNSLnScale := c
		colors;
		extent;
		addPlot: (RSLinePlot new x: x y: y);
		build;
		yLn.
	self assert:
		aNSLnScale class equals: NSLnScale
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMinMaxValue2_amp_A11_A58_A9 [
	"I test correctness of: 

- `^ self yScale: NSScale sqrt` in method: `RSChart >> #ySqrt`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#ySqrt#8#34'>
	<madeBySmallAmp>
	| y c x aNSPowScale |
	y := #(-10 -13 -15).
	x := #(4 6 9).
	c := RSChart new.
	aNSPowScale := c ySqrt.
	self assert:
		aNSPowScale class equals: NSPowScale.
	c
		colors;
		extent;
		addPlot: (RSLinePlot new x: x y: y);
		build
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMinMaxValue2_amp_A49 [
	"I test correctness of: 

- `^ self xScale: NSScale sqrt` in method: `RSChart >> #xSqrt`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#xSqrt#8#34'>
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

{ #category : #tests }
RSChartTest >> testMustInclude0 [

	| y c |
	y := #(10 13 15).
	c := RSChart new.
	c addPlot: (RSLinePlot new y: y).
	c mustInclude0inY.
	c build.
	self assert: c minValueX equals: 1.
	self assert: c maxValueX equals: 3.
	self assert: c minValueY equals: 0.
	self assert: c maxValueY equals: 15.
]

{ #category : #tests }
RSChartTest >> testMustInclude02 [

	| y c |
	y := #(-10 -13 -15).
	c := RSChart new.
	c addPlot: (RSLinePlot new y: y).
	c mustInclude0inY.
	c build.
	self assert: c minValueX equals: 1.
	self assert: c maxValueX equals: 3.
	self assert: c minValueY equals: -15.
	self assert: c maxValueY equals: 0.
]

{ #category : #tests }
RSChartTest >> testMustInclude03 [

	| y c x |
	y := #(-10 -13 -15).
	x := #(4 6 9).
	c := RSChart new.
	c addPlot: (RSLinePlot new x: x y: y).
	c mustInclude0inX.
	c build.
	self assert: c minValueX equals: 0.
	self assert: c maxValueX equals: 9.
	self assert: c minValueY equals: -15.
	self assert: c maxValueY equals: -10.
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMustInclude0_amp_A150 [
	"I test correctness of: 

- `^ self yScale: NSScale linear` in method: `RSChart >> #yLinear`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#yLinear#10#38'>
	<madeBySmallAmp>
	| y c aNSLinearScale |
	y := #(10 13 15).
	c := RSChart new.
	aNSLinearScale := c
		addPlot: (RSLinePlot new y: y);
		mustInclude0inY;
		build;
		yLinear.
	self assert:
		aNSLinearScale class equals: NSLinearScale
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMustInclude0_amp_A157 [
	"I test correctness of: 

- `^ self yScale: NSScale symlog` in method: `RSChart >> #yLog`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#yLog#7#35'>
	<madeBySmallAmp>
	| y c aNSSymLogScale |
	y := #(10 13 15).
	c := RSChart new.
	aNSSymLogScale := c
		addPlot: (RSLinePlot new y: y);
		mustInclude0inY;
		build;
		yLog.
	self assert:
		aNSSymLogScale class equals: NSSymLogScale
]

{ #category : #tests }
RSChartTest >> testWithWeirdValues [

	| values g d line c |
	values := {Float infinity negated. Float infinity negated. 0.30102999566398114. 0.47712125471966244}.
	g := RSChart new.
	d := RSLinePlot new y: values.
	g addPlot: d.
	g build.
	c := g canvas.
	
	self assert: c numberOfShapes equals: 2.
	self assert: c shapes first class equals: RSBox.
	
	line := c shapes second.
	self assert: line controlPoints size equals: 2.
]

{ #category : #tests }
RSChartTest >> testWithWeirdValuesLine [

	| values g d line c |
	values := {Float infinity negated. Float infinity negated. 0.30102999566398114. 0.47712125471966244}.
	g := RSChart new.
	d := RSLinePlot new y: values.
	g addPlot: d.
	g build.
	c := g canvas.
	
	self assert: c numberOfShapes equals: 2.
	self assert: c shapes first class equals: RSBox.
	
	line := c shapes second.
	self assert: line controlPoints size equals: 2.
]

{ #category : #tests }
RSChartTest >> testWithWeirdValuesLineWithTicks [

	| values g d line c |
	values := {Float infinity negated. Float infinity negated. 0.30102999566398114. 0.47712125471966244}.
	g := RSChart new.
	d := RSLinePlot new y: values.
	g addPlot: d.
	g addDecoration: RSHorizontalTick new.
	g addDecoration: RSVerticalTick new.
	g build.
	c := g canvas.
	
	self assert: c numberOfShapes equals: 20.
	self assert: c shapes first class equals: RSBox.
	
	line := c shapes second.
	self assert: line controlPoints size equals: 2.
]

{ #category : #tests }
RSChartTest >> testWithWeirdValuesLineWithTicks2 [
	| x g d c labels |
	x := { -5 . 0 . 1 . 2 }.
	g := RSChart new.
	d := RSLinePlot new x: x y: x log.
	g addPlot: d.
	g addDecoration: RSVerticalTick new.
	g build.
	
	self assert: g minValueX equals: -5.
	self assert: g minValueY equals: 0.

	self assert: g maxValueX equals: 2.
	self assert: g maxValueY equals: 8 / 25.

	c := g canvas.
	
	labels := c shapes select: [ :s | s class == RSLabel ].
	self assert: labels first position y <= 0
	
]

{ #category : #'as yet unclassified' }
RSChartTest >> testWithWeirdValuesLineWithTicks2_amp_A2_A143 [
	"I test correctness of: 

- `^ self yScale: NSScale log` in method: `RSChart >> #yRawLog`

"

	<smallAmpCoveres: 'ReplaceDoBlockWithEmptyBlockOperator#RSChart#yScale:#17#64'>
	<madeBySmallAmp>
	| x g d c labels aNSLogScale |
	x := {-5 . 0 . 1 . 2}.
	g := RSChart new.
	g niceGenerator.
	d := RSLinePlot new x: x y: x log.
	aNSLogScale := g
		addPlot: d;
		addDecoration: RSVerticalTick new;
		yRawLog.
	self
		assert:
			aNSLogScale class equals: NSLogScale;
		should: [ g build ] raise: AssertionFailure
]

{ #category : #'as yet unclassified' }
RSChartTest >> testWithWeirdValuesLine_amp_A182_A88 [
	"I test correctness of: 

- `^ colors scale: aRSPlot` in method: `RSChart >> #colorFor:`

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#colorFor:#103#125'>
	<madeBySmallAmp>
	| values g d line c aColor |
	values := {Float infinity negated.
	Float infinity negated.
	0.30102999566398114.
	0.47712125471966244}.
	g := RSChart new.
	d := RSLinePlot new y: values.
	aColor := g
		addPlot: d;
		build;
		colorFor: RSLinePlot new.
	self assert:
		aColor class equals: Color.
	c := g canvas
]

{ #category : #tests }
RSChartTest >> testYMarker [

	| x c p1 p2 marker line |
	x := -3.14 to: 3.14 by: 0.01.
	c := RSChart new.
	p1 := RSLinePlot new.
	p1 x: x y: x sin * 0.22.
	c addPlot: p1.
	p2 := RSLinePlot new.
	p2 x: x y: x cos * 0.18.
	c addPlot: p2.
	c addDecoration: RSHorizontalTick new.
	c addDecoration: RSVerticalTick new asFloat.

	marker := RSYMarkerDecoration new.
	c addDecoration: marker.
	c build.
	
	line := marker createMarkerLineFromPlot: p2.
	self assert: line from equals: (0@ -175.0).
	self assert: line to equals: (200@ -175.0)
]
