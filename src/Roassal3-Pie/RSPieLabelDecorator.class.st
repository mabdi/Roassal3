"
I can create labels for a pie builder and set the position acording to arc
"
Class {
	#name : #RSPieLabelDecorator,
	#superclass : #RSAbstractBuilderDecorator,
	#instVars : [
		'rotated',
		'offset',
		'label',
		'labelColor',
		'labelText'
	],
	#category : #'Roassal3-Pie-Core'
}

{ #category : #initialization }
RSPieLabelDecorator >> initialize [
	super initialize.
	self label: RSLabel new.
	self labelColor: Color black.
	offset := 0.
	rotated := false.
]

{ #category : #testing }
RSPieLabelDecorator >> isRotated [
	^ rotated
]

{ #category : #accessing }
RSPieLabelDecorator >> label [
	^ label
]

{ #category : #accessing }
RSPieLabelDecorator >> label: aLabel [
	label := aLabel
]

{ #category : #accessing }
RSPieLabelDecorator >> labelColor [
	^ labelColor
]

{ #category : #accessing }
RSPieLabelDecorator >> labelColor: aColor [
	"can be a color, a block or color scale"
	"self labelColor: Color white"
	"self labelColor: [:model | model modelColor ]"
	"self labelColor: TSScale category20"
	labelColor := aColor
]

{ #category : #accessing }
RSPieLabelDecorator >> labelText [
	^ labelText
]

{ #category : #accessing }
RSPieLabelDecorator >> labelText: anObject [
	"can be an object or block"
	"self labelText: 'Hi'"
	"self labelText: [:model | 'The model: ', model asString]"
	labelText := anObject
]

{ #category : #accessing }
RSPieLabelDecorator >> offset [
	^ offset
]

{ #category : #accessing }
RSPieLabelDecorator >> offset: aNumber [
	offset := aNumber
]

{ #category : #accessing }
RSPieLabelDecorator >> rotated [
	rotated := true.
]

{ #category : #hooks }
RSPieLabelDecorator >> shapeFor: aPieSliceShape [
	| res arc ang |
	arc := aPieSliceShape.
	res := label copy
		text: (self labelText rsValue: arc model);
		color: (self labelColor rsValue: arc model);
		position: (arc centroid: self offset) + arc position;
		yourself.
	self isRotated ifFalse: [ ^ res ].
	ang := arc middleAngle.
	(ang between: 90 and: 270) ifTrue: [ ang := ang - 180 ].
	res rotateByDegrees: ang negated.
	^ res
]