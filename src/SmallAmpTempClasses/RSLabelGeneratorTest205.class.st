Class {
	#name : #RSLabelGeneratorTest205,
	#superclass : #RSLabelGeneratorTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
RSLabelGeneratorTest205 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
RSLabelGeneratorTest205 >> testSearch_amp_L120 [
	<madeBySmallAmp>
	| label |
	lg
		setLooseFlag: true;
		searchMin: -98.0 max: 18.0 desired: 3;
		setLooseFlag: false;
		searchMin: -98.0 max: 18.0 desired: 3;
		setLooseFlag: true;
		searchMin: -1 max: 3.5 desired: 4;
		setLooseFlag: false;
		searchMin: -1 max: 3.5 desired: 4;
		setLooseFlag: true;
		searchMin: -1 max: 200 desired: 3;
		setLooseFlag: false;
		searchMin: -1 max: 200 desired: 3;
		setLooseFlag: true;
		searchMin: 119 max: 178 desired: 3;
		setLooseFlag: false.
	self
		should: [ label := lg searchMin: 119 max: 0 desired: 3 ]
		raise: DomainError
]
