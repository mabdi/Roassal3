"
I am the centered attach point

-=-=-=-=
c := RSCanvas new.

shapes := (30 to: 50) collect: [ :nb |
	RSEllipse new size: nb; model: nb; yourself.
	 ] as: RSGroup.

c addAll: shapes.

lines := RSEdgeBuilder line
	canvas: c;
	connectFrom: 30 toAll: (31 to: 50).

lines do: [ :l | l attachPoint: (RSCenteredAttachPoint new) ].

RSGridLayout on: shapes. 
RSLocation new
	above;
	move: shapes first on: shapes allButFirst.
shapes @ RSDraggable.

c @ RSCanvasController
-=-=-=-=
"
Class {
	#name : #RSCenteredAttachPoint,
	#superclass : #RSAttachPoint,
	#category : #'Roassal3-Shapes-AttachPoint'
}

{ #category : #'public - hooks' }
RSCenteredAttachPoint >> basicEndingPointOf: anEdge [
	^ self positionFor: anEdge to in: anEdge.
	
]

{ #category : #'public - hooks' }
RSCenteredAttachPoint >> basicStartingPointOf: anEdge [
	^ self positionFor: anEdge from in: anEdge.
	
]
