Class {
	#name : #RSLabelGeneratorTest,
	#superclass : #RSTest,
	#instVars : [
		'lg'
	],
	#category : #'Roassal3-Chart-Tests'
}

{ #category : #running }
RSLabelGeneratorTest >> setUp [
	| nice |
	super setUp.
	nice := RSNiceStepSizeGenerator new.
	lg := RSLabelGenerator nice: nice
]

{ #category : #tests }
RSLabelGeneratorTest >> testError [
	self
		should: [ lg searchMin: -98.0 max: 18.0 desired: 1 ]
		raise: Error
		description: 'entry to short'.
	self
		should: [ lg searchMin: -98.0 max: 18.0 desired: 0 ]
		raise: Error
		description: 'entry to short'
]

{ #category : #tests }
RSLabelGeneratorTest >> testSearch [
	| label |
	lg setLooseFlag: true.
	label := lg searchMin: -98.0 max: 18.0 desired: 3.
	self
		assert: label asString
		equals: '(Score: 0.14) -100.00	-60.00	-20.00	20.00	'.
	lg setLooseFlag: false.
	label := lg searchMin: -98.0 max: 18.0 desired: 3.
	self
		assert: label asString
		equals: '(Score: 0.62) -100.00	-50.00	0.00	'.
	lg setLooseFlag: true.
	label := lg searchMin: -1 max: 3.5 desired: 4.
	self
		assert: label asString
		equals: '(Score: 0.54) -1.00	0.00	1.00	2.00	3.00	4.00	'.
	lg setLooseFlag: false.
	label := lg searchMin: -1 max: 3.5 desired: 4.
	self
		assert: label asString
		equals: '(Score: 0.63) -1.00	0.00	1.00	2.00	3.00	'.
	lg setLooseFlag: true.
	label := lg searchMin: -1 max: 200 desired: 3.
	self
		assert: label asString
		equals: '(Score: -0.29) -25.00	50.00	125.00	200.00	'.
	lg setLooseFlag: false.
	label := lg searchMin: -1 max: 200 desired: 3.
	self
		assert: label asString
		equals: '(Score: 1.00) 0.00	100.00	200.00	'.
	lg setLooseFlag: true.
	label := lg searchMin: 119 max: 178 desired: 3.
	self
		assert:
			(label asString = '(Score: -0.65) 110.00	150.00	190.00	'
				or: [ label asString
						= '(Score: -0.65) 110.00	130.00	150.00	170.00	190.00	' ]).
	lg setLooseFlag: false.
	label := lg searchMin: 119 max: 178 desired: 3.
	self
		assert: label asString
		equals: '(Score: 0.48) 120.00	150.00	180.00	'.
	lg setLooseFlag: true.
	label := lg searchMin: -31 max: 27 desired: 4.
	self
		assert: label asString
		equals: '(Score: 0.07) -40.00	-30.00	-20.00	-10.00	0.00	10.00	20.00	30.00	'.
	lg setLooseFlag: false.
	label := lg searchMin: -31 max: 27 desired: 3.
	self
		assert: label asString
		equals: '(Score: 0.71) -30.00	0.00	30.00	'.
	lg setLooseFlag: true.
	label := lg searchMin: -55.45 max: -49.99 desired: 2.
	self assert: label asString equals: '(Score: -1.13) -56.00	-48.00	'.
	lg setLooseFlag: false.
	label := lg searchMin: -55.45 max: -49.99 desired: 3.
	self
		assert: label asString
		equals: '(Score: 0.49) -55.00	-52.50	-50.00	'.
	lg setLooseFlag: false.
	label := lg searchMin: 0 max: 100 desired: 2.
	self assert: label asString equals: '(Score: 1.00) 0.00	100.00	'.
	label := lg searchMin: 0 max: 100 desired: 3.
	self
		assert: label asString
		equals: '(Score: 0.95) 0.00	50.00	100.00	'.
	label := lg searchMin: 0 max: 100 desired: 4.
	self
		assert: label asString
		equals: '(Score: 0.70) 0.00	50.00	100.00	'.
	label := lg searchMin: 0 max: 100 desired: 5.
	self
		assert: label asString
		equals: '(Score: 0.85) 0.00	25.00	50.00	75.00	100.00	'.
	label := lg searchMin: 0 max: 100 desired: 6.
	self
		assert: label asString
		equals: '(Score: 0.90) 0.00	20.00	40.00	60.00	80.00	100.00	'.
	label := lg searchMin: 0 max: 100 desired: 7.
	self
		assert: label asString
		equals: '(Score: 0.80) 0.00	20.00	40.00	60.00	80.00	100.00	'.
	label := lg searchMin: 0 max: 100 desired: 8.
	self
		assert: label asString
		equals:
			'(Score: 0.79) 0.00	10.00	20.00	30.00	40.00	50.00	60.00	70.00	80.00	90.00	100.00	'.
	label := lg searchMin: 0 max: 100 desired: 9.
	self
		assert: label asString
		equals:
			'(Score: 0.88) 0.00	10.00	20.00	30.00	40.00	50.00	60.00	70.00	80.00	90.00	100.00	'.
	label := lg searchMin: 0 max: 100 desired: 10.
	self
		assert: label asString
		equals:
			'(Score: 0.94) 0.00	10.00	20.00	30.00	40.00	50.00	60.00	70.00	80.00	90.00	100.00	'
]

{ #category : #'as yet unclassified' }
RSLabelGeneratorTest >> testSearch_amp_R19_A54_L68 [
	<smallAmpCoveres:
		'ReplaceEqualWithNotEqualOperator#RSLabelGenerator#searchMin:max:desired:#280#287'>
	<madeBySmallAmp>
	| label |
	label := lg
		setLooseFlag: true;
		searchMin: -98.0 max: 18.0 desired: 3.
	label := lg
		setLooseFlag: false;
		searchMin: -98.0 max: 18.0 desired: 3.
	label := lg
		setLooseFlag: true;
		searchMin: -1 max: -0.0 desired: 4.
	self
		assert: label class equals: RSNiceLabel;
		assert: label step class equals: Fraction;
		assert: label step asString equals: '(1/2)';
		assert: label numberOfTicks equals: 2;
		assert: label max equals: 0;
		assert: label score equals: 0.7000000000000001;
		assert: label min equals: -1.
	label := lg
		setLooseFlag: false;
		searchMin: -1 max: 3.5 desired: 4;
		nice: RSNiceStepSizeGenerator new;
		setLooseFlag: true;
		searchMin: -1 max: 200 desired: 3;
		setLooseFlag: false;
		searchMin: -1 max: 200 desired: 3;
		setLooseFlag: true;
		searchMin: 119 max: 178 desired: 3;
		setLooseFlag: false;
		searchMin: 119 max: 178 desired: 3;
		setLooseFlag: true;
		searchMin: -31 max: 27 desired: 4;
		setLooseFlag: false;
		setLooseFlag: true;
		searchMin: -55.45 max: -49.99 desired: 2;
		setLooseFlag: false;
		searchMin: -55.45 max: -49.99 desired: 3;
		setLooseFlag: false;
		searchMin: 0 max: 100 desired: 2;
		searchMin: 0 max: 100 desired: 3;
		searchMin: 0 max: 100 desired: 4;
		searchMin: 0 max: 100 desired: 5;
		searchMin: 0 max: 100 desired: 6;
		searchMin: 0 max: 100 desired: 7;
		searchMin: 0 max: 100 desired: 8;
		searchMin: 0 max: 100 desired: 9;
		searchMin: 0 max: 100 desired: 10
]
