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
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#colors#31#38'>
	<madeBySmallAmp>
	| x aRSChart aRSHorizontalTick |
	x := -10.0 to: 20.0 count: 100.
	aRSChart := RSChart new.
	self
		assert:
			aRSChart class equals: RSChart;
		assert:
			aRSChart numberOfPlots equals: 0.
	aRSHorizontalTick := aRSChart
		addPlot: (RSScatterPlot new x: x y: (x raisedTo: 3));
		addPlot: (RSLinePlot new x: x y: (x raisedTo: 2));
		addDecoration: RSHorizontalTick new.
	self
		assert:
			aRSHorizontalTick class equals: RSHorizontalTick;
		assert:
			aRSHorizontalTick defaultNiceLabel class
			equals: RSNiceLabel;
		assert:
			aRSHorizontalTick defaultNiceLabel step equals: 6.0;
		assert:
			aRSHorizontalTick defaultNiceLabel numberOfTicks
			equals: 5.0;
		assert:
			aRSHorizontalTick defaultNiceLabel ticks equals: 30.0;
		assert:
			aRSHorizontalTick defaultNiceLabel max equals: 20.0;
		assert:
			aRSHorizontalTick defaultNiceLabel score equals: 0;
		assert:
			aRSHorizontalTick defaultNiceLabel min equals: -10.0;
		assert:
			aRSHorizontalTick labelRotation equals: 0;
		assert:
			aRSHorizontalTick ticks isNil;
		assert:
			aRSHorizontalTick defaultLabelLocation class
			equals: RSLocation;
		assert:
			aRSHorizontalTick defaultLabelLocation offset equals: 0 @ 3;
		assert:
			aRSHorizontalTick max equals: 20.0;
		assert:
			aRSHorizontalTick labels isNil;
		assert:
			aRSHorizontalTick min equals: -10.0;
		assert:
			aRSHorizontalTick defaultConfiguration class
			equals: RSTickConfiguration;
		assert:
			aRSHorizontalTick defaultConfiguration shouldUseNiceLabel;
		assert:
			aRSHorizontalTick defaultConfiguration labelRotation
			equals: 0;
		assert:
			aRSHorizontalTick defaultConfiguration numberOfTicks
			equals: 5;
		assert:
			aRSHorizontalTick defaultConfiguration shouldHaveLabels;
		assert:
			aRSHorizontalTick defaultConfiguration labelConversion class
			equals: BlockClosure;
		assert:
			aRSHorizontalTick defaultConfiguration labelConversion sourceNode
				formattedCode
			equals: 'value';
		assert:
			aRSHorizontalTick defaultConfiguration tickSize equals: 3;
		assert:
			aRSHorizontalTick defaultConfiguration fontSize equals: 5.
	aRSChart addDecoration: RSVerticalTick new
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
	self assert: c maxValueY equals: 15
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
	self assert: c maxValueY equals: -10
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMinMaxValue2_amp_A27 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#xLinear#10#38'>
	<madeBySmallAmp>
	| y c x aNSLinearScale |
	y := #(-10 -13 -15).
	x := #(4 6 9).
	c := RSChart new.
	aNSLinearScale := c xLinear.
	self
		assert:
			aNSLinearScale class equals: NSLinearScale;
		assert:
			aNSLinearScale range class equals: Array;
		assert:
			aNSLinearScale range size equals: 2;
		assert:
			aNSLinearScale range equals: #(0 1);
		assert:
			aNSLinearScale interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLinearScale to equals: 1;
		deny:
			aNSLinearScale clamp;
		assert:
			aNSLinearScale from equals: 0;
		assert:
			aNSLinearScale uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLinearScale input class equals: NSBilinearScale;
		assert:
			aNSLinearScale input range class equals: Array;
		assert:
			aNSLinearScale input range size equals: 2;
		assert:
			aNSLinearScale input range equals: #(0 1);
		assert:
			aNSLinearScale input interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLinearScale input to equals: 1;
		assert:
			aNSLinearScale input from equals: 0;
		assert:
			aNSLinearScale input uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLinearScale input domain class equals: Array;
		assert:
			aNSLinearScale input domain size equals: 2;
		assert:
			aNSLinearScale input domain equals: #(0 1);
		assert:
			aNSLinearScale domain class equals: Array;
		assert:
			aNSLinearScale domain size equals: 2;
		assert:
			aNSLinearScale domain equals: #(0 1);
		assert:
			aNSLinearScale output class equals: NSBilinearScale;
		assert:
			aNSLinearScale output range class equals: Array;
		assert:
			aNSLinearScale output range size equals: 2;
		assert:
			aNSLinearScale output range equals: #(0 1);
		assert:
			aNSLinearScale output interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLinearScale output to equals: 1;
		assert:
			aNSLinearScale output from equals: 0;
		assert:
			aNSLinearScale output uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLinearScale output domain class equals: Array;
		assert:
			aNSLinearScale output domain size equals: 2;
		assert:
			aNSLinearScale output domain equals: #(0 1).
	c
		addPlot: (RSLinePlot new x: x y: y);
		build
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMinMaxValue2_amp_A80_A159_A131 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#colorFor:#103#125'>
	<madeBySmallAmp>
	| y c x aColor |
	y := #(-10 -13 -15).
	x := #(4 6 9).
	c := RSChart new.
	aColor := c
		addPlot: (RSLinePlot new x: x y: y);
		numberOfPlots;
		colorFor: RSLinePlot new.
	self
		assert:
			aColor class equals: Color;
		assert:
			aColor hsvSaturation equals: 0.8282548476454293;
		assert:
			aColor alpha equals: 1.0;
		assert:
			aColor red equals: 0.12121212121212122;
		assert:
			aColor brightness equals: 0.7057673509286413;
		assert:
			aColor name equals: #unnamed;
		assert:
			aColor hue equals: 204.5819397993311;
		assert:
			aColor beOpaque class equals: Color;
		assert:
			aColor beOpaque hsvSaturation equals: 0.8282548476454293;
		assert:
			aColor beOpaque alpha equals: 1.0;
		assert:
			aColor beOpaque red equals: 0.12121212121212122;
		assert:
			aColor beOpaque brightness equals: 0.7057673509286413;
		assert:
			aColor beOpaque name equals: #unnamed;
		assert:
			aColor beOpaque hue equals: 204.5819397993311;
		assert:
			aColor beOpaque beOpaque class equals: Color;
		assert:
			aColor beOpaque beOpaque hsvSaturation
			equals: 0.8282548476454293;
		assert:
			aColor beOpaque beOpaque alpha equals: 1.0;
		assert:
			aColor beOpaque beOpaque red equals: 0.12121212121212122;
		assert:
			aColor beOpaque beOpaque brightness
			equals: 0.7057673509286413;
		assert:
			aColor beOpaque beOpaque name equals: #unnamed;
		assert:
			aColor beOpaque beOpaque hue equals: 204.5819397993311;
		assert:
			aColor beOpaque beOpaque beOpaque class equals: Color;
		assert:
			aColor beOpaque beOpaque green equals: 0.4662756598240469;
		assert:
			aColor beOpaque beOpaque chroma equals: 0.5845552297165201;
		assert:
			aColor beOpaque beOpaque lightness
			equals: 0.41348973607038125;
		assert:
			aColor beOpaque beOpaque hslSaturation
			equals: 0.706855791962175;
		assert:
			aColor beOpaque beOpaque saturation
			equals: 0.8282548476454293;
		assert:
			aColor beOpaque beOpaque luminance
			equals: 0.3904037145650049;
		assert:
			aColor beOpaque beOpaque blue equals: 0.7057673509286413;
		assert:
			aColor beOpaque green equals: 0.4662756598240469;
		assert:
			aColor beOpaque chroma equals: 0.5845552297165201;
		assert:
			aColor beOpaque lightness equals: 0.41348973607038125;
		assert:
			aColor beOpaque hslSaturation equals: 0.706855791962175;
		assert:
			aColor beOpaque saturation equals: 0.8282548476454293;
		assert:
			aColor beOpaque luminance equals: 0.3904037145650049;
		assert:
			aColor beOpaque blue equals: 0.7057673509286413;
		assert:
			aColor green equals: 0.4662756598240469;
		assert:
			aColor chroma equals: 0.5845552297165201;
		assert:
			aColor lightness equals: 0.41348973607038125;
		assert:
			aColor hslSaturation equals: 0.706855791962175;
		assert:
			aColor saturation equals: 0.8282548476454293;
		assert:
			aColor luminance equals: 0.3904037145650049;
		assert:
			aColor blue equals: 0.7057673509286413.
	c
		defaultPlotColors;
		build
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMinMaxValue_amp_A0 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#yLog#7#35'>
	<madeBySmallAmp>
	| y c aNSSymLogScale |
	y := #(10 13 15).
	c := RSChart new.
	aNSSymLogScale := c yLog.
	self
		assert:
			aNSSymLogScale class equals: NSSymLogScale;
		assert:
			aNSSymLogScale range class equals: Array;
		assert:
			aNSSymLogScale range size equals: 2;
		assert:
			aNSSymLogScale range equals: #(0 1);
		assert:
			aNSSymLogScale interpolate asString
			equals: 'NSInterpolator';
		deny:
			aNSSymLogScale clamp;
		assert:
			aNSSymLogScale constant equals: 1;
		assert:
			aNSSymLogScale input class equals: NSBilinearScale;
		assert:
			aNSSymLogScale input range class equals: Array;
		assert:
			aNSSymLogScale input range size equals: 2;
		assert:
			aNSSymLogScale input range equals: #(0 1);
		assert:
			aNSSymLogScale input interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSSymLogScale input to equals: 1;
		assert:
			aNSSymLogScale input from equals: 0;
		assert:
			aNSSymLogScale input uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSSymLogScale input domain class equals: Array;
		assert:
			aNSSymLogScale input domain size equals: 2;
		assert:
			aNSSymLogScale input domain equals: #(0 1);
		assert:
			aNSSymLogScale output class equals: NSBilinearScale;
		assert:
			aNSSymLogScale output range class equals: Array;
		assert:
			aNSSymLogScale output range size equals: 2;
		assert:
			aNSSymLogScale output range equals: #(0 1);
		assert:
			aNSSymLogScale output interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSSymLogScale output to equals: 1;
		assert:
			aNSSymLogScale output from equals: 0;
		assert:
			aNSSymLogScale output uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSSymLogScale output domain class equals: Array;
		assert:
			aNSSymLogScale output domain size equals: 2;
		assert:
			aNSSymLogScale output domain equals: #(0 1).
	c
		addPlot: (RSLinePlot new y: y);
		build
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMinMaxValue_amp_A105 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#yScale:#68#75'>
	<madeBySmallAmp>
	| y c aNSLnScale |
	y := #(10 13 15).
	c := RSChart new.
	aNSLnScale := c
		addPlot: (RSLinePlot new y: y);
		build;
		yLn.
	self
		assert:
			aNSLnScale class equals: NSLnScale;
		assert:
			aNSLnScale range class equals: Array;
		assert:
			aNSLnScale range size equals: 2;
		assert:
			aNSLnScale range equals: #(0 1);
		assert:
			aNSLnScale interpolate asString equals: 'NSInterpolator';
		deny:
			aNSLnScale clamp;
		assert:
			aNSLnScale input class equals: NSBilinearScale;
		assert:
			aNSLnScale input range class equals: Array;
		assert:
			aNSLnScale input range size equals: 2;
		assert:
			aNSLnScale input range equals: #(0 1);
		assert:
			aNSLnScale input interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLnScale input to equals: 1;
		assert:
			aNSLnScale input from equals: 0;
		assert:
			aNSLnScale input uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLnScale input domain class equals: Array;
		assert:
			aNSLnScale input domain size equals: 2;
		assert:
			aNSLnScale input domain equals: #(0 1);
		assert:
			aNSLnScale output class equals: NSBilinearScale;
		assert:
			aNSLnScale output range class equals: Array;
		assert:
			aNSLnScale output range size equals: 2;
		assert:
			aNSLnScale output range equals: #(0 1);
		assert:
			aNSLnScale output interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLnScale output to equals: 1;
		assert:
			aNSLnScale output from equals: 0;
		assert:
			aNSLnScale output uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLnScale output domain class equals: Array;
		assert:
			aNSLnScale output domain size equals: 2;
		assert:
			aNSLnScale output domain equals: #(0 1)
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMinMaxValue_amp_A19 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#xSqrt#8#34'>
	<madeBySmallAmp>
	| y c aNSPowScale |
	y := #(10 13 15).
	c := RSChart new.
	aNSPowScale := c xSqrt.
	self
		assert:
			aNSPowScale class equals: NSPowScale;
		assert:
			aNSPowScale range class equals: Array;
		assert:
			aNSPowScale range size equals: 2;
		assert:
			aNSPowScale range equals: #(0 1);
		assert:
			aNSPowScale interpolate asString equals: 'NSInterpolator';
		deny:
			aNSPowScale clamp;
		assert:
			aNSPowScale exponent equals: 0.5;
		assert:
			aNSPowScale input isNil;
		assert:
			aNSPowScale output isNil.
	c
		addPlot: (RSLinePlot new y: y);
		build
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMinMaxValue_amp_A94_A234_A117 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#xLn#6#30'>
	<madeBySmallAmp>
	| y c aNSLnScale |
	y := #(10 13 15).
	c := RSChart new.
	aNSLnScale := (c addPlot: (RSLinePlot new y: y)) xLn.
	self
		assert:
			aNSLnScale class equals: NSLnScale;
		assert:
			aNSLnScale range class equals: Array;
		assert:
			aNSLnScale range size equals: 2;
		assert:
			aNSLnScale range equals: #(0 1);
		assert:
			aNSLnScale interpolate asString equals: 'NSInterpolator';
		deny:
			aNSLnScale clamp;
		assert:
			aNSLnScale input class equals: NSBilinearScale;
		assert:
			aNSLnScale input range class equals: Array;
		assert:
			aNSLnScale input range size equals: 2;
		assert:
			aNSLnScale input range equals: #(0 1);
		assert:
			aNSLnScale input interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLnScale input to equals: 1;
		assert:
			aNSLnScale input from equals: 0;
		assert:
			aNSLnScale input uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLnScale input domain class equals: Array;
		assert:
			aNSLnScale input domain size equals: 2;
		assert:
			aNSLnScale input domain equals: #(0 1);
		assert:
			aNSLnScale output class equals: NSBilinearScale;
		assert:
			aNSLnScale output range class equals: Array;
		assert:
			aNSLnScale output range size equals: 2;
		assert:
			aNSLnScale output range equals: #(0 1);
		assert:
			aNSLnScale output interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLnScale output to equals: 1;
		assert:
			aNSLnScale output from equals: 0;
		assert:
			aNSLnScale output uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLnScale output domain class equals: Array;
		assert:
			aNSLnScale output domain size equals: 2;
		assert:
			aNSLnScale output domain equals: #(0 1).
	c
		build;
		mustInclude0inY;
		mustInclude0inX
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
	self assert: c maxValueY equals: 15
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
	self assert: c maxValueY equals: 0
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMustInclude02_amp_A112_L14_A115 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#yLinear#10#38'>
	<madeBySmallAmp>
	| y c aNSLinearScale |
	y := #(-10 0 -15).
	c := RSChart new.
	aNSLinearScale := (c addPlot: (RSLinePlot new y: y)) yLinear.
	self
		assert:
			aNSLinearScale class equals: NSLinearScale;
		assert:
			aNSLinearScale range class equals: Array;
		assert:
			aNSLinearScale range size equals: 2;
		assert:
			aNSLinearScale range equals: #(0 1);
		assert:
			aNSLinearScale interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLinearScale to equals: 1;
		deny:
			aNSLinearScale clamp;
		assert:
			aNSLinearScale from equals: 0;
		assert:
			aNSLinearScale uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLinearScale input class equals: NSBilinearScale;
		assert:
			aNSLinearScale input range class equals: Array;
		assert:
			aNSLinearScale input range size equals: 2;
		assert:
			aNSLinearScale input range equals: #(0 1);
		assert:
			aNSLinearScale input interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLinearScale input to equals: 1;
		assert:
			aNSLinearScale input from equals: 0;
		assert:
			aNSLinearScale input uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLinearScale input domain class equals: Array;
		assert:
			aNSLinearScale input domain size equals: 2;
		assert:
			aNSLinearScale input domain equals: #(0 1);
		assert:
			aNSLinearScale domain class equals: Array;
		assert:
			aNSLinearScale domain size equals: 2;
		assert:
			aNSLinearScale domain equals: #(0 1);
		assert:
			aNSLinearScale output class equals: NSBilinearScale;
		assert:
			aNSLinearScale output range class equals: Array;
		assert:
			aNSLinearScale output range size equals: 2;
		assert:
			aNSLinearScale output range equals: #(0 1);
		assert:
			aNSLinearScale output interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLinearScale output to equals: 1;
		assert:
			aNSLinearScale output from equals: 0;
		assert:
			aNSLinearScale output uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLinearScale output domain class equals: Array;
		assert:
			aNSLinearScale output domain size equals: 2;
		assert:
			aNSLinearScale output domain equals: #(0 1).
	c
		mustInclude0inY;
		maxValueX: 4;
		build
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMustInclude02_amp_A157 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#yRawLog#64#89'>
	<madeBySmallAmp>
	| y c aNSLogScale |
	y := #(-10 -13 -15).
	c := RSChart new.
	aNSLogScale := c
		addPlot: (RSLinePlot new y: y);
		mustInclude0inY;
		build;
		yRawLog.
	self
		assert:
			aNSLogScale class equals: NSLogScale;
		assert:
			aNSLogScale range class equals: Array;
		assert:
			aNSLogScale range size equals: 2;
		assert:
			aNSLogScale range equals: #(0 1);
		assert:
			aNSLogScale interpolate asString equals: 'NSInterpolator';
		assert:
			aNSLogScale base equals: 10;
		deny:
			aNSLogScale clamp;
		assert:
			aNSLogScale uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLogScale input class equals: NSBilinearScale;
		assert:
			aNSLogScale input range class equals: Array;
		assert:
			aNSLogScale input range size equals: 2;
		assert:
			aNSLogScale input range equals: #(0 1);
		assert:
			aNSLogScale input interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLogScale input to equals: 1;
		assert:
			aNSLogScale input from equals: 0;
		assert:
			aNSLogScale input uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLogScale input domain class equals: Array;
		assert:
			aNSLogScale input domain size equals: 2;
		assert:
			aNSLogScale input domain equals: #(0 1);
		assert:
			aNSLogScale output class equals: NSBilinearScale;
		assert:
			aNSLogScale output range class equals: Array;
		assert:
			aNSLogScale output range size equals: 2;
		assert:
			aNSLogScale output range equals: #(0 1);
		assert:
			aNSLogScale output interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSLogScale output to equals: 1;
		assert:
			aNSLogScale output from equals: 0;
		assert:
			aNSLogScale output uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSLogScale output domain class equals: Array;
		assert:
			aNSLogScale output domain size equals: 2;
		assert:
			aNSLogScale output domain equals: #(0 1)
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMustInclude02_amp_L11 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#mustInclude0inY#124#129'>
	<madeBySmallAmp>
	| y c |
	y := #(-10 13 -15).
	c := RSChart new.
	c
		addPlot: (RSLinePlot new y: y);
		mustInclude0inY.
	self
		assert: c class equals: RSChart;
		assert: c minValueY equals: -15.
	c build
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
	self assert: c maxValueY equals: -10
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMustInclude03_amp_A49_A37 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#xLog#7#35'>
	<madeBySmallAmp>
	| y c x aNSSymLogScale |
	y := #(-10 -13 -15).
	x := #(4 6 9).
	c := RSChart new.
	aNSSymLogScale := c xLog.
	self
		assert:
			aNSSymLogScale class equals: NSSymLogScale;
		assert:
			aNSSymLogScale range class equals: Array;
		assert:
			aNSSymLogScale range size equals: 2;
		assert:
			aNSSymLogScale range equals: #(0 1);
		assert:
			aNSSymLogScale interpolate asString
			equals: 'NSInterpolator';
		deny:
			aNSSymLogScale clamp;
		assert:
			aNSSymLogScale constant equals: 1;
		assert:
			aNSSymLogScale input class equals: NSBilinearScale;
		assert:
			aNSSymLogScale input range class equals: Array;
		assert:
			aNSSymLogScale input range size equals: 2;
		assert:
			aNSSymLogScale input range equals: #(0 1);
		assert:
			aNSSymLogScale input interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSSymLogScale input to equals: 1;
		assert:
			aNSSymLogScale input from equals: 0;
		assert:
			aNSSymLogScale input uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSSymLogScale input domain class equals: Array;
		assert:
			aNSSymLogScale input domain size equals: 2;
		assert:
			aNSSymLogScale input domain equals: #(0 1);
		assert:
			aNSSymLogScale output class equals: NSBilinearScale;
		assert:
			aNSSymLogScale output range class equals: Array;
		assert:
			aNSSymLogScale output range size equals: 2;
		assert:
			aNSSymLogScale output range equals: #(0 1);
		assert:
			aNSSymLogScale output interpolate asString
			equals: 'NSInterpolator';
		assert:
			aNSSymLogScale output to equals: 1;
		assert:
			aNSSymLogScale output from equals: 0;
		assert:
			aNSSymLogScale output uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aNSSymLogScale output domain class equals: Array;
		assert:
			aNSSymLogScale output domain size equals: 2;
		assert:
			aNSSymLogScale output domain equals: #(0 1).
	c
		addPlot: (RSLinePlot new x: x y: y);
		colorFor: RSLinePlot new;
		mustInclude0inX;
		build
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMustInclude03_amp_A81_O2_O4 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#mustInclude0inX#124#129'>
	<madeBySmallAmp>
	| y c x |
	y := #(-15 4 6).
	x := #(9 -10 -13).
	c := RSChart new.
	c
		addPlot: (RSLinePlot new x: x y: y);
		maxValueX;
		mustInclude0inX.
	self
		assert: c class equals: RSChart;
		assert: c minValueX equals: -13.
	c build
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMustInclude03_amp_U1 [
	<smallAmpCoveres:
		'ReplaceIfTrueIfFalseReceiverWithTrueOperator#RSChart#mustInclude0inX#137#220'>
	<madeBySmallAmp>
	| y c x |
	y := #(-13 -13 -13).
	x := #(-13 -13 -13).
	c := RSChart new.
	c
		addPlot: (RSLinePlot new x: x y: y);
		mustInclude0inX.
	self
		assert: c class equals: RSChart;
		assert: c maxValueX equals: 0;
		assert: c minValueX equals: -13.
	c build
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMustInclude0_amp_A61 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#ySqrt#8#34'>
	<madeBySmallAmp>
	| y c aNSPowScale |
	y := #(10 13 15).
	c := RSChart new.
	aNSPowScale := c
		addPlot: (RSLinePlot new y: y);
		ySqrt.
	self
		assert:
			aNSPowScale class equals: NSPowScale;
		assert:
			aNSPowScale range class equals: Array;
		assert:
			aNSPowScale range size equals: 2;
		assert:
			aNSPowScale range equals: #(0 1);
		assert:
			aNSPowScale interpolate asString equals: 'NSInterpolator';
		deny:
			aNSPowScale clamp;
		assert:
			aNSPowScale exponent equals: 0.5;
		assert:
			aNSPowScale input isNil;
		assert:
			aNSPowScale output isNil.
	c
		mustInclude0inY;
		build
]

