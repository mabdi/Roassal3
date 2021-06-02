"
I am test for RSNormalizer
"
Class {
	#name : #RSNormalizerTest,
	#superclass : #RSTest,
	#category : #'Roassal3-Shapes-Tests'
}

{ #category : #tests }
RSNormalizerTest >> testBasic [
	| shapes |
	shapes := (1 to: 2)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ].
	self assert: shapes size equals: 2.
	self assert: shapes first color equals: Color lightGray.
	RSNormalizer color
		shapes: shapes;
		normalize: #yourself.
	self assert: shapes first color equals: Color green.
	RSNormalizer size
		shapes: shapes;
		from: 100;
		to: 200;
		normalize: #yourself.
	self assert: shapes first extent equals: 100 @ 100.
	self assert: shapes first extent equals: 100 @ 100
]

{ #category : #'as yet unclassified' }
RSNormalizerTest >> testBasic_amp [
	<smallAmpCoveres: 'ReplaceMaxWithMinMutantOperator#RSNormalizer#minAndMaxFor:#263#274'>
	<madeBySmallAmp>
	| shapes aRSNormalizer1 aRSNormalizer2 |
	shapes := (1 to: 2)
		collect: [ :n | 
			RSBox new
				model: n;
				yourself ].
	aRSNormalizer1 := RSNormalizer color.
	self
		assert:
			aRSNormalizer1 class equals: RSNormalizer;
		assert:
			aRSNormalizer1 shapes class equals: Array;
		assertEmpty:
			aRSNormalizer1 shapes.
	aRSNormalizer1 := aRSNormalizer1
		shapes: shapes;
		normalize: #yourself.
	self
		assert:
			aRSNormalizer1 class equals: RSNormalizer;
		assert:
			aRSNormalizer1 scale class equals: NSLinearScale;
		assert:
			aRSNormalizer1 scale range class equals: Array;
		assert:
			aRSNormalizer1 scale range size equals: 2;
		assert: (aRSNormalizer1 scale range at: 1) class equals: Color;
		assert: (aRSNormalizer1 scale range at: 2) class equals: Color;
		assert:
			aRSNormalizer1 scale interpolate asString
			equals: 'NSInterpolator';
		assert:
			aRSNormalizer1 scale to class equals: Color;
		assert:
			aRSNormalizer1 scale to hsvSaturation equals: 1.0;
		assert:
			aRSNormalizer1 scale to alpha equals: 1.0;
		assert:
			aRSNormalizer1 scale to red equals: 1.0;
		assert:
			aRSNormalizer1 scale to brightness equals: 1.0;
		assert:
			aRSNormalizer1 scale to name equals: #red;
		assert:
			aRSNormalizer1 scale to hue equals: 0.0;
		assert:
			aRSNormalizer1 scale to beOpaque class equals: Color;
		assert:
			aRSNormalizer1 scale to green equals: 0.0;
		assert:
			aRSNormalizer1 scale to chroma equals: 1.0;
		assert:
			aRSNormalizer1 scale to lightness equals: 0.5;
		assert:
			aRSNormalizer1 scale to hslSaturation equals: 1.0;
		assert:
			aRSNormalizer1 scale to saturation equals: 1.0;
		assert:
			aRSNormalizer1 scale to luminance equals: 0.299;
		assert:
			aRSNormalizer1 scale to blue equals: 0.0;
		deny:
			aRSNormalizer1 scale clamp;
		assert:
			aRSNormalizer1 scale from class equals: Color;
		assert:
			aRSNormalizer1 scale from hsvSaturation equals: 1.0;
		assert:
			aRSNormalizer1 scale from alpha equals: 1.0;
		assert:
			aRSNormalizer1 scale from red equals: 0.0;
		assert:
			aRSNormalizer1 scale from brightness equals: 1.0;
		assert:
			aRSNormalizer1 scale from name equals: #green;
		assert:
			aRSNormalizer1 scale from hue equals: 120.0;
		assert:
			aRSNormalizer1 scale from beOpaque class equals: Color;
		assert:
			aRSNormalizer1 scale from green equals: 1.0;
		assert:
			aRSNormalizer1 scale from chroma equals: 1.0;
		assert:
			aRSNormalizer1 scale from lightness equals: 0.5;
		assert:
			aRSNormalizer1 scale from hslSaturation equals: 1.0;
		assert:
			aRSNormalizer1 scale from saturation equals: 1.0;
		assert:
			aRSNormalizer1 scale from luminance equals: 0.587;
		assert:
			aRSNormalizer1 scale from blue equals: 0.0;
		assert:
			aRSNormalizer1 scale uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aRSNormalizer1 scale input class equals: NSBilinearScale;
		assert:
			aRSNormalizer1 scale input range class equals: Array;
		assert:
			aRSNormalizer1 scale input range size equals: 2;
		assert:
			aRSNormalizer1 scale input interpolate asString
			equals: 'NSInterpolator';
		assert:
			aRSNormalizer1 scale input to equals: 2;
		assert:
			aRSNormalizer1 scale input from equals: 1;
		assert:
			aRSNormalizer1 scale input uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aRSNormalizer1 scale input domain class equals: Array;
		assert:
			aRSNormalizer1 scale input domain size equals: 2;
		assert:
			aRSNormalizer1 scale domain class equals: Array;
		assert:
			aRSNormalizer1 scale domain size equals: 2;
		assert:
			aRSNormalizer1 scale domain equals: #(1 2);
		assert:
			aRSNormalizer1 scale output class equals: NSBilinearScale;
		assert:
			aRSNormalizer1 scale output range class equals: Array;
		assert:
			aRSNormalizer1 scale output range size equals: 2;
		assert:
			aRSNormalizer1 scale output interpolate asString
			equals: 'NSInterpolator';
		assert:
			aRSNormalizer1 scale output to class equals: Color;
		assert:
			aRSNormalizer1 scale output from class equals: Color;
		assert:
			aRSNormalizer1 scale output uninterpolate asString
			equals: 'NSUninterpolateNumber';
		assert:
			aRSNormalizer1 scale output domain class equals: Array;
		assert:
			aRSNormalizer1 scale output domain size equals: 2.
	aRSNormalizer2 := RSNormalizer size.
	aRSNormalizer2 := aRSNormalizer2
		shapes: shapes;
		from: 100;
		to: 200;
		normalize: #yourself
]

{ #category : #'as yet unclassified' }
RSNormalizerTest >> testBasic_amp_R7_A68_A119 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSNormalizer#key#6#23'>
	<madeBySmallAmp>
	| shapes aRSNormalizer1 aRSNormalizer2 aString |
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
	aString := (aRSNormalizer2
		shapes: shapes;
		shapes: Array new;
		to: 200;
		normalize: #yourself) key.
	self assert:
		aString asString equals: 'a SAObservationPrimitive'
]
