"
A TSLabelTest is a test class for testing the behavior of TSLabel
"
Class {
	#name : #RSLabelTest,
	#superclass : #RSTest,
	#instVars : [
		'canvas'
	],
	#category : #'Roassal3-Shapes-Tests'
}

{ #category : #running }
RSLabelTest >> setUp [
	super setUp.
	canvas := RSCanvas new
]

{ #category : #tests }
RSLabelTest >> testBuilding [

	| l |
	l := RSLabel text: 'Hello'.
	self assert: l class equals: RSLabel.
	self assert: l text equals: 'Hello'
	
]

{ #category : #tests }
RSLabelTest >> testBuilding2 [

	| l |
	l := RSLabel text: 'Hello' model: 42.
	self assert: l class equals: RSLabel.
	self assert: l text equals: 'Hello'.
	self assert: l model equals: 42.
	
]

{ #category : #'as yet unclassified' }
RSLabelTest >> testBuilding_amp [
	"I test correctness of: 

- `^ emphasis` in method: `RSLabel >> #emphasis`

- `^ self is: 2` in method: `RSLabel >> #isItalic`

- `^ fontName` in method: `RSLabel >> #fontName` when {#fontName->'Source Sans Pro'}

- `^ fontSize` in method: `RSLabel >> #fontSize` when {#fontSize->10}

"

	<smallAmpCoveres: 'RemoveCaretOperator#RSLabel#fontSize#11#20'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSLabel#emphasis#11#20'>
	<smallAmpCoveres: 'RemoveCaretOperator#RSLabel#fontName#11#20'>
	<madeBySmallAmp>
	| l |
	l := RSLabel text: 'Hello'.
	self
		assert: l emphasis class equals: TextEmphasis;
		deny: l isItalic;
		assert: l fontName equals: 'Source Sans Pro';
		assert: l fontSize equals: 10
]

{ #category : #'as yet unclassified' }
RSLabelTest >> testBuilding_amp_A25_L0 [
	"I test correctness of: 

- `text notNil and: [ text isNotEmpty ]` in method: `RSLabel >> #hasText` when {#text->''}

"

	<smallAmpCoveres: 'ReplaceAndArgumentWithTrueOperator#RSLabel#hasText#12#47'>
	<madeBySmallAmp>
	| l |
	l := RSLabel text: ''.
	self assert: l computeEncompassingRectangle top equals: 0.0.
	l accept: RSAthensRenderer new
]

{ #category : #tests }
RSLabelTest >> testCairoCachedMetricProvider [
	| label provider |
	label := RSLabel new.
	label text: ''.
	provider := RSCairoCachedMetricsProvider new.
	label metricsProvider: provider.
	
	self assert: label extent class equals: Point.
	self assert: (provider extentsOf: label) class equals: RSTextExtents.
]

{ #category : #tests }
RSLabelTest >> testCairoFitMetricsProvider [
	| label h |
	label := RSLabel new.
	label text: '.'.
	h := label height.
	label metricsProvider: (RSCairoFitMetricsProvider new).
	self assert: h > label height.
]

{ #category : #tests }
RSLabelTest >> testDrawBorderLabel [
	|  |
	canvas addShape: (RSLabel new
		withBorder;
		color: (Color purple alpha: 0.5);
		fontName: 'Source Sans Pro';
		position: -50 @ 0;
		text: 'Hello world!';
		yourself).
	canvas createMorph drawOnMockCanvas.
]

{ #category : #tests }
RSLabelTest >> testDrawLabel [
	
	canvas addShape: (RSLabel new
		color: (Color purple alpha: 0.5);
		position: -50 @ 0;
		text: 'Hello world!';
		yourself).
	canvas createMorph drawOnMockCanvas.
]

{ #category : #tests }
RSLabelTest >> testHasChildren [
	| b |
	b := RSLabel new.
	self deny: b hasChildren.
	
]

{ #category : #tests }
RSLabelTest >> testModelWithoutText [

	| l |
	l := RSLabel new.
	self assert: l text isNil.
	self assert: l model isNil.
	
	l model: 42.
	self assert: l model equals: 42.
	self assert: l text equals: '42'
]

{ #category : #'as yet unclassified' }
RSLabelTest >> testModelWithoutText_amp_A1_A55 [
	<smallAmpCoveres:
		'ReplaceIfTrueIfFalseReceiverWithFalseOperator#RSLabel#privateFontName#20#114'>
	<smallAmpCoveres:
		'ReplaceIfTrueIfFalseReceiverWithTrueOperator#RSLabel#privateFontName#20#114'>
	<madeBySmallAmp>
	| l |
	l := RSLabel new.
	l metricsProvider.
	self should: [ l font: LogicalFont new ] raise: MessageNotUnderstood
]

{ #category : #tests }
RSLabelTest >> testSameSize [
	| l1 l2 |
	l1 := RSLabel model: 123.
	l2 := RSLabel new text: 123.
	
	self assert: l1 extent equals: l2 extent
]

{ #category : #tests }
RSLabelTest >> testUnderlineStruckout [
	| label |
	label := RSLabel new.
	self assert: label isNormal.
	label underline.
	label bold.
	self assert: label isBold.
	self assert: label isUnderlined.
]