{ #category : #'as yet unclassified' }
RSChartTest >> testMustInclude0_amp_L5_A206 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#inspectorCanvas#82#149'>
	<madeBySmallAmp>
	| y c aSpRoassal3InspectorPresenter |
	y := #(0 13 15).
	c := RSChart new.
	aSpRoassal3InspectorPresenter := c
		addPlot: (RSLinePlot new y: y);
		mustInclude0inY;
		build;
		inspectorCanvas.
	self
		assert:
			aSpRoassal3InspectorPresenter class
			equals: SpRoassal3InspectorPresenter;
		assert:
			aSpRoassal3InspectorPresenter morph class
			equals: RSAthensMorph;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds class
			equals: Rectangle;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds top
			equals: 0;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds extent class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds hasPositiveExtent;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds area
			equals: 2000;
		deny:
			aSpRoassal3InspectorPresenter morph fullBounds isTall;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds aboveCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds bottomCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds corner class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds left
			equals: 0;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds origin class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds width
			equals: 50;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds right
			equals: 50;
		deny:
			aSpRoassal3InspectorPresenter morph fullBounds isZero;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds isWide;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds innerCorners class
			equals: Array;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds innerCorners size
			equals: 4;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds topCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds topRight class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds bottomRight class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds center class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds topLeft class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds bottom
			equals: 40;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds floatCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds leftCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds isRectangle;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds bottomLeft class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds corners class
			equals: Array;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds corners size
			equals: 4;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds rightCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph fullBounds height
			equals: 40;
		assert:
			aSpRoassal3InspectorPresenter morph scaleFactor equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph embeddedWindowOrNil isNil;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor hsvSaturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor alpha
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor red
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor brightness
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor name
			equals: #blue;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor hue
			equals: 240.0;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor beOpaque class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor green
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor chroma
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor lightness
			equals: 0.5;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor hslSaturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor saturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor luminance
			equals: 0.114;
		assert:
			aSpRoassal3InspectorPresenter morph insetColor blue
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph userString isNil;
		assert:
			aSpRoassal3InspectorPresenter morph bounds class
			equals: Rectangle;
		assert:
			aSpRoassal3InspectorPresenter morph bounds top equals: 0;
		assert:
			aSpRoassal3InspectorPresenter morph bounds extent class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds hasPositiveExtent;
		assert:
			aSpRoassal3InspectorPresenter morph bounds area
			equals: 2000;
		deny:
			aSpRoassal3InspectorPresenter morph bounds isTall;
		assert:
			aSpRoassal3InspectorPresenter morph bounds aboveCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds bottomCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds corner class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds left equals: 0;
		assert:
			aSpRoassal3InspectorPresenter morph bounds origin class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds width equals: 50;
		assert:
			aSpRoassal3InspectorPresenter morph bounds right equals: 50;
		deny:
			aSpRoassal3InspectorPresenter morph bounds isZero;
		assert:
			aSpRoassal3InspectorPresenter morph bounds isWide;
		assert:
			aSpRoassal3InspectorPresenter morph bounds innerCorners class
			equals: Array;
		assert:
			aSpRoassal3InspectorPresenter morph bounds innerCorners size
			equals: 4;
		assert:
			aSpRoassal3InspectorPresenter morph bounds topCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds topRight class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds bottomRight class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds center class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds topLeft class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds bottom
			equals: 40;
		assert:
			aSpRoassal3InspectorPresenter morph bounds floatCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds leftCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds isRectangle;
		assert:
			aSpRoassal3InspectorPresenter morph bounds bottomLeft class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds corners class
			equals: Array;
		assert:
			aSpRoassal3InspectorPresenter morph bounds corners size
			equals: 4;
		assert:
			aSpRoassal3InspectorPresenter morph bounds rightCenter class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph bounds height
			equals: 40;
		assert:
			aSpRoassal3InspectorPresenter morph surface class
			equals: AthensCairoSurface;
		assert:
			aSpRoassal3InspectorPresenter morph surface extent class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph surface handle class
			equals: SmallInteger;
		assert:
			aSpRoassal3InspectorPresenter morph surface getDataPtr class
			equals: ExternalData;
		assert:
			aSpRoassal3InspectorPresenter morph surface status
			equals: 0;
		assert:
			aSpRoassal3InspectorPresenter morph surface height
			equals: 40;
		assert:
			aSpRoassal3InspectorPresenter morph surface width
			equals: 50;
		assert:
			aSpRoassal3InspectorPresenter morph surface isSuccess;
		assert:
			aSpRoassal3InspectorPresenter morph surface stride
			equals: 200;
		deny:
			aSpRoassal3InspectorPresenter morph isLocked;
		deny:
			aSpRoassal3InspectorPresenter morph isDrawing;
		deny:
			aSpRoassal3InspectorPresenter morph isDragging;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas class
			equals: RSCanvas;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas deepNodes class
			equals: OrderedCollection;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas deepNodes size
			equals: 2;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas extent class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas numberOfEdges
			equals: 1;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas animations class
			equals: OrderedCollection;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph roassalCanvas animations;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas lines class
			equals: RSGroup;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas lines size
			equals: 1;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas color class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas numberOfNodes
			equals: 2;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas shapes class
			equals: RSGroup;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas shapes size
			equals: 3;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas numberOfShapes
			equals: 3;
		deny:
			aSpRoassal3InspectorPresenter morph roassalCanvas showRectangles;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas visibleRectangle
				class
			equals: Rectangle;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas numberOfDeepNodes
			equals: 2;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas fixedShapes class
			equals: RSGroup;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas fixedShapes size
			equals: 3;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas edges class
			equals: RSGroup;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas edges size
			equals: 1;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas clearBackground;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas numberOfFixedShapes
			equals: 3;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas
				encompassingRectangle class
			equals: Rectangle;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas announcer class
			equals: Announcer;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas camera class
			equals: RSConfigurableCamera;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas basicRectangle class
			equals: Rectangle;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas morph class
			equals: RSAthensMorph;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas nodes class
			equals: RSGroup;
		assert:
			aSpRoassal3InspectorPresenter morph roassalCanvas nodes size
			equals: 2;
		deny:
			aSpRoassal3InspectorPresenter morph roassalCanvas isShape;
		assert:
			aSpRoassal3InspectorPresenter morph owner isNil;
		assert:
			aSpRoassal3InspectorPresenter morph otherProperties class
			equals: SmallIdentityDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph otherProperties size
			equals: 0;
		assert:
			aSpRoassal3InspectorPresenter morph otherProperties values class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph otherProperties values;
		assert:
			aSpRoassal3InspectorPresenter morph otherProperties keysSortedSafely
				class
			equals: SortedCollection;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph otherProperties keysSortedSafely;
		assert:
			aSpRoassal3InspectorPresenter morph otherProperties isDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph otherProperties isHealthy;
		assert:
			aSpRoassal3InspectorPresenter morph otherProperties associations class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph otherProperties associations;
		assert:
			aSpRoassal3InspectorPresenter morph otherProperties keys class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph otherProperties keys;
		assert:
			aSpRoassal3InspectorPresenter morph otherProperties capacity
			equals: 2;
		assert:
			aSpRoassal3InspectorPresenter morph dockingBars class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph dockingBars;
		deny:
			aSpRoassal3InspectorPresenter morph isFlexed;
		deny:
			aSpRoassal3InspectorPresenter morph resistsRemoval;
		assert:
			aSpRoassal3InspectorPresenter morph submorphCount equals: 0;
		assert:
			aSpRoassal3InspectorPresenter morph borderWidth equals: 0;
		assert:
			aSpRoassal3InspectorPresenter morph couldHaveRoundedCorners;
		assert:
			aSpRoassal3InspectorPresenter morph renderer class
			equals: RSAthensRenderer;
		assert:
			aSpRoassal3InspectorPresenter morph renderer canvas isNil;
		assert:
			aSpRoassal3InspectorPresenter morph renderer builder isNil;
		assert:
			aSpRoassal3InspectorPresenter morph halosEnabled;
		assert:
			aSpRoassal3InspectorPresenter morph enabled;
		assert:
			aSpRoassal3InspectorPresenter morph isFullOnScreen;
		assert:
			aSpRoassal3InspectorPresenter morph extension class
			equals: MorphExtension;
		assert:
			aSpRoassal3InspectorPresenter morph extension fillStyle isNil;
		assert:
			aSpRoassal3InspectorPresenter morph extension layoutProperties isNil;
		assert:
			aSpRoassal3InspectorPresenter morph extension otherProperties class
			equals: SmallIdentityDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph extension borderStyle isNil;
		assert:
			aSpRoassal3InspectorPresenter morph extension assureOtherProperties
				class
			equals: SmallIdentityDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph extension layoutPolicy isNil;
		assert:
			aSpRoassal3InspectorPresenter morph extension sortedPropertyNames
				class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph extension sortedPropertyNames;
		assert:
			aSpRoassal3InspectorPresenter morph extension visible;
		assert:
			aSpRoassal3InspectorPresenter morph extension actionMap class
			equals: IdentityDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph extension layoutFrame isNil;
		assert:
			aSpRoassal3InspectorPresenter morph extension externalName isNil;
		assert:
			aSpRoassal3InspectorPresenter morph extension eventHandler isNil;
		deny:
			aSpRoassal3InspectorPresenter morph extension sticky;
		deny:
			aSpRoassal3InspectorPresenter morph extension locked;
		assert:
			aSpRoassal3InspectorPresenter morph extension cornerStyle
			equals: #square;
		assert:
			aSpRoassal3InspectorPresenter morph extension balloonText isNil;
		assert:
			aSpRoassal3InspectorPresenter morph extension clipSubmorphs isNil;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor hsvSaturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor alpha
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor red
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor brightness
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor name
			equals: #blue;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor hue
			equals: 240.0;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor beOpaque class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor green
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor chroma
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor lightness
			equals: 0.5;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor hslSaturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor saturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor luminance
			equals: 0.114;
		assert:
			aSpRoassal3InspectorPresenter morph raisedColor blue
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets hsvSaturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets alpha
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets red
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets brightness
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets name
			equals: #blue;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets hue
			equals: 240.0;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets beOpaque class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets green
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets chroma
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets lightness
			equals: 0.5;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets hslSaturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets saturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets luminance
			equals: 0.114;
		assert:
			aSpRoassal3InspectorPresenter morph colorForInsets blue
			equals: 1.0;
		deny:
			aSpRoassal3InspectorPresenter morph isLineMorph;
		deny:
			aSpRoassal3InspectorPresenter morph shouldFlex;
		assert:
			aSpRoassal3InspectorPresenter morph submorphs class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph submorphs;
		deny:
			aSpRoassal3InspectorPresenter morph isDockingBar;
		assert:
			aSpRoassal3InspectorPresenter morph wantsToBeCachedByHand;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor hsvSaturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor alpha
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor red
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor brightness
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor name
			equals: #blue;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor hue
			equals: 240.0;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor beOpaque class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor green
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor chroma
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor lightness
			equals: 0.5;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor hslSaturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor saturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor luminance
			equals: 0.114;
		assert:
			aSpRoassal3InspectorPresenter morph highlightColor blue
			equals: 1.0;
		deny:
			aSpRoassal3InspectorPresenter morph wantsToBeTopmost;
		assert:
			aSpRoassal3InspectorPresenter morph updateableActionMap class
			equals: IdentityDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph updateableActionMap values class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph updateableActionMap values;
		assert:
			aSpRoassal3InspectorPresenter morph updateableActionMap
				keysSortedSafely class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph updateableActionMap
				keysSortedSafely;
		assert:
			aSpRoassal3InspectorPresenter morph updateableActionMap isDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph updateableActionMap isHealthy;
		assert:
			aSpRoassal3InspectorPresenter morph updateableActionMap associations
				class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph updateableActionMap associations;
		assert:
			aSpRoassal3InspectorPresenter morph updateableActionMap keys class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph updateableActionMap keys;
		deny:
			aSpRoassal3InspectorPresenter morph isTranslucentButNotTransparent;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor hsvSaturation
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor alpha
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor red
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor brightness
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor name
			equals: #transparent;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor hue
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor beOpaque class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor green
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor chroma
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor lightness
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor hslSaturation
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor saturation
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor luminance
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph borderColor blue
			equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph mainDockingBars class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph mainDockingBars;
		deny:
			aSpRoassal3InspectorPresenter morph shouldDropOnMouseUp;
		assert:
			aSpRoassal3InspectorPresenter morph eventHandler isNil;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension class
			equals: MorphExtension;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension fillStyle isNil;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension layoutProperties
				isNil;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension otherProperties
				class
			equals: SmallIdentityDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension borderStyle isNil;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension
				assureOtherProperties class
			equals: SmallIdentityDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension layoutPolicy isNil;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension
				sortedPropertyNames class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph assureExtension
				sortedPropertyNames;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension visible;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension actionMap class
			equals: IdentityDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension layoutFrame isNil;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension externalName isNil;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension eventHandler isNil;
		deny:
			aSpRoassal3InspectorPresenter morph assureExtension sticky;
		deny:
			aSpRoassal3InspectorPresenter morph assureExtension locked;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension cornerStyle
			equals: #square;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension balloonText isNil;
		assert:
			aSpRoassal3InspectorPresenter morph assureExtension clipSubmorphs
				isNil;
		assert:
			aSpRoassal3InspectorPresenter morph borderWidthForRounding
			equals: 0;
		assert:
			aSpRoassal3InspectorPresenter morph color class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph color hsvSaturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph color alpha equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph color red equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph color brightness
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph color name
			equals: #blue;
		assert:
			aSpRoassal3InspectorPresenter morph color hue equals: 240.0;
		assert:
			aSpRoassal3InspectorPresenter morph color beOpaque class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph color green equals: 0.0;
		assert:
			aSpRoassal3InspectorPresenter morph color chroma
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph color lightness
			equals: 0.5;
		assert:
			aSpRoassal3InspectorPresenter morph color hslSaturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph color saturation
			equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph color luminance
			equals: 0.114;
		assert:
			aSpRoassal3InspectorPresenter morph color blue equals: 1.0;
		assert:
			aSpRoassal3InspectorPresenter morph allMorphs class
			equals: Array;
		assert:
			aSpRoassal3InspectorPresenter morph allMorphs size
			equals: 1;
		assert: (aSpRoassal3InspectorPresenter morph allMorphs at: 1) class
			equals: RSAthensMorph;
		assert:
			aSpRoassal3InspectorPresenter morph balloonText isNil;
		assert:
			aSpRoassal3InspectorPresenter morph submorphBefore isNil;
		deny:
			aSpRoassal3InspectorPresenter morph hasSubmorphs;
		deny:
			aSpRoassal3InspectorPresenter morph doesBevels;
		assert:
			aSpRoassal3InspectorPresenter morph canvas class
			equals: RSCanvas;
		assert:
			aSpRoassal3InspectorPresenter morph canvas deepNodes class
			equals: OrderedCollection;
		assert:
			aSpRoassal3InspectorPresenter morph canvas deepNodes size
			equals: 2;
		assert:
			aSpRoassal3InspectorPresenter morph canvas extent class
			equals: Point;
		assert:
			aSpRoassal3InspectorPresenter morph canvas numberOfEdges
			equals: 1;
		assert:
			aSpRoassal3InspectorPresenter morph canvas animations class
			equals: OrderedCollection;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph canvas animations;
		assert:
			aSpRoassal3InspectorPresenter morph canvas lines class
			equals: RSGroup;
		assert:
			aSpRoassal3InspectorPresenter morph canvas lines size
			equals: 1;
		assert:
			aSpRoassal3InspectorPresenter morph canvas color class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph canvas numberOfNodes
			equals: 2;
		assert:
			aSpRoassal3InspectorPresenter morph canvas shapes class
			equals: RSGroup;
		assert:
			aSpRoassal3InspectorPresenter morph canvas shapes size
			equals: 3;
		assert:
			aSpRoassal3InspectorPresenter morph canvas numberOfShapes
			equals: 3;
		deny:
			aSpRoassal3InspectorPresenter morph canvas showRectangles;
		assert:
			aSpRoassal3InspectorPresenter morph canvas visibleRectangle class
			equals: Rectangle;
		assert:
			aSpRoassal3InspectorPresenter morph canvas numberOfDeepNodes
			equals: 2;
		assert:
			aSpRoassal3InspectorPresenter morph canvas fixedShapes class
			equals: RSGroup;
		assert:
			aSpRoassal3InspectorPresenter morph canvas fixedShapes size
			equals: 3;
		assert:
			aSpRoassal3InspectorPresenter morph canvas edges class
			equals: RSGroup;
		assert:
			aSpRoassal3InspectorPresenter morph canvas edges size
			equals: 1;
		assert:
			aSpRoassal3InspectorPresenter morph canvas clearBackground;
		assert:
			aSpRoassal3InspectorPresenter morph canvas numberOfFixedShapes
			equals: 3;
		assert:
			aSpRoassal3InspectorPresenter morph canvas encompassingRectangle class
			equals: Rectangle;
		assert:
			aSpRoassal3InspectorPresenter morph canvas announcer class
			equals: Announcer;
		assert:
			aSpRoassal3InspectorPresenter morph canvas camera class
			equals: RSConfigurableCamera;
		assert:
			aSpRoassal3InspectorPresenter morph canvas basicRectangle class
			equals: Rectangle;
		assert:
			aSpRoassal3InspectorPresenter morph canvas morph class
			equals: RSAthensMorph;
		assert:
			aSpRoassal3InspectorPresenter morph canvas nodes class
			equals: RSGroup;
		assert:
			aSpRoassal3InspectorPresenter morph canvas nodes size
			equals: 2;
		deny:
			aSpRoassal3InspectorPresenter morph canvas isShape;
		assert:
			aSpRoassal3InspectorPresenter morph allNonSubmorphMorphs class
			equals: OrderedCollection;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph allNonSubmorphMorphs;
		assert:
			aSpRoassal3InspectorPresenter morph borderStyle class
			equals: BorderStyle;
		assert:
			aSpRoassal3InspectorPresenter morph borderStyle style
			equals: #none;
		deny:
			aSpRoassal3InspectorPresenter morph borderStyle isComplex;
		assert:
			aSpRoassal3InspectorPresenter morph borderStyle widthForRounding
			equals: 0;
		assert:
			aSpRoassal3InspectorPresenter morph borderStyle color class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph borderStyle width
			equals: 0;
		deny:
			aSpRoassal3InspectorPresenter morph borderStyle hasFillStyle;
		deny:
			aSpRoassal3InspectorPresenter morph borderStyle isComposite;
		assert:
			aSpRoassal3InspectorPresenter morph borderStyle colorsAtCorners class
			equals: Array;
		assert:
			aSpRoassal3InspectorPresenter morph borderStyle colorsAtCorners size
			equals: 4;
		assert:
			aSpRoassal3InspectorPresenter morph borderStyle baseColor class
			equals: Color;
		assert:
			aSpRoassal3InspectorPresenter morph borderStyle isBorderStyle;
		assert:
			aSpRoassal3InspectorPresenter morph hasExtension;
		deny:
			aSpRoassal3InspectorPresenter morph isSticky;
		assert:
			aSpRoassal3InspectorPresenter morph submorphAfter isNil;
		deny:
			aSpRoassal3InspectorPresenter morph wantsSteps;
		assert:
			aSpRoassal3InspectorPresenter morph isMorph;
		assert:
			aSpRoassal3InspectorPresenter morph actionMap class
			equals: IdentityDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph actionMap values class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph actionMap values;
		assert:
			aSpRoassal3InspectorPresenter morph actionMap keysSortedSafely class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph actionMap keysSortedSafely;
		assert:
			aSpRoassal3InspectorPresenter morph actionMap isDictionary;
		assert:
			aSpRoassal3InspectorPresenter morph actionMap isHealthy;
		assert:
			aSpRoassal3InspectorPresenter morph actionMap associations class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph actionMap associations;
		assert:
			aSpRoassal3InspectorPresenter morph actionMap keys class
			equals: Array;
		assertEmpty:
			aSpRoassal3InspectorPresenter morph actionMap keys
]

{ #category : #tests }
RSChartTest >> testWithWeirdValues [
	| values g d line c |
	values := {Float infinity negated.
	Float infinity negated.
	0.30102999566398114.
	0.47712125471966244}.
	g := RSChart new.
	d := RSLinePlot new y: values.
	g addPlot: d.
	g build.
	c := g canvas.
	self assert: c numberOfShapes equals: 2.
	self assert: c shapes first class equals: RSBox.
	line := c shapes second.
	self assert: line controlPoints size equals: 2
]

{ #category : #tests }
RSChartTest >> testWithWeirdValuesLine [
	| values g d line c |
	values := {Float infinity negated.
	Float infinity negated.
	0.30102999566398114.
	0.47712125471966244}.
	g := RSChart new.
	d := RSLinePlot new y: values.
	g addPlot: d.
	g build.
	c := g canvas.
	self assert: c numberOfShapes equals: 2.
	self assert: c shapes first class equals: RSBox.
	line := c shapes second.
	self assert: line controlPoints size equals: 2
]

{ #category : #tests }
RSChartTest >> testWithWeirdValuesLineWithTicks [
	| values g d line c |
	values := {Float infinity negated.
	Float infinity negated.
	0.30102999566398114.
	0.47712125471966244}.
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
	self assert: line controlPoints size equals: 2
]

{ #category : #tests }
RSChartTest >> testWithWeirdValuesLineWithTicks2 [
	| x g d c labels |
	x := {-5 . 0 . 1 . 2}.
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
	self assert: line from equals: 0 @ -175.0.
	self assert: line to equals: 200 @ -175.0
]

{ #category : #'as yet unclassified' }
RSChartTest >> testYMarker_amp_A124_A42_A32 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSChart#barWidths:#134#138'>
	<madeBySmallAmp>
	| x c p1 p2 marker line |
	x := -3.14 to: 3.14 by: 0.01.
	c := RSChart new.
	c addDecoration: RSYMarkerDecoration new.
	p1 := RSLinePlot new.
	p1 x: x y: x sin * 0.22.
	c
		addPlot: p1;
		inspectorCanvas.
	p2 := RSLinePlot new.
	p2 x: x y: x cos * 0.18.
	c
		addPlot: p2;
		addDecoration: RSHorizontalTick new;
		inspectorCanvas;
		addDecoration: RSVerticalTick new asFloat.
	marker := RSYMarkerDecoration new.
	c addDecoration: marker.
	self
		assert: c class equals: RSChart;
		assert: c canvas class equals: RSCanvas;
		assert: c canvas deepNodes class equals: OrderedCollection;
		assert: c canvas deepNodes size equals: 7;
		assert: (c canvas deepNodes at: 1) class equals: RSBox;
		assert: (c canvas deepNodes at: 2) class equals: RSBox;
		assert: (c canvas deepNodes at: 3) class equals: RSLabel;
		assert: (c canvas deepNodes at: 4) class equals: RSLabel;
		assert: (c canvas deepNodes at: 5) class equals: RSLabel;
		assert: (c canvas deepNodes at: 6) class equals: RSLabel;
		assert: (c canvas deepNodes at: 7) class equals: RSLabel;
		assert: c canvas extent equals: 500 @ 500;
		assert: c canvas numberOfEdges equals: 10;
		assert: c canvas animations class equals: OrderedCollection;
		assertEmpty: c canvas animations;
		assert: c canvas lines class equals: RSGroup;
		assert: c canvas lines size equals: 10;
		assert: (c canvas lines at: 1) class equals: RSLine;
		assert: (c canvas lines at: 2) class equals: RSLine;
		assert: (c canvas lines at: 3) class equals: RSLine;
		assert: (c canvas lines at: 4) class equals: RSLine;
		assert: (c canvas lines at: 5) class equals: RSLine;
		assert: (c canvas lines at: 6) class equals: RSLine;
		assert: (c canvas lines at: 7) class equals: RSLine;
		assert: (c canvas lines at: 8) class equals: RSLine;
		assert: (c canvas lines at: 9) class equals: RSPolyline;
		assert: (c canvas lines at: 10) class equals: RSPolyline;
		assert: c canvas color class equals: Color;
		assert: c canvas color hsvSaturation equals: 0.0;
		assert: c canvas color alpha equals: 1.0;
		assert: c canvas color red equals: 1.0;
		assert: c canvas color brightness equals: 1.0;
		assert: c canvas color name equals: #white;
		assert: c canvas color hue equals: 0.0;
		assert: c canvas color beOpaque class equals: Color;
		assert: c canvas color green equals: 1.0;
		assert: c canvas color chroma equals: 0.0;
		assert: c canvas color lightness equals: 1.0;
		assert: c canvas color hslSaturation equals: 0.0;
		assert: c canvas color saturation equals: 0.0;
		assert: c canvas color luminance equals: 1.0;
		assert: c canvas color blue equals: 1.0;
		assert: c canvas numberOfNodes equals: 7;
		assert: c canvas shapes class equals: RSGroup;
		assert: c canvas shapes size equals: 17;
		assert: c canvas numberOfShapes equals: 17;
		deny: c canvas showRectangles;
		assert: c canvas visibleRectangle class equals: Rectangle;
		assert: c canvas visibleRectangle top equals: -35.714235714285714;
		assert: c canvas visibleRectangle extent class equals: Point;
		assert: c canvas visibleRectangle hasPositiveExtent;
		assert: c canvas visibleRectangle area equals: 5102.040816326531;
		deny: c canvas visibleRectangle isTall;
		assert: c canvas visibleRectangle aboveCenter class equals: Point;
		assert: c canvas visibleRectangle bottomCenter class equals: Point;
		assert: c canvas visibleRectangle corner class equals: Point;
		assert: c canvas visibleRectangle left equals: -35.714235714285714;
		assert: c canvas visibleRectangle origin class equals: Point;
		assert: c canvas visibleRectangle width equals: 71.42857142857143;
		assert: c canvas visibleRectangle right equals: 35.71433571428572;
		deny: c canvas visibleRectangle isZero;
		deny: c canvas visibleRectangle isWide;
		assert: c canvas visibleRectangle innerCorners class equals: Array;
		assert: c canvas visibleRectangle innerCorners size equals: 4;
		assert: c canvas visibleRectangle topCenter class equals: Point;
		assert: c canvas visibleRectangle topRight class equals: Point;
		assert: c canvas visibleRectangle bottomRight class equals: Point;
		assert: c canvas visibleRectangle center class equals: Point;
		assert: c canvas visibleRectangle topLeft class equals: Point;
		assert: c canvas visibleRectangle bottom equals: 35.71433571428572;
		assert: c canvas visibleRectangle floatCenter class equals: Point;
		assert: c canvas visibleRectangle leftCenter class equals: Point;
		assert: c canvas visibleRectangle isRectangle;
		assert: c canvas visibleRectangle bottomLeft class equals: Point;
		assert: c canvas visibleRectangle corners class equals: Array;
		assert: c canvas visibleRectangle corners size equals: 4;
		assert: c canvas visibleRectangle rightCenter class equals: Point;
		assert: c canvas visibleRectangle height equals: 71.42857142857143;
		assert: c canvas numberOfDeepNodes equals: 7;
		assert: c canvas fixedShapes class equals: RSGroup;
		assert: c canvas fixedShapes size equals: 3;
		assert: (c canvas fixedShapes at: 1) class equals: RSBox;
		assert: (c canvas fixedShapes at: 2) class equals: RSBox;
		assert: (c canvas fixedShapes at: 3) class equals: RSLabel;
		assert: c canvas edges class equals: RSGroup;
		assert: c canvas edges size equals: 10;
		assert: (c canvas edges at: 1) class equals: RSLine;
		assert: (c canvas edges at: 2) class equals: RSLine;
		assert: (c canvas edges at: 3) class equals: RSLine;
		assert: (c canvas edges at: 4) class equals: RSLine;
		assert: (c canvas edges at: 5) class equals: RSLine;
		assert: (c canvas edges at: 6) class equals: RSLine;
		assert: (c canvas edges at: 7) class equals: RSLine;
		assert: (c canvas edges at: 8) class equals: RSLine;
		assert: (c canvas edges at: 9) class equals: RSPolyline;
		assert: (c canvas edges at: 10) class equals: RSPolyline;
		assert: c canvas clearBackground;
		assert: c canvas numberOfFixedShapes equals: 3;
		assert: c canvas encompassingRectangle class equals: Rectangle;
		assert: c canvas encompassingRectangle top equals: -200.0;
		assert: c canvas encompassingRectangle extent class equals: Point;
		assert: c canvas encompassingRectangle hasPositiveExtent;
		assert: c canvas encompassingRectangle area equals: 43812.55203;
		assert: c canvas encompassingRectangle isTall;
		assert: c canvas encompassingRectangle aboveCenter class
			equals: Point;
		assert: c canvas encompassingRectangle bottomCenter class
			equals: Point;
		assert: c canvas encompassingRectangle corner class equals: Point;
		assert: c canvas encompassingRectangle left
			equals: -2.4633333333333334;
		assert: c canvas encompassingRectangle origin class equals: Point;
		assert: c canvas encompassingRectangle width equals: 203.97;
		assert: c canvas encompassingRectangle right
			equals: 201.50666666666666;
		deny: c canvas encompassingRectangle isZero;
		deny: c canvas encompassingRectangle isWide;
		assert: c canvas encompassingRectangle innerCorners class
			equals: Array;
		assert: c canvas encompassingRectangle innerCorners size equals: 4;
		assert: c canvas encompassingRectangle topCenter class
			equals: Point;
		assert: c canvas encompassingRectangle topRight class equals: Point;
		assert: c canvas encompassingRectangle bottomRight class
			equals: Point;
		assert: c canvas encompassingRectangle center class equals: Point;
		assert: c canvas encompassingRectangle topLeft class equals: Point;
		assert: c canvas encompassingRectangle bottom
			equals: 14.799000000000007;
		assert: c canvas encompassingRectangle floatCenter class
			equals: Point;
		assert: c canvas encompassingRectangle leftCenter class
			equals: Point;
		assert: c canvas encompassingRectangle isRectangle;
		assert: c canvas encompassingRectangle bottomLeft class
			equals: Point;
		assert: c canvas encompassingRectangle corners class equals: Array;
		assert: c canvas encompassingRectangle corners size equals: 4;
		assert: c canvas encompassingRectangle rightCenter class
			equals: Point;
		assert: c canvas encompassingRectangle height equals: 214.799;
		assert: c canvas announcer class equals: Announcer;
		assert: c canvas announcer subscriptions class
			equals: SubscriptionRegistry;
		assert: c canvas camera class equals: RSConfigurableCamera;
		assert: c canvas camera canvas class equals: RSCanvas;
		assert: c canvas camera zoomInteraction class
			equals: RSZoomToFitCanvas;
		assert: c canvas camera position class equals: Point;
		assert: c canvas camera scale equals: 7;
		assert: c canvas basicRectangle class equals: Rectangle;
		assert: c canvas basicRectangle top equals: 0;
		assert: c canvas basicRectangle extent class equals: Point;
		assert: c canvas basicRectangle hasPositiveExtent;
		assert: c canvas basicRectangle area equals: 250000;
		deny: c canvas basicRectangle isTall;
		assert: c canvas basicRectangle aboveCenter class equals: Point;
		assert: c canvas basicRectangle bottomCenter class equals: Point;
		assert: c canvas basicRectangle corner class equals: Point;
		assert: c canvas basicRectangle left equals: 0;
		assert: c canvas basicRectangle origin class equals: Point;
		assert: c canvas basicRectangle width equals: 500;
		assert: c canvas basicRectangle right equals: 500;
		deny: c canvas basicRectangle isZero;
		deny: c canvas basicRectangle isWide;
		assert: c canvas basicRectangle innerCorners class equals: Array;
		assert: c canvas basicRectangle innerCorners size equals: 4;
		assert: c canvas basicRectangle topCenter class equals: Point;
		assert: c canvas basicRectangle topRight class equals: Point;
		assert: c canvas basicRectangle bottomRight class equals: Point;
		assert: c canvas basicRectangle center class equals: Point;
		assert: c canvas basicRectangle topLeft class equals: Point;
		assert: c canvas basicRectangle bottom equals: 500;
		assert: c canvas basicRectangle floatCenter class equals: Point;
		assert: c canvas basicRectangle leftCenter class equals: Point;
		assert: c canvas basicRectangle isRectangle;
		assert: c canvas basicRectangle bottomLeft class equals: Point;
		assert: c canvas basicRectangle corners class equals: Array;
		assert: c canvas basicRectangle corners size equals: 4;
		assert: c canvas basicRectangle rightCenter class equals: Point;
		assert: c canvas basicRectangle height equals: 500;
		assert: c canvas nodes class equals: RSGroup;
		assert: c canvas nodes size equals: 7;
		assert: (c canvas nodes at: 1) class equals: RSBox;
		assert: (c canvas nodes at: 2) class equals: RSBox;
		assert: (c canvas nodes at: 3) class equals: RSLabel;
		assert: (c canvas nodes at: 4) class equals: RSLabel;
		assert: (c canvas nodes at: 5) class equals: RSLabel;
		assert: (c canvas nodes at: 6) class equals: RSLabel;
		assert: (c canvas nodes at: 7) class equals: RSLabel;
		deny: c canvas isShape.
	c build
]
