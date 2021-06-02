"
I have common tests for shapes and canvas
"
Class {
	#name : #RSCanvasTest,
	#superclass : #RSTest,
	#instVars : [
		'canvas'
	],
	#category : #'Roassal3-Shapes-Tests'
}

{ #category : #running }
RSCanvasTest >> setUp [
	super setUp.
	canvas := RSCanvas new
]

{ #category : #running }
RSCanvasTest >> testAddOneShape [
	canvas addShape: RSBox new.
	self assert: canvas numberOfShapes equals: 1.
	self assert: canvas numberOfFixedShapes equals: 0
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testAddOneShape_amp [
	<smallAmpCoveres: 'RemoveCaretOperator#RSCanvas#globalMatrix#15#41'>
	<madeBySmallAmp>
	canvas addShape: RSBox new.
	self
		assert: canvas class equals: RSCanvas;
		assert: canvas basicRectangle class equals: Rectangle;
		assert: canvas basicRectangle top equals: 0;
		assert: canvas basicRectangle extent equals: 500 @ 500;
		assert: canvas basicRectangle hasPositiveExtent;
		assert: canvas basicRectangle area equals: 250000;
		deny: canvas basicRectangle isTall;
		assert: canvas basicRectangle aboveCenter equals: 250 @ 166;
		assert: canvas basicRectangle bottomCenter equals: 250 @ 500;
		assert: canvas basicRectangle corner equals: 500 @ 500;
		assert: canvas basicRectangle left equals: 0;
		assert: canvas basicRectangle origin equals: 0 @ 0;
		assert: canvas basicRectangle width equals: 500;
		assert: canvas basicRectangle right equals: 500;
		deny: canvas basicRectangle isZero;
		deny: canvas basicRectangle isWide;
		assert: canvas basicRectangle innerCorners class equals: Array;
		assert: canvas basicRectangle innerCorners size equals: 4;
		assert: (canvas basicRectangle innerCorners at: 1) class
			equals: Point;
		assert: (canvas basicRectangle innerCorners at: 2) class
			equals: Point;
		assert: (canvas basicRectangle innerCorners at: 3) class
			equals: Point;
		assert: (canvas basicRectangle innerCorners at: 4) class
			equals: Point;
		assert: canvas basicRectangle topCenter equals: 250 @ 0;
		assert: canvas basicRectangle topRight equals: 500 @ 0;
		assert: canvas basicRectangle bottomRight equals: 500 @ 500;
		assert: canvas basicRectangle center equals: 250 @ 250;
		assert: canvas basicRectangle topLeft equals: 0 @ 0;
		assert: canvas basicRectangle bottom equals: 500;
		assert: canvas basicRectangle floatCenter equals: 250.0 @ 250.0;
		assert: canvas basicRectangle leftCenter equals: 0 @ 250;
		assert: canvas basicRectangle isRectangle;
		assert: canvas basicRectangle bottomLeft equals: 0 @ 500;
		assert: canvas basicRectangle corners class equals: Array;
		assert: canvas basicRectangle corners size equals: 4;
		assert: (canvas basicRectangle corners at: 1) class equals: Point;
		assert: (canvas basicRectangle corners at: 2) class equals: Point;
		assert: (canvas basicRectangle corners at: 3) class equals: Point;
		assert: (canvas basicRectangle corners at: 4) class equals: Point;
		assert: canvas basicRectangle rightCenter equals: 500 @ 250;
		assert: canvas basicRectangle height equals: 500;
		assert: canvas camera class equals: RSCamera;
		assert: canvas camera canvas class equals: RSCanvas;
		assert: canvas camera canvas deepNodes class
			equals: OrderedCollection;
		assertEmpty: canvas camera canvas deepNodes;
		assert: canvas camera canvas extent class equals: Point;
		assert: canvas camera canvas numberOfEdges equals: 0;
		assert: canvas camera canvas animations class
			equals: OrderedCollection;
		assertEmpty: canvas camera canvas animations;
		assert: canvas camera canvas lines class equals: RSGroup;
		assertEmpty: canvas camera canvas lines;
		assert: canvas camera canvas color class equals: Color;
		assert: canvas camera canvas numberOfNodes equals: 0;
		assert: canvas camera canvas shapes class equals: RSGroup;
		assert: canvas camera canvas shapes size equals: 1;
		assert: canvas camera canvas numberOfShapes equals: 1;
		deny: canvas camera canvas showRectangles;
		assert: canvas camera canvas visibleRectangle class
			equals: Rectangle;
		assert: canvas camera canvas numberOfDeepNodes equals: 0;
		assert: canvas camera canvas fixedShapes class equals: RSGroup;
		assertEmpty: canvas camera canvas fixedShapes;
		assert: canvas camera canvas edges class equals: RSGroup;
		assertEmpty: canvas camera canvas edges;
		assert: canvas camera canvas clearBackground;
		assert: canvas camera canvas numberOfFixedShapes equals: 0;
		assert: canvas camera canvas encompassingRectangle class
			equals: Rectangle;
		assert: canvas camera canvas announcer class equals: Announcer;
		assert: canvas camera canvas camera class equals: RSCamera;
		assert: canvas camera canvas basicRectangle class equals: Rectangle;
		assert: canvas camera canvas morph isNil;
		assert: canvas camera canvas nodes class equals: RSGroup;
		assertEmpty: canvas camera canvas nodes;
		deny: canvas camera canvas isShape;
		assert: canvas camera position equals: 0 @ 0;
		assert: canvas camera scale equals: 1.0000001
]

{ #category : #'tests - shapes ordering' }
RSCanvasTest >> testAddShapeBefore [
	| shape1 shape2 |
	shape1 := RSBox new size: 20.
	shape2 := RSEllipse new size: 10.
	canvas add: shape2.
	canvas addShape: shape1 before: shape2.
	self
		assert: canvas shapes asArray
		equals:
			{shape1.
			shape2}
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testAddShapeBefore_amp [
	<smallAmpCoveres: 'RemoveCaretOperator#RSCanvas#globalMatrix#15#41'>
	<madeBySmallAmp>
	| shape1 shape2 |
	shape1 := RSBox new size: 20.
	shape2 := RSEllipse new size: 10.
	canvas add: shape2.
	self
		assert: canvas class equals: RSCanvas;
		assert: canvas camera class equals: RSCamera;
		assert: canvas camera canvas class equals: RSCanvas;
		assert: canvas camera canvas deepNodes class
			equals: OrderedCollection;
		assert: canvas camera canvas deepNodes size equals: 1;
		assert: canvas camera canvas extent class equals: Point;
		assert: canvas camera canvas numberOfEdges equals: 0;
		assert: canvas camera canvas animations class
			equals: OrderedCollection;
		assertEmpty: canvas camera canvas animations;
		assert: canvas camera canvas lines class equals: RSGroup;
		assertEmpty: canvas camera canvas lines;
		assert: canvas camera canvas color class equals: Color;
		assert: canvas camera canvas numberOfNodes equals: 1;
		assert: canvas camera canvas shapes class equals: RSGroup;
		assert: canvas camera canvas shapes size equals: 1;
		assert: canvas camera canvas numberOfShapes equals: 1;
		deny: canvas camera canvas showRectangles;
		assert: canvas camera canvas visibleRectangle class
			equals: Rectangle;
		assert: canvas camera canvas numberOfDeepNodes equals: 1;
		assert: canvas camera canvas fixedShapes class equals: RSGroup;
		assertEmpty: canvas camera canvas fixedShapes;
		assert: canvas camera canvas edges class equals: RSGroup;
		assertEmpty: canvas camera canvas edges;
		assert: canvas camera canvas clearBackground;
		assert: canvas camera canvas numberOfFixedShapes equals: 0;
		assert: canvas camera canvas encompassingRectangle class
			equals: Rectangle;
		assert: canvas camera canvas announcer class equals: Announcer;
		assert: canvas camera canvas camera class equals: RSCamera;
		assert: canvas camera canvas basicRectangle class equals: Rectangle;
		assert: canvas camera canvas morph isNil;
		assert: canvas camera canvas nodes class equals: RSGroup;
		assert: canvas camera canvas nodes size equals: 1;
		deny: canvas camera canvas isShape;
		assert: canvas camera position equals: 0 @ 0;
		assert: canvas camera scale equals: 1.0000001;
		assert: canvas morph isNil.
	canvas addShape: shape1 before: shape2.
	self
		assert: canvas class equals: RSCanvas;
		assert: canvas shapes class equals: RSGroup;
		assert: canvas shapes size equals: 2;
		assert: (canvas shapes at: 1) class equals: RSBox;
		assert: (canvas shapes at: 1) isNode;
		assert: (canvas shapes at: 1) allRecursiveConnectedShapes class
			equals: Set;
		assert: (canvas shapes at: 1) cornerRadius isNil;
		assert: (canvas shapes at: 1) matrix class
			equals: AthensAffineTransform;
		deny: (canvas shapes at: 1) hasEdges;
		assert: (canvas shapes at: 1) positionInCanvas class equals: Point;
		deny: (canvas shapes at: 1) shouldUpdateLines;
		assert: (canvas shapes at: 1) baseRectangle class equals: Rectangle;
		deny: (canvas shapes at: 1) hasCornerRadius;
		assert: (canvas shapes at: 1) computeEncompassingRectangle class
			equals: Rectangle;
		assert: (canvas shapes at: 2) class equals: RSEllipse;
		assert: (canvas shapes at: 2) radius equals: 5.0
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testAddShapeBefore_amp_A102_A11 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSCanvas#inspectorShapes#69#533'>
	<madeBySmallAmp>
	| shape1 shape2 aSpTablePresenter |
	aSpTablePresenter := canvas inspectorShapes.
	self
		assert:
			aSpTablePresenter class equals: SpTablePresenter;
		deny:
			aSpTablePresenter isMultipleSelection;
		assert:
			aSpTablePresenter activatesOnDoubleClick;
		assert:
			aSpTablePresenter hasCustomSearch;
		assert:
			aSpTablePresenter model class equals: SpCollectionListModel;
		assert:
			aSpTablePresenter model items class equals: RSGroup;
		assertEmpty:
			aSpTablePresenter model items;
		assert:
			aSpTablePresenter model size equals: 0;
		assert:
			aSpTablePresenter model collection class equals: RSGroup;
		assertEmpty:
			aSpTablePresenter model collection;
		deny:
			aSpTablePresenter activatesOnSingleClick;
		assert:
			aSpTablePresenter contextMenu isNil;
		assert:
			aSpTablePresenter hasScrollBars;
		assert:
			aSpTablePresenter itemFilter isNil;
		deny:
			aSpTablePresenter isResizable;
		assert:
			aSpTablePresenter verticalAlignment class
			equals: SpVerticalAlignment;
		assert:
			aSpTablePresenter verticalAlignment owner isNil;
		assert:
			aSpTablePresenter verticalAlignment adapter isNil;
		deny:
			aSpTablePresenter verticalAlignment hasOwner;
		assert:
			aSpTablePresenter verticalAlignment spec isNil;
		assert:
			aSpTablePresenter verticalAlignment lastVisibleRowIndex isNil;
		assert:
			aSpTablePresenter verticalAlignment window isNil;
		deny:
			aSpTablePresenter verticalAlignment hasWindow;
		deny:
			aSpTablePresenter verticalAlignment isMenuPresenter;
		assert:
			aSpTablePresenter verticalAlignment firstVisibleRowIndex isNil;
		deny:
			aSpTablePresenter verticalAlignment isWindowPresenter;
		assert:
			aSpTablePresenter verticalAlignment desiredVisibleRow
			equals: 1;
		assert:
			aSpTablePresenter verticalAlignment needRebuild;
		assert:
			aSpTablePresenter verticalAlignment isPresenter;
		assert:
			aSpTablePresenter isSearchEnabled;
		assert:
			aSpTablePresenter columns class equals: Array;
		assert:
			aSpTablePresenter columns size equals: 4;
		assert: (aSpTablePresenter columns at: 1) class
			equals: SpStringTableColumn;
		assert: (aSpTablePresenter columns at: 1) width isNil;
		assert: (aSpTablePresenter columns at: 1) evaluation class
			equals: BlockClosure;
		assert: (aSpTablePresenter columns at: 1) evaluation sourceNode formattedCode
			equals: '[ :each | each asString ]';
		assert: (aSpTablePresenter columns at: 1) acceptAction isNil;
		assert: (aSpTablePresenter columns at: 1) isExpandable;
		deny: (aSpTablePresenter columns at: 1) isSortable;
		deny: (aSpTablePresenter columns at: 1) isEditable;
		deny: (aSpTablePresenter columns at: 1) isComposite;
		assert: (aSpTablePresenter columns at: 1) title equals: 'Shape';
		assert: (aSpTablePresenter columns at: 1) sortFunction isNil;
		assert: (aSpTablePresenter columns at: 2) class
			equals: SpStringTableColumn;
		assert: (aSpTablePresenter columns at: 2) width isNil;
		assert: (aSpTablePresenter columns at: 2) evaluation class
			equals: BlockClosure;
		assert: (aSpTablePresenter columns at: 2) evaluation sourceNode formattedCode
			equals: '[ :each | each model asString ]';
		assert: (aSpTablePresenter columns at: 2) acceptAction isNil;
		assert: (aSpTablePresenter columns at: 2) isExpandable;
		deny: (aSpTablePresenter columns at: 2) isSortable;
		deny: (aSpTablePresenter columns at: 2) isEditable;
		deny: (aSpTablePresenter columns at: 2) isComposite;
		assert: (aSpTablePresenter columns at: 2) title equals: 'Model';
		assert: (aSpTablePresenter columns at: 2) sortFunction isNil;
		assert: (aSpTablePresenter columns at: 3) class
			equals: SpStringTableColumn;
		assert: (aSpTablePresenter columns at: 3) width isNil;
		assert: (aSpTablePresenter columns at: 3) evaluation class
			equals: BlockClosure;
		assert: (aSpTablePresenter columns at: 3) evaluation sourceNode formattedCode
			equals: '[ :each | each paint asString ]';
		assert: (aSpTablePresenter columns at: 3) acceptAction isNil;
		assert: (aSpTablePresenter columns at: 3) isExpandable;
		deny: (aSpTablePresenter columns at: 3) isSortable;
		deny: (aSpTablePresenter columns at: 3) isEditable;
		deny: (aSpTablePresenter columns at: 3) isComposite;
		assert: (aSpTablePresenter columns at: 3) title equals: 'Paint';
		assert: (aSpTablePresenter columns at: 3) sortFunction isNil;
		assert: (aSpTablePresenter columns at: 4) class
			equals: SpStringTableColumn;
		assert: (aSpTablePresenter columns at: 4) width isNil;
		assert: (aSpTablePresenter columns at: 4) evaluation class
			equals: BlockClosure;
		assert: (aSpTablePresenter columns at: 4) evaluation sourceNode formattedCode
			equals: '[ :each | each border asString ]';
		assert: (aSpTablePresenter columns at: 4) acceptAction isNil;
		assert: (aSpTablePresenter columns at: 4) isExpandable;
		deny: (aSpTablePresenter columns at: 4) isSortable;
		deny: (aSpTablePresenter columns at: 4) isEditable;
		deny: (aSpTablePresenter columns at: 4) isComposite;
		assert: (aSpTablePresenter columns at: 4) title equals: 'Border';
		assert: (aSpTablePresenter columns at: 4) sortFunction isNil;
		assert:
			aSpTablePresenter selectionMode class
			equals: SpSingleSelectionMode;
		assert:
			aSpTablePresenter selectionMode widget class
			equals: SpTablePresenter;
		deny:
			aSpTablePresenter selectionMode widget isMultipleSelection;
		assert:
			aSpTablePresenter selectionMode widget activatesOnDoubleClick;
		assert:
			aSpTablePresenter selectionMode widget hasCustomSearch;
		assert:
			aSpTablePresenter selectionMode widget model class
			equals: SpCollectionListModel;
		deny:
			aSpTablePresenter selectionMode widget activatesOnSingleClick;
		assert:
			aSpTablePresenter selectionMode widget contextMenu isNil;
		assert:
			aSpTablePresenter selectionMode widget hasScrollBars;
		assert:
			aSpTablePresenter selectionMode widget itemFilter isNil;
		deny:
			aSpTablePresenter selectionMode widget isResizable;
		assert:
			aSpTablePresenter selectionMode widget verticalAlignment class
			equals: SpVerticalAlignment;
		assert:
			aSpTablePresenter selectionMode widget isSearchEnabled;
		assert:
			aSpTablePresenter selectionMode widget columns class
			equals: Array;
		assert:
			aSpTablePresenter selectionMode widget columns size
			equals: 4;
		assert:
			aSpTablePresenter selectionMode widget selectionMode class
			equals: SpSingleSelectionMode;
		assert:
			aSpTablePresenter selectionMode widget isShowingColumnHeaders;
		assert:
			aSpTablePresenter selectionMode widget selection class
			equals: SpSingleSelectionMode;
		assert:
			aSpTablePresenter selectionMode selectionHolder class
			equals: SpValueHolder;
		assert:
			aSpTablePresenter selectionMode selectionHolder subscriptions class
			equals: OrderedCollection;
		assert:
			aSpTablePresenter selectionMode selectionHolder subscriptions size
			equals: 1;
		assert:
			aSpTablePresenter selectionMode selectionHolder value
			equals: 0;
		deny:
			aSpTablePresenter selectionMode isMultipleSelection;
		assert:
			aSpTablePresenter selectionMode isEmpty;
		assert:
			aSpTablePresenter selectionMode model class
			equals: SpCollectionListModel;
		assert:
			aSpTablePresenter selectionMode model items class
			equals: RSGroup;
		assertEmpty:
			aSpTablePresenter selectionMode model items;
		assert:
			aSpTablePresenter selectionMode model size equals: 0;
		assert:
			aSpTablePresenter selectionMode model collection class
			equals: RSGroup;
		assertEmpty:
			aSpTablePresenter selectionMode model collection;
		assert:
			aSpTablePresenter selectionMode selectedIndex equals: 0;
		assert:
			aSpTablePresenter isShowingColumnHeaders;
		assert:
			aSpTablePresenter selection class
			equals: SpSingleSelectionMode;
		assert:
			aSpTablePresenter selection widget class
			equals: SpTablePresenter;
		deny:
			aSpTablePresenter selection widget isMultipleSelection;
		assert:
			aSpTablePresenter selection widget activatesOnDoubleClick;
		assert:
			aSpTablePresenter selection widget hasCustomSearch;
		assert:
			aSpTablePresenter selection widget model class
			equals: SpCollectionListModel;
		deny:
			aSpTablePresenter selection widget activatesOnSingleClick;
		assert:
			aSpTablePresenter selection widget contextMenu isNil;
		assert:
			aSpTablePresenter selection widget hasScrollBars;
		assert:
			aSpTablePresenter selection widget itemFilter isNil;
		deny:
			aSpTablePresenter selection widget isResizable;
		assert:
			aSpTablePresenter selection widget verticalAlignment class
			equals: SpVerticalAlignment;
		assert:
			aSpTablePresenter selection widget isSearchEnabled;
		assert:
			aSpTablePresenter selection widget columns class
			equals: Array;
		assert:
			aSpTablePresenter selection widget columns size equals: 4;
		assert:
			aSpTablePresenter selection widget selectionMode class
			equals: SpSingleSelectionMode;
		assert:
			aSpTablePresenter selection widget isShowingColumnHeaders;
		assert:
			aSpTablePresenter selection widget selection class
			equals: SpSingleSelectionMode;
		assert:
			aSpTablePresenter selection selectionHolder class
			equals: SpValueHolder;
		assert:
			aSpTablePresenter selection selectionHolder subscriptions class
			equals: OrderedCollection;
		assert:
			aSpTablePresenter selection selectionHolder subscriptions size
			equals: 1;
		assert:
			aSpTablePresenter selection selectionHolder value equals: 0;
		deny:
			aSpTablePresenter selection isMultipleSelection;
		assert:
			aSpTablePresenter selection isEmpty;
		assert:
			aSpTablePresenter selection model class
			equals: SpCollectionListModel;
		assert:
			aSpTablePresenter selection model items class
			equals: RSGroup;
		assertEmpty:
			aSpTablePresenter selection model items;
		assert:
			aSpTablePresenter selection model size equals: 0;
		assert:
			aSpTablePresenter selection model collection class
			equals: RSGroup;
		assertEmpty:
			aSpTablePresenter selection model collection;
		assert:
			aSpTablePresenter selection selectedIndex equals: 0.
	shape1 := RSBox new size: 20.
	shape2 := RSEllipse new size: 10.
	canvas
		add: shape2;
		shapeFromModel: 42;
		addShape: shape1 before: shape2
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testAddShapeBefore_amp_A152 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSCanvas#controllerInteraction#24#60'>
	<madeBySmallAmp>
	| shape1 shape2 anUndefinedObject |
	shape1 := RSBox new size: 20.
	shape2 := RSEllipse new size: 10.
	anUndefinedObject := canvas
		add: shape2;
		addShape: shape1 before: shape2;
		controllerInteraction.
	self assert:
		anUndefinedObject isNil
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testAddShapeBefore_amp_A60_A229 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSCanvas#currentTime#14#37'>
	<madeBySmallAmp>
	| shape1 shape2 |
	shape1 := RSBox new size: 20.
	shape2 := RSEllipse new size: 10.
	canvas
		add: shape2;
		camera;
		addShape: shape1 before: shape2;
		newAnimation.
	self
		assert: canvas class equals: RSCanvas;
		assert: canvas animations class equals: OrderedCollection;
		assert: canvas animations size equals: 1;
		assert: (canvas animations at: 1) class
			equals: RSTransitionAnimation;
		assert: (canvas animations at: 1) progress equals: 0.0;
		assert: (canvas animations at: 1) allDuration class
			equals: Duration;
		assert: (canvas animations at: 1) to equals: 1;
		assert: (canvas animations at: 1) duration class equals: Duration;
		assert: (canvas animations at: 1) startPauseTime equals: 0;
		assert: (canvas animations at: 1) isRunning;
		assert: (canvas animations at: 1) isDelayDone;
		assert: (canvas animations at: 1) delay isNil;
		assert: (canvas animations at: 1) pauseTime equals: 0;
		deny: (canvas animations at: 1) isPaused;
		assert: (canvas animations at: 1) endPauseTime equals: 0;
		deny: (canvas animations at: 1) isRepeating;
		assert: (canvas animations at: 1) loops equals: 1;
		assert: (canvas animations at: 1) currentLoop isNil;
		assert: (canvas animations at: 1) scale class equals: NSLinearScale;
		assert: (canvas animations at: 1) endTime isNil;
		assert: (canvas animations at: 1) from equals: 0;
		assert: (canvas animations at: 1) startLoopTime class
			equals: SmallInteger;
		assert: (canvas animations at: 1) startTime class
			equals: SmallInteger;
		assert: (canvas animations at: 1) canvas class equals: RSCanvas;
		deny: (canvas animations at: 1) hasCompleted;
		assert: (canvas animations at: 1) announcer class equals: Announcer;
		assert: (canvas animations at: 1) easing class
			equals: RSLinearInterpolator;
		assert: (canvas animations at: 1) stepAction class
			equals: BlockClosure;
		assert: (canvas animations at: 1) stepAction sourceNode formattedCode
			equals: ''
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testAddShapeBefore_amp_A77 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSCanvas#inspectorContext#729#824'>
	<madeBySmallAmp>
	| shape1 shape2 aRSInteractiveContext |
	shape1 := RSBox new size: 20.
	shape2 := RSEllipse new size: 10.
	aRSInteractiveContext := canvas
		add: shape2;
		inspectorContext.
	self
		assert:
			aRSInteractiveContext class equals: RSInteractiveContext;
		assert:
			aRSInteractiveContext presentation isNil;
		assert:
			aRSInteractiveContext propagateToChildren.
	canvas addShape: shape1 before: shape2
]

{ #category : #tests }
RSCanvasTest >> testDeepNodes [
	| c compo box |
	c := RSCanvas new.
	compo := RSComposite new.
	box := RSBox new.
	compo addShape: box.
	compo adjustToChildren.
	c add: compo.
	self assert: c numberOfNodes equals: 1.
	self assert: c numberOfDeepNodes equals: 2.
	self assert: c deepNodes size equals: 2.
	self
		assert:
			(c deepNodes
				includesAll:
					{box.
					compo})
]

{ #category : #running }
RSCanvasTest >> testDrawCanvas [
	canvas
		addShape:
			(RSBox new
				extent: 100 @ 100;
				yourself).
	canvas
		addShape:
			(RSEllipse new
				position: 100 @ 100;
				extent: 100 @ 100;
				yourself).
	canvas createMorph drawOnMockCanvas
]

{ #category : #running }
RSCanvasTest >> testDrawCanvasWithGroup [
	| g |
	g := RSComposite new.
	g
		add:
			(RSBox new
				extent: 100 @ 100;
				yourself).
	g
		add:
			(RSEllipse new
				position: 100 @ 100;
				extent: 100 @ 100;
				yourself).
	canvas addShape: g.
	canvas createMorph drawOnMockCanvas
]

{ #category : #running }
RSCanvasTest >> testDrawFixed [
	| box |
	box := RSBox new
		extent: 100 @ 100;
		yourself.
	box isFixed: true.
	canvas addShape: box.
	box := RSBox new
		extent: 100 @ 100;
		yourself.
	canvas addShape: box.
	self deny: box isFixed.
	box setAsFixed.
	self assert: box isFixed.
	self assert: canvas numberOfShapes equals: 0.
	self assert: canvas numberOfFixedShapes equals: 2.
	canvas createMorph drawOnMockCanvas
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testDrawFixed_amp_D2 [
	<smallAmpCoveres: 'ReplaceEqualWithNotEqualOperator#RSCanvas#removeShape:#132#140'>
	<madeBySmallAmp>
	| box aRSBox1 aRSBox2 |
	aRSBox1 := RSBox new.
	box := aRSBox1
		extent: 100 @ 100;
		yourself.
	box isFixed: true.
	canvas
		addShape: box;
		addShape: box.
	self
		assert: canvas class equals: RSCanvas;
		assert: canvas numberOfFixedShapes equals: 1;
		assert: canvas camera class equals: RSCamera;
		assert: canvas camera canvas class equals: RSCanvas;
		assert: canvas camera canvas deepNodes class
			equals: OrderedCollection;
		assertEmpty: canvas camera canvas deepNodes;
		assert: canvas camera canvas extent class equals: Point;
		assert: canvas camera canvas numberOfEdges equals: 0;
		assert: canvas camera canvas animations class
			equals: OrderedCollection;
		assertEmpty: canvas camera canvas animations;
		assert: canvas camera canvas lines class equals: RSGroup;
		assertEmpty: canvas camera canvas lines;
		assert: canvas camera canvas color class equals: Color;
		assert: canvas camera canvas numberOfNodes equals: 0;
		assert: canvas camera canvas shapes class equals: RSGroup;
		assertEmpty: canvas camera canvas shapes;
		assert: canvas camera canvas numberOfShapes equals: 0;
		deny: canvas camera canvas showRectangles;
		assert: canvas camera canvas visibleRectangle class
			equals: Rectangle;
		assert: canvas camera canvas numberOfDeepNodes equals: 0;
		assert: canvas camera canvas fixedShapes class equals: RSGroup;
		assert: canvas camera canvas fixedShapes size equals: 1;
		assert: canvas camera canvas edges class equals: RSGroup;
		assertEmpty: canvas camera canvas edges;
		assert: canvas camera canvas clearBackground;
		assert: canvas camera canvas numberOfFixedShapes equals: 1;
		assert: canvas camera canvas encompassingRectangle class
			equals: Rectangle;
		assert: canvas camera canvas announcer class equals: Announcer;
		assert: canvas camera canvas camera class equals: RSCamera;
		assert: canvas camera canvas basicRectangle class equals: Rectangle;
		assert: canvas camera canvas morph isNil;
		assert: canvas camera canvas nodes class equals: RSGroup;
		assertEmpty: canvas camera canvas nodes;
		deny: canvas camera canvas isShape;
		assert: canvas camera position equals: 0 @ 0;
		assert: canvas camera scale equals: 1.0000001.
	aRSBox2 := RSBox new.
	box := aRSBox2
		extent: 100 @ 100;
		yourself.
	canvas addShape: box.
	box setAsFixed.
	canvas createMorph
]

{ #category : #running }
RSCanvasTest >> testEmpty [
	self assert: canvas numberOfShapes equals: 0
]

{ #category : #tests }
RSCanvasTest >> testEncompassingRectangle [
	| rect |
	rect := canvas encompassingRectangle.
	self
		assert: rect
		equals: (Rectangle center: 0 @ 0 extent: RSCamera minimumExtent)
]

{ #category : #events }
RSCanvasTest >> testEvent [
	| box |
	box := RSBox new.
	box when: RSMouseClick do: [ :evt |  ]
]

{ #category : #tests }
RSCanvasTest >> testEventKnowsItsCanvas [
	| evt t |
	evt := RSEvent new.
	t := false.
	canvas when: RSEvent do: [ :ex | t := true ].
	canvas announce: evt.
	self assert: evt canvas equals: canvas.
	self assert: t
]

{ #category : #tests }
RSCanvasTest >> testEventKnowsItsCanvas02 [
	| evt shape |
	shape := RSBox new size: 20.
	canvas add: shape.
	evt := RSShapeAddedEvent new shape: shape.
	canvas announce: evt.
	self assert: evt canvas equals: canvas
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testEventKnowsItsCanvas02_amp_A2_A28 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSCanvas#sequentialAnimation#23#49'>
	<madeBySmallAmp>
	| evt shape aRSSequentialAnimation |
	aRSSequentialAnimation := canvas sequentialAnimation.
	self
		assert:
			aRSSequentialAnimation class equals: RSSequentialAnimation;
		assert:
			aRSSequentialAnimation duration class equals: Duration;
		assert:
			aRSSequentialAnimation duration seconds equals: 0;
		assert:
			aRSSequentialAnimation duration abs class equals: Duration;
		assert:
			aRSSequentialAnimation duration abs seconds equals: 0;
		assert:
			aRSSequentialAnimation duration abs abs class
			equals: Duration;
		assert:
			aRSSequentialAnimation duration abs minutes equals: 0;
		assert:
			aRSSequentialAnimation duration abs negated class
			equals: Duration;
		assert:
			aRSSequentialAnimation duration abs totalSeconds equals: 0;
		deny:
			aRSSequentialAnimation duration abs negative;
		assert:
			aRSSequentialAnimation duration abs days equals: 0;
		assert:
			aRSSequentialAnimation duration abs hours equals: 0;
		assert:
			aRSSequentialAnimation duration abs wholeMicroseconds
			equals: 0;
		assert:
			aRSSequentialAnimation duration abs isZero;
		assert:
			aRSSequentialAnimation duration abs wholeMilliseconds
			equals: 0;
		assert:
			aRSSequentialAnimation duration abs positive;
		assert:
			aRSSequentialAnimation duration abs wholeNanoseconds
			equals: 0;
		assert:
			aRSSequentialAnimation duration minutes equals: 0;
		assert:
			aRSSequentialAnimation duration negated class
			equals: Duration;
		assert:
			aRSSequentialAnimation duration negated seconds equals: 0;
		assert:
			aRSSequentialAnimation duration negated abs class
			equals: Duration;
		assert:
			aRSSequentialAnimation duration negated minutes equals: 0;
		assert:
			aRSSequentialAnimation duration negated negated class
			equals: Duration;
		assert:
			aRSSequentialAnimation duration negated totalSeconds
			equals: 0;
		deny:
			aRSSequentialAnimation duration negated negative;
		assert:
			aRSSequentialAnimation duration negated days equals: 0;
		assert:
			aRSSequentialAnimation duration negated hours equals: 0;
		assert:
			aRSSequentialAnimation duration negated wholeMicroseconds
			equals: 0;
		assert:
			aRSSequentialAnimation duration negated isZero;
		assert:
			aRSSequentialAnimation duration negated wholeMilliseconds
			equals: 0;
		assert:
			aRSSequentialAnimation duration negated positive;
		assert:
			aRSSequentialAnimation duration negated wholeNanoseconds
			equals: 0;
		assert:
			aRSSequentialAnimation duration totalSeconds equals: 0;
		deny:
			aRSSequentialAnimation duration negative;
		assert:
			aRSSequentialAnimation duration days equals: 0;
		assert:
			aRSSequentialAnimation duration hours equals: 0;
		assert:
			aRSSequentialAnimation duration wholeMicroseconds equals: 0;
		assert:
			aRSSequentialAnimation duration isZero;
		assert:
			aRSSequentialAnimation duration wholeMilliseconds equals: 0;
		assert:
			aRSSequentialAnimation duration positive;
		assert:
			aRSSequentialAnimation duration wholeNanoseconds equals: 0.
	canvas numberOfDeepNodes.
	shape := RSBox new size: 20.
	canvas add: shape.
	evt := RSShapeAddedEvent new shape: shape.
	canvas announce: evt
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testEventKnowsItsCanvas_amp_A97_A203 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSCanvas#parallelAnimation#21#45'>
	<madeBySmallAmp>
	| evt t aRSParallelAnimation |
	evt := RSEvent new.
	t := false.
	aRSParallelAnimation := canvas
		when: RSEvent do: [ :ex | t := true ];
		numberOfFixedShapes;
		announce: evt;
		parallelAnimation.
	self
		assert:
			aRSParallelAnimation class equals: RSParallelAnimation;
		assert:
			aRSParallelAnimation duration class equals: Duration;
		assert:
			aRSParallelAnimation duration seconds equals: 0;
		assert:
			aRSParallelAnimation duration abs class equals: Duration;
		assert:
			aRSParallelAnimation duration abs seconds equals: 0;
		assert:
			aRSParallelAnimation duration abs abs class
			equals: Duration;
		assert:
			aRSParallelAnimation duration abs minutes equals: 0;
		assert:
			aRSParallelAnimation duration abs negated class
			equals: Duration;
		assert:
			aRSParallelAnimation duration abs totalSeconds equals: 0;
		deny:
			aRSParallelAnimation duration abs negative;
		assert:
			aRSParallelAnimation duration abs days equals: 0;
		assert:
			aRSParallelAnimation duration abs hours equals: 0;
		assert:
			aRSParallelAnimation duration abs wholeMicroseconds
			equals: 0;
		assert:
			aRSParallelAnimation duration abs isZero;
		assert:
			aRSParallelAnimation duration abs wholeMilliseconds
			equals: 0;
		assert:
			aRSParallelAnimation duration abs positive;
		assert:
			aRSParallelAnimation duration abs wholeNanoseconds
			equals: 0;
		assert:
			aRSParallelAnimation duration minutes equals: 0;
		assert:
			aRSParallelAnimation duration negated class
			equals: Duration;
		assert:
			aRSParallelAnimation duration negated seconds equals: 0;
		assert:
			aRSParallelAnimation duration negated abs class
			equals: Duration;
		assert:
			aRSParallelAnimation duration negated minutes equals: 0;
		assert:
			aRSParallelAnimation duration negated negated class
			equals: Duration;
		assert:
			aRSParallelAnimation duration negated totalSeconds
			equals: 0;
		deny:
			aRSParallelAnimation duration negated negative;
		assert:
			aRSParallelAnimation duration negated days equals: 0;
		assert:
			aRSParallelAnimation duration negated hours equals: 0;
		assert:
			aRSParallelAnimation duration negated wholeMicroseconds
			equals: 0;
		assert:
			aRSParallelAnimation duration negated isZero;
		assert:
			aRSParallelAnimation duration negated wholeMilliseconds
			equals: 0;
		assert:
			aRSParallelAnimation duration negated positive;
		assert:
			aRSParallelAnimation duration negated wholeNanoseconds
			equals: 0;
		assert:
			aRSParallelAnimation duration totalSeconds equals: 0;
		deny:
			aRSParallelAnimation duration negative;
		assert:
			aRSParallelAnimation duration days equals: 0;
		assert:
			aRSParallelAnimation duration hours equals: 0;
		assert:
			aRSParallelAnimation duration wholeMicroseconds equals: 0;
		assert:
			aRSParallelAnimation duration isZero;
		assert:
			aRSParallelAnimation duration wholeMilliseconds equals: 0;
		assert:
			aRSParallelAnimation duration positive;
		assert:
			aRSParallelAnimation duration wholeNanoseconds equals: 0
]

{ #category : #events }
RSCanvasTest >> testLowLevelEvent [
	| box |
	box := RSBox new size: 30.
	box when: RSMouseDragging do: [ :evt | box ].
	canvas addShape: box.
	self assert: canvas extent equals: 500 asPoint.
	self
		assert:
			(canvas
				shapeWithAction: RSMouseDragging
				forPositionInPixels: 250 @ 250)
		identicalTo: box
]

{ #category : #'tests - opening' }
RSCanvasTest >> testMultipleOpenOnce [
	| c1 c2 win1 win2 |
	c1 := RSCanvas new.
	win1 := c1 openOnce.
	c2 := RSCanvas new.
	win2 := c2 openOnce.
	[ self deny: win1 isDisplayed.
	self assert: win2 isDisplayed ]
		ensure: [ win1 delete.
			win2 delete ]
]

{ #category : #'tests - composite' }
RSCanvasTest >> testNestedShape [
	| shape innerShape |
	shape := RSComposite new.
	canvas addShape: shape.
	innerShape := RSBox new.
	shape add: innerShape.
	self assert: shape canvas equals: canvas.
	self assert: innerShape parent equals: shape.
	self assert: innerShape canvas equals: canvas
]

{ #category : #'tests - composite' }
RSCanvasTest >> testNestedShapeNotAddedToACanvas [
	| shape innerShape |
	shape := RSComposite new.
	innerShape := RSBox new.
	shape add: innerShape.
	self assert: shape canvas isNil.
	self assert: innerShape parent equals: shape.
	self assert: innerShape canvas isNil
]

{ #category : #running }
RSCanvasTest >> testNodesShapesAndEdges [
	| n1 n2 n3 eb nodes |
	n1 := RSEllipse new
		size: 10;
		model: 1.
	n2 := RSEllipse new
		size: 10;
		model: 2.
	n3 := RSEllipse new
		size: 10;
		model: 3.
	nodes := Array with: n1 with: n2 with: n3.
	canvas addAll: nodes.
	eb := RSLineBuilder line.
	eb canvas: canvas.
	eb useAssociations: (Array with: 1 -> 2 with: 2 -> 3 with: 3 -> 1).
	self assert: canvas shapes size equals: 6.
	self assert: (canvas shapes includesAll: nodes).
	self assert: canvas nodes equals: nodes asGroup.
	self assert: canvas edges size equals: 3
]

{ #category : #'tests - opening' }
RSCanvasTest >> testOpen [
	| c win |
	c := RSCanvas new.
	win := c open.
	self assert: win class equals: SystemWindow.
	win delete
]

{ #category : #'tests - opening' }
RSCanvasTest >> testOpenOnce [
	| c win morph |
	c := RSCanvas new.
	win := c openOnce.
	self assert: win class equals: SystemWindow.
	morph := win findDeeplyA: RSAthensMorph.
	self assert: morph class equals: RSAthensMorph.
	self assert: morph canvas equals: c.
	win delete
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testOpen_amp_D0_D1 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSCanvas#transform:#20#27'>
	<madeBySmallAmp>
	| c win |
	c := RSCanvas new.
	RSCanvas
		new;
		new.
	win := c open.
	self
		assert: c class equals: RSCanvas;
		assert: c extent equals: 490.0 @ 467.0;
		assert: c visibleRectangle class equals: Rectangle;
		assert: c visibleRectangle top class equals: SmallFloat64;
		assert: c visibleRectangle extent
			equals: 489.9999510000049 @ 466.9999533000046;
		assert: c visibleRectangle hasPositiveExtent;
		assert: c visibleRectangle area class equals: SmallFloat64;
		deny: c visibleRectangle isTall;
		assert: c visibleRectangle aboveCenter equals: 0 @ 0;
		assert: c visibleRectangle bottomCenter
			equals: 0 @ 233.4999766500023;
		assert: c visibleRectangle corner
			equals: 244.99997550000245 @ 233.4999766500023;
		assert: c visibleRectangle left class equals: SmallFloat64;
		assert: c visibleRectangle origin
			equals: -244.99997550000245 @ -233.4999766500023;
		assert: c visibleRectangle width class equals: SmallFloat64;
		assert: c visibleRectangle right class equals: SmallFloat64;
		deny: c visibleRectangle isZero;
		assert: c visibleRectangle isWide;
		assert: c visibleRectangle innerCorners class equals: Array;
		assert: c visibleRectangle innerCorners size equals: 4;
		assert: (c visibleRectangle innerCorners at: 1) class equals: Point;
		assert: (c visibleRectangle innerCorners at: 2) class equals: Point;
		assert: (c visibleRectangle innerCorners at: 3) class equals: Point;
		assert: (c visibleRectangle innerCorners at: 4) class equals: Point;
		assert: c visibleRectangle topCenter equals: 0 @ -233.4999766500023;
		assert: c visibleRectangle topRight
			equals: 244.99997550000245 @ -233.4999766500023;
		assert: c visibleRectangle bottomRight
			equals: 244.99997550000245 @ 233.4999766500023;
		assert: c visibleRectangle center equals: 0 @ 0;
		assert: c visibleRectangle topLeft
			equals: -244.99997550000245 @ -233.4999766500023;
		assert: c visibleRectangle bottom class equals: SmallFloat64;
		assert: c visibleRectangle floatCenter equals: 0.0 @ 0.0;
		assert: c visibleRectangle leftCenter
			equals: -244.99997550000245 @ 0;
		assert: c visibleRectangle isRectangle;
		assert: c visibleRectangle bottomLeft
			equals: -244.99997550000245 @ 233.4999766500023;
		assert: c visibleRectangle corners class equals: Array;
		assert: c visibleRectangle corners size equals: 4;
		assert: (c visibleRectangle corners at: 1) class equals: Point;
		assert: (c visibleRectangle corners at: 2) class equals: Point;
		assert: (c visibleRectangle corners at: 3) class equals: Point;
		assert: (c visibleRectangle corners at: 4) class equals: Point;
		assert: c visibleRectangle rightCenter
			equals: 244.99997550000245 @ 0;
		assert: c visibleRectangle height class equals: SmallFloat64;
		assert: c morph class equals: RSAthensMorph;
		assert: c morph fullBounds class equals: Rectangle;
		assert: c morph fullBounds top equals: 28.0;
		assert: c morph fullBounds extent class equals: Point;
		assert: c morph fullBounds hasPositiveExtent;
		assert: c morph fullBounds area class equals: SmallFloat64;
		deny: c morph fullBounds isTall;
		assert: c morph fullBounds aboveCenter class equals: Point;
		assert: c morph fullBounds bottomCenter class equals: Point;
		assert: c morph fullBounds corner class equals: Point;
		assert: c morph fullBounds left equals: 195.0;
		assert: c morph fullBounds origin class equals: Point;
		assert: c morph fullBounds width class equals: SmallFloat64;
		assert: c morph fullBounds right class equals: SmallFloat64;
		deny: c morph fullBounds isZero;
		assert: c morph fullBounds isWide;
		assert: c morph fullBounds innerCorners class equals: Array;
		assert: c morph fullBounds innerCorners size equals: 4;
		assert: c morph fullBounds topCenter class equals: Point;
		assert: c morph fullBounds topRight class equals: Point;
		assert: c morph fullBounds bottomRight class equals: Point;
		assert: c morph fullBounds center class equals: Point;
		assert: c morph fullBounds topLeft class equals: Point;
		assert: c morph fullBounds bottom class equals: SmallFloat64;
		assert: c morph fullBounds floatCenter class equals: Point;
		assert: c morph fullBounds leftCenter class equals: Point;
		assert: c morph fullBounds isRectangle;
		assert: c morph fullBounds bottomLeft class equals: Point;
		assert: c morph fullBounds corners class equals: Array;
		assert: c morph fullBounds corners size equals: 4;
		assert: c morph fullBounds rightCenter class equals: Point;
		assert: c morph fullBounds height class equals: SmallFloat64;
		assert: c morph scaleFactor equals: 1.0;
		assert: c morph embeddedWindowOrNil isNil;
		assert: c morph insetColor class equals: Color;
		assert: c morph insetColor hsvSaturation equals: 1.0;
		assert: c morph insetColor alpha equals: 1.0;
		assert: c morph insetColor red equals: 0.0;
		assert: c morph insetColor brightness equals: 1.0;
		assert: c morph insetColor name equals: #blue;
		assert: c morph insetColor hue equals: 240.0;
		assert: c morph insetColor beOpaque class equals: Color;
		assert: c morph insetColor green equals: 0.0;
		assert: c morph insetColor chroma equals: 1.0;
		assert: c morph insetColor lightness equals: 0.5;
		assert: c morph insetColor hslSaturation equals: 1.0;
		assert: c morph insetColor saturation equals: 1.0;
		assert: c morph insetColor luminance equals: 0.114;
		assert: c morph insetColor blue equals: 1.0;
		assert: c morph userString isNil;
		assert: c morph bounds class equals: Rectangle;
		assert: c morph bounds top equals: 28.0;
		assert: c morph bounds extent class equals: Point;
		assert: c morph bounds hasPositiveExtent;
		assert: c morph bounds area class equals: SmallFloat64;
		deny: c morph bounds isTall;
		assert: c morph bounds aboveCenter class equals: Point;
		assert: c morph bounds bottomCenter class equals: Point;
		assert: c morph bounds corner class equals: Point;
		assert: c morph bounds left equals: 195.0;
		assert: c morph bounds origin class equals: Point;
		assert: c morph bounds width class equals: SmallFloat64;
		assert: c morph bounds right class equals: SmallFloat64;
		deny: c morph bounds isZero;
		assert: c morph bounds isWide;
		assert: c morph bounds innerCorners class equals: Array;
		assert: c morph bounds innerCorners size equals: 4;
		assert: c morph bounds topCenter class equals: Point;
		assert: c morph bounds topRight class equals: Point;
		assert: c morph bounds bottomRight class equals: Point;
		assert: c morph bounds center class equals: Point;
		assert: c morph bounds topLeft class equals: Point;
		assert: c morph bounds bottom class equals: SmallFloat64;
		assert: c morph bounds floatCenter class equals: Point;
		assert: c morph bounds leftCenter class equals: Point;
		assert: c morph bounds isRectangle;
		assert: c morph bounds bottomLeft class equals: Point;
		assert: c morph bounds corners class equals: Array;
		assert: c morph bounds corners size equals: 4;
		assert: c morph bounds rightCenter class equals: Point;
		assert: c morph bounds height class equals: SmallFloat64;
		assert: c morph surface class equals: AthensCairoSurface;
		assert: c morph surface extent class equals: Point;
		assert: c morph surface handle class equals: SmallInteger;
		assert: c morph surface getDataPtr class equals: ExternalData;
		assert: c morph surface status equals: 0;
		assert: c morph surface height class equals: SmallInteger;
		assert: c morph surface width class equals: SmallInteger;
		assert: c morph surface isSuccess;
		assert: c morph surface stride class equals: SmallInteger;
		deny: c morph isLocked;
		deny: c morph isDrawing;
		deny: c morph isDragging;
		assert: c morph roassalCanvas class equals: RSCanvas;
		assert: c morph roassalCanvas deepNodes class
			equals: OrderedCollection;
		assertEmpty: c morph roassalCanvas deepNodes;
		assert: c morph roassalCanvas extent class equals: Point;
		assert: c morph roassalCanvas numberOfEdges equals: 0;
		assert: c morph roassalCanvas animations class
			equals: OrderedCollection;
		assertEmpty: c morph roassalCanvas animations;
		assert: c morph roassalCanvas lines class equals: RSGroup;
		assertEmpty: c morph roassalCanvas lines;
		assert: c morph roassalCanvas color class equals: Color;
		assert: c morph roassalCanvas numberOfNodes equals: 0;
		assert: c morph roassalCanvas shapes class equals: RSGroup;
		assertEmpty: c morph roassalCanvas shapes;
		assert: c morph roassalCanvas numberOfShapes equals: 0;
		deny: c morph roassalCanvas showRectangles;
		assert: c morph roassalCanvas visibleRectangle class
			equals: Rectangle;
		assert: c morph roassalCanvas numberOfDeepNodes equals: 0;
		assert: c morph roassalCanvas fixedShapes class equals: RSGroup;
		assertEmpty: c morph roassalCanvas fixedShapes;
		assert: c morph roassalCanvas edges class equals: RSGroup;
		assertEmpty: c morph roassalCanvas edges;
		assert: c morph roassalCanvas clearBackground;
		assert: c morph roassalCanvas numberOfFixedShapes equals: 0;
		assert: c morph roassalCanvas encompassingRectangle class
			equals: Rectangle;
		assert: c morph roassalCanvas announcer class equals: Announcer;
		assert: c morph roassalCanvas camera class equals: RSCamera;
		assert: c morph roassalCanvas basicRectangle class
			equals: Rectangle;
		assert: c morph roassalCanvas morph class equals: RSAthensMorph;
		assert: c morph roassalCanvas nodes class equals: RSGroup;
		assertEmpty: c morph roassalCanvas nodes;
		deny: c morph roassalCanvas isShape;
		assert: c morph visibleClearArea class equals: Rectangle;
		assert: c morph visibleClearArea top equals: 28.0;
		assert: c morph visibleClearArea extent class equals: Point;
		assert: c morph visibleClearArea hasPositiveExtent;
		assert: c morph visibleClearArea area class equals: SmallFloat64;
		assert: c morph visibleClearArea isTall;
		assert: c morph visibleClearArea aboveCenter class equals: Point;
		assert: c morph visibleClearArea bottomCenter class equals: Point;
		assert: c morph visibleClearArea corner class equals: Point;
		assert: c morph visibleClearArea left equals: 195.0;
		assert: c morph visibleClearArea origin class equals: Point;
		assert: c morph visibleClearArea width equals: 45.0;
		assert: c morph visibleClearArea right equals: 240;
		deny: c morph visibleClearArea isZero;
		deny: c morph visibleClearArea isWide;
		assert: c morph visibleClearArea innerCorners class equals: Array;
		assert: c morph visibleClearArea innerCorners size equals: 4;
		assert: c morph visibleClearArea topCenter class equals: Point;
		assert: c morph visibleClearArea topRight class equals: Point;
		assert: c morph visibleClearArea bottomRight class equals: Point;
		assert: c morph visibleClearArea center class equals: Point;
		assert: c morph visibleClearArea topLeft class equals: Point;
		assert: c morph visibleClearArea bottom class equals: SmallInteger;
		assert: c morph visibleClearArea floatCenter class equals: Point;
		assert: c morph visibleClearArea leftCenter class equals: Point;
		assert: c morph visibleClearArea isRectangle;
		assert: c morph visibleClearArea bottomLeft class equals: Point;
		assert: c morph visibleClearArea corners class equals: Array;
		assert: c morph visibleClearArea corners size equals: 4;
		assert: c morph visibleClearArea rightCenter class equals: Point;
		assert: c morph visibleClearArea height class equals: SmallFloat64;
		assert: c morph owner class equals: SystemWindow;
		assert: c morph owner label equals: 'Roassal';
		assert: c morph owner shouldDropOnMouseUp;
		assert: c morph owner wantsToBeCachedByHand;
		assert: c morph owner menuBox class equals: MultistateButtonMorph;
		assert: c morph owner model isNil;
		assert: c morph owner labelString equals: 'Roassal';
		assert: c morph owner fullFrame class equals: Rectangle;
		assert: c morph owner canBeMaximized;
		deny: c morph owner mustNotClose;
		assert: c morph owner labelArea class equals: AlignmentMorph;
		assert: c morph owner paneMorphs class equals: Array;
		assert: c morph owner paneMorphs size equals: 1;
		deny: c morph owner isCollapsed;
		assert: c morph owner isCloseable;
		assert: c morph owner collapsedFrame isNil;
		assert: c morph owner isSystemWindow;
		assert: c morph owner isDisplayed;
		assert: c morph owner labelWidgetAllowance equals: 133;
		assert: c morph otherProperties class
			equals: SmallIdentityDictionary;
		assert: c morph otherProperties size equals: 0;
		assert: c morph otherProperties values class equals: Array;
		assertEmpty: c morph otherProperties values;
		assert: c morph otherProperties keysSortedSafely class
			equals: SortedCollection;
		assertEmpty: c morph otherProperties keysSortedSafely;
		assert: c morph otherProperties isDictionary;
		assert: c morph otherProperties isHealthy;
		assert: c morph otherProperties associations class equals: Array;
		assertEmpty: c morph otherProperties associations;
		assert: c morph otherProperties keys class equals: Array;
		assertEmpty: c morph otherProperties keys;
		assert: c morph otherProperties capacity equals: 2;
		assert: c morph dockingBars class equals: Array;
		assertEmpty: c morph dockingBars;
		deny: c morph isFlexed;
		deny: c morph resistsRemoval;
		assert: c morph submorphCount equals: 0;
		assert: c morph borderWidth equals: 0;
		assert: c morph couldHaveRoundedCorners;
		assert: c morph renderer class equals: RSAthensRenderer;
		assert: c morph renderer canvas class equals: AthensCairoCanvas;
		assert: c morph renderer builder isNil;
		assert: c morph halosEnabled;
		assert: c morph enabled;
		assert: c morph isFullOnScreen;
		assert: c morph extension class equals: MorphExtension;
		assert: c morph extension fillStyle isNil;
		assert: c morph extension layoutProperties class
			equals: LayoutProperties;
		assert: c morph extension otherProperties class
			equals: SmallIdentityDictionary;
		assert: c morph extension borderStyle class equals: SimpleBorder;
		assert: c morph extension assureOtherProperties class
			equals: SmallIdentityDictionary;
		assert: c morph extension layoutPolicy isNil;
		assert: c morph extension sortedPropertyNames class equals: Array;
		assertEmpty: c morph extension sortedPropertyNames;
		assert: c morph extension visible;
		assert: c morph extension actionMap class
			equals: IdentityDictionary;
		assert: c morph extension layoutFrame class equals: LayoutFrame;
		assert: c morph extension externalName isNil;
		assert: c morph extension eventHandler isNil;
		deny: c morph extension sticky;
		deny: c morph extension locked;
		assert: c morph extension cornerStyle equals: #square;
		assert: c morph extension balloonText isNil;
		assert: c morph extension clipSubmorphs isNil;
		assert: c morph raisedColor class equals: Color;
		assert: c morph raisedColor hsvSaturation equals: 1.0;
		assert: c morph raisedColor alpha equals: 1.0;
		assert: c morph raisedColor red equals: 0.0;
		assert: c morph raisedColor brightness equals: 1.0;
		assert: c morph raisedColor name equals: #blue;
		assert: c morph raisedColor hue equals: 240.0;
		assert: c morph raisedColor beOpaque class equals: Color;
		assert: c morph raisedColor green equals: 0.0;
		assert: c morph raisedColor chroma equals: 1.0;
		assert: c morph raisedColor lightness equals: 0.5;
		assert: c morph raisedColor hslSaturation equals: 1.0;
		assert: c morph raisedColor saturation equals: 1.0;
		assert: c morph raisedColor luminance equals: 0.114;
		assert: c morph raisedColor blue equals: 1.0;
		assert: c morph colorForInsets class equals: Color;
		assert: c morph colorForInsets hsvSaturation equals: 1.0;
		assert: c morph colorForInsets alpha equals: 1.0;
		assert: c morph colorForInsets red equals: 0.0;
		assert: c morph colorForInsets brightness equals: 1.0;
		assert: c morph colorForInsets name equals: #blue;
		assert: c morph colorForInsets hue equals: 240.0;
		assert: c morph colorForInsets beOpaque class equals: Color;
		assert: c morph colorForInsets green equals: 0.0;
		assert: c morph colorForInsets chroma equals: 1.0;
		assert: c morph colorForInsets lightness equals: 0.5;
		assert: c morph colorForInsets hslSaturation equals: 1.0;
		assert: c morph colorForInsets saturation equals: 1.0;
		assert: c morph colorForInsets luminance equals: 0.114;
		assert: c morph colorForInsets blue equals: 1.0;
		deny: c morph isLineMorph;
		deny: c morph shouldFlex;
		assert: c morph submorphs class equals: Array;
		assertEmpty: c morph submorphs;
		deny: c morph isDockingBar;
		assert: c morph wantsToBeCachedByHand;
		assert: c morph highlightColor class equals: Color;
		assert: c morph highlightColor hsvSaturation equals: 0.0;
		assert: c morph highlightColor alpha equals: 1.0;
		assert: c morph highlightColor red equals: 0.29521016617790813;
		assert: c morph highlightColor brightness
			equals: 0.29521016617790813;
		assert: c morph highlightColor name equals: #unnamed;
		assert: c morph highlightColor hue equals: 0.0;
		assert: c morph highlightColor beOpaque class equals: Color;
		assert: c morph highlightColor green equals: 0.29521016617790813;
		assert: c morph highlightColor chroma equals: 0.0;
		assert: c morph highlightColor lightness
			equals: 0.29521016617790813;
		assert: c morph highlightColor hslSaturation equals: 0.0;
		assert: c morph highlightColor saturation equals: 0.0;
		assert: c morph highlightColor luminance
			equals: 0.29521016617790813;
		assert: c morph highlightColor blue equals: 0.29521016617790813;
		deny: c morph wantsToBeTopmost;
		assert: c morph updateableActionMap class
			equals: IdentityDictionary;
		assert: c morph updateableActionMap values class equals: Array;
		assertEmpty: c morph updateableActionMap values;
		assert: c morph updateableActionMap keysSortedSafely class
			equals: Array;
		assertEmpty: c morph updateableActionMap keysSortedSafely;
		assert: c morph updateableActionMap isDictionary;
		assert: c morph updateableActionMap isHealthy;
		assert: c morph updateableActionMap associations class
			equals: Array;
		assertEmpty: c morph updateableActionMap associations;
		assert: c morph updateableActionMap keys class equals: Array;
		assertEmpty: c morph updateableActionMap keys;
		deny: c morph isTranslucentButNotTransparent;
		assert: c morph borderColor class equals: Color;
		assert: c morph borderColor hsvSaturation equals: 0.0;
		assert: c morph borderColor alpha equals: 1.0;
		assert: c morph borderColor red equals: 0.25024437927663734;
		assert: c morph borderColor brightness equals: 0.25024437927663734;
		assert: c morph borderColor name equals: #veryDarkGray;
		assert: c morph borderColor hue equals: 0.0;
		assert: c morph borderColor beOpaque class equals: Color;
		assert: c morph borderColor green equals: 0.25024437927663734;
		assert: c morph borderColor chroma equals: 0.0;
		assert: c morph borderColor lightness equals: 0.25024437927663734;
		assert: c morph borderColor hslSaturation equals: 0.0;
		assert: c morph borderColor saturation equals: 0.0;
		assert: c morph borderColor luminance equals: 0.25024437927663734;
		assert: c morph borderColor blue equals: 0.25024437927663734;
		assert: c morph mainDockingBars class equals: Array;
		assertEmpty: c morph mainDockingBars;
		deny: c morph shouldDropOnMouseUp;
		assert: c morph eventHandler isNil;
		assert: c morph assureExtension class equals: MorphExtension;
		assert: c morph assureExtension fillStyle isNil;
		assert: c morph assureExtension layoutProperties class
			equals: LayoutProperties;
		assert: c morph assureExtension otherProperties class
			equals: SmallIdentityDictionary;
		assert: c morph assureExtension borderStyle class
			equals: SimpleBorder;
		assert: c morph assureExtension assureOtherProperties class
			equals: SmallIdentityDictionary;
		assert: c morph assureExtension layoutPolicy isNil;
		assert: c morph assureExtension sortedPropertyNames class
			equals: Array;
		assertEmpty: c morph assureExtension sortedPropertyNames;
		assert: c morph assureExtension visible;
		assert: c morph assureExtension actionMap class
			equals: IdentityDictionary;
		assert: c morph assureExtension layoutFrame class
			equals: LayoutFrame;
		assert: c morph assureExtension externalName isNil;
		assert: c morph assureExtension eventHandler isNil;
		deny: c morph assureExtension sticky;
		deny: c morph assureExtension locked;
		assert: c morph assureExtension cornerStyle equals: #square;
		assert: c morph assureExtension balloonText isNil;
		assert: c morph assureExtension clipSubmorphs isNil;
		assert: c morph borderWidthForRounding equals: 0;
		assert: c morph color class equals: Color;
		assert: c morph color hsvSaturation equals: 1.0;
		assert: c morph color alpha equals: 1.0;
		assert: c morph color red equals: 0.0;
		assert: c morph color brightness equals: 1.0;
		assert: c morph color name equals: #blue;
		assert: c morph color hue equals: 240.0;
		assert: c morph color beOpaque class equals: Color;
		assert: c morph color green equals: 0.0;
		assert: c morph color chroma equals: 1.0;
		assert: c morph color lightness equals: 0.5;
		assert: c morph color hslSaturation equals: 1.0;
		assert: c morph color saturation equals: 1.0;
		assert: c morph color luminance equals: 0.114;
		assert: c morph color blue equals: 1.0;
		assert: c morph allMorphs class equals: Array;
		assert: c morph allMorphs size equals: 1;
		assert: (c morph allMorphs at: 1) class equals: RSAthensMorph;
		assert: c morph balloonText isNil;
		assert: c morph submorphBefore class equals: AlignmentMorph;
		assert: c morph submorphBefore borderStyle class
			equals: BorderStyle;
		deny: c morph submorphBefore isTranslucentButNotTransparent;
		assert: c morph submorphBefore borderColor class equals: Color;
		assert: c morph submorphBefore colorForInsets class equals: Color;
		assert: c morph submorphBefore borderWidth equals: 0;
		assert: c morph submorphBefore doesBevels;
		assert: c morph submorphBefore isAlignmentMorph;
		deny: c morph hasSubmorphs;
		deny: c morph doesBevels;
		assert: c morph canvas class equals: RSCanvas;
		assert: c morph canvas deepNodes class equals: OrderedCollection;
		assertEmpty: c morph canvas deepNodes;
		assert: c morph canvas extent class equals: Point;
		assert: c morph canvas numberOfEdges equals: 0;
		assert: c morph canvas animations class equals: OrderedCollection;
		assertEmpty: c morph canvas animations;
		assert: c morph canvas lines class equals: RSGroup;
		assertEmpty: c morph canvas lines;
		assert: c morph canvas color class equals: Color;
		assert: c morph canvas numberOfNodes equals: 0;
		assert: c morph canvas shapes class equals: RSGroup;
		assertEmpty: c morph canvas shapes;
		assert: c morph canvas numberOfShapes equals: 0;
		deny: c morph canvas showRectangles;
		assert: c morph canvas visibleRectangle class equals: Rectangle;
		assert: c morph canvas numberOfDeepNodes equals: 0;
		assert: c morph canvas fixedShapes class equals: RSGroup;
		assertEmpty: c morph canvas fixedShapes;
		assert: c morph canvas edges class equals: RSGroup;
		assertEmpty: c morph canvas edges;
		assert: c morph canvas clearBackground;
		assert: c morph canvas numberOfFixedShapes equals: 0;
		assert: c morph canvas encompassingRectangle class
			equals: Rectangle;
		assert: c morph canvas announcer class equals: Announcer;
		assert: c morph canvas camera class equals: RSCamera;
		assert: c morph canvas basicRectangle class equals: Rectangle;
		assert: c morph canvas morph class equals: RSAthensMorph;
		assert: c morph canvas nodes class equals: RSGroup;
		assertEmpty: c morph canvas nodes;
		deny: c morph canvas isShape;
		assert: c morph allNonSubmorphMorphs class
			equals: OrderedCollection;
		assertEmpty: c morph allNonSubmorphMorphs;
		assert: c morph borderStyle class equals: SimpleBorder;
		assert: c morph borderStyle style equals: #simple;
		deny: c morph borderStyle isComplex;
		assert: c morph borderStyle widthForRounding equals: 0;
		assert: c morph borderStyle color class equals: Color;
		assert: c morph borderStyle width equals: 0;
		deny: c morph borderStyle hasFillStyle;
		deny: c morph borderStyle isComposite;
		assert: c morph borderStyle bottomRightColor class equals: Color;
		assert: c morph borderStyle colorsAtCorners class equals: Array;
		assert: c morph borderStyle colorsAtCorners size equals: 4;
		assert: c morph borderStyle topLeftColor class equals: Color;
		assert: c morph borderStyle baseColor class equals: Color;
		assert: c morph borderStyle isBorderStyle;
		assert: c morph hasExtension;
		deny: c morph isSticky;
		assert: c morph submorphAfter isNil;
		deny: c morph wantsSteps;
		assert: c morph isMorph;
		assert: c morph actionMap class equals: IdentityDictionary;
		assert: c morph actionMap values class equals: Array;
		assertEmpty: c morph actionMap values;
		assert: c morph actionMap keysSortedSafely class equals: Array;
		assertEmpty: c morph actionMap keysSortedSafely;
		assert: c morph actionMap isDictionary;
		assert: c morph actionMap isHealthy;
		assert: c morph actionMap associations class equals: Array;
		assertEmpty: c morph actionMap associations;
		assert: c morph actionMap keys class equals: Array;
		assertEmpty: c morph actionMap keys
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testOpen_amp_R2_D0 [
	<smallAmpCoveres:
		'ReplaceIfFalseReceiverWithFalseOperator#RSCanvas#removeShape:#132#179'>
	<madeBySmallAmp>
	| c win |
	c := RSCanvas new.
	RSCanvas new.
	win := c open.
	self
		assert: c class equals: RSCanvas;
		assert: c extent equals: 490.0 @ 467.0;
		assert: c morph class equals: RSAthensMorph;
		assert: c morph fullBounds class equals: Rectangle;
		assert: c morph fullBounds top equals: 28.0;
		assert: c morph fullBounds extent class equals: Point;
		assert: c morph fullBounds hasPositiveExtent;
		assert: c morph fullBounds area equals: 228830.0;
		deny: c morph fullBounds isTall;
		assert: c morph fullBounds aboveCenter class equals: Point;
		assert: c morph fullBounds bottomCenter class equals: Point;
		assert: c morph fullBounds corner class equals: Point;
		assert: c morph fullBounds left equals: 195.0;
		assert: c morph fullBounds origin class equals: Point;
		assert: c morph fullBounds width equals: 490.0;
		assert: c morph fullBounds right equals: 685.0;
		deny: c morph fullBounds isZero;
		assert: c morph fullBounds isWide;
		assert: c morph fullBounds innerCorners class equals: Array;
		assert: c morph fullBounds innerCorners size equals: 4;
		assert: c morph fullBounds topCenter class equals: Point;
		assert: c morph fullBounds topRight class equals: Point;
		assert: c morph fullBounds bottomRight class equals: Point;
		assert: c morph fullBounds center class equals: Point;
		assert: c morph fullBounds topLeft class equals: Point;
		assert: c morph fullBounds bottom equals: 495.0;
		assert: c morph fullBounds floatCenter class equals: Point;
		assert: c morph fullBounds leftCenter class equals: Point;
		assert: c morph fullBounds isRectangle;
		assert: c morph fullBounds bottomLeft class equals: Point;
		assert: c morph fullBounds corners class equals: Array;
		assert: c morph fullBounds corners size equals: 4;
		assert: c morph fullBounds rightCenter class equals: Point;
		assert: c morph fullBounds height equals: 467.0;
		assert: c morph scaleFactor equals: 1.0;
		assert: c morph embeddedWindowOrNil isNil;
		assert: c morph insetColor class equals: Color;
		assert: c morph insetColor hsvSaturation equals: 1.0;
		assert: c morph insetColor alpha equals: 1.0;
		assert: c morph insetColor red equals: 0.0;
		assert: c morph insetColor brightness equals: 1.0;
		assert: c morph insetColor name equals: #blue;
		assert: c morph insetColor hue equals: 240.0;
		assert: c morph insetColor beOpaque class equals: Color;
		assert: c morph insetColor green equals: 0.0;
		assert: c morph insetColor chroma equals: 1.0;
		assert: c morph insetColor lightness equals: 0.5;
		assert: c morph insetColor hslSaturation equals: 1.0;
		assert: c morph insetColor saturation equals: 1.0;
		assert: c morph insetColor luminance equals: 0.114;
		assert: c morph insetColor blue equals: 1.0;
		assert: c morph userString isNil;
		assert: c morph bounds class equals: Rectangle;
		assert: c morph bounds top equals: 28.0;
		assert: c morph bounds extent class equals: Point;
		assert: c morph bounds hasPositiveExtent;
		assert: c morph bounds area equals: 228830.0;
		deny: c morph bounds isTall;
		assert: c morph bounds aboveCenter class equals: Point;
		assert: c morph bounds bottomCenter class equals: Point;
		assert: c morph bounds corner class equals: Point;
		assert: c morph bounds left equals: 195.0;
		assert: c morph bounds origin class equals: Point;
		assert: c morph bounds width equals: 490.0;
		assert: c morph bounds right equals: 685.0;
		deny: c morph bounds isZero;
		assert: c morph bounds isWide;
		assert: c morph bounds innerCorners class equals: Array;
		assert: c morph bounds innerCorners size equals: 4;
		assert: c morph bounds topCenter class equals: Point;
		assert: c morph bounds topRight class equals: Point;
		assert: c morph bounds bottomRight class equals: Point;
		assert: c morph bounds center class equals: Point;
		assert: c morph bounds topLeft class equals: Point;
		assert: c morph bounds bottom equals: 495.0;
		assert: c morph bounds floatCenter class equals: Point;
		assert: c morph bounds leftCenter class equals: Point;
		assert: c morph bounds isRectangle;
		assert: c morph bounds bottomLeft class equals: Point;
		assert: c morph bounds corners class equals: Array;
		assert: c morph bounds corners size equals: 4;
		assert: c morph bounds rightCenter class equals: Point;
		assert: c morph bounds height equals: 467.0;
		assert: c morph surface class equals: AthensCairoSurface;
		assert: c morph surface extent class equals: Point;
		assert: c morph surface handle class equals: SmallInteger;
		assert: c morph surface getDataPtr class equals: ExternalData;
		assert: c morph surface status equals: 0;
		assert: c morph surface height class equals: SmallInteger;
		assert: c morph surface width class equals: SmallInteger;
		assert: c morph surface isSuccess;
		assert: c morph surface stride class equals: SmallInteger;
		deny: c morph isLocked;
		deny: c morph isDrawing;
		deny: c morph isDragging;
		assert: c morph roassalCanvas class equals: RSCanvas;
		assert: c morph roassalCanvas deepNodes class
			equals: OrderedCollection;
		assertEmpty: c morph roassalCanvas deepNodes;
		assert: c morph roassalCanvas extent class equals: Point;
		assert: c morph roassalCanvas numberOfEdges equals: 0;
		assert: c morph roassalCanvas animations class
			equals: OrderedCollection;
		assertEmpty: c morph roassalCanvas animations;
		assert: c morph roassalCanvas lines class equals: RSGroup;
		assertEmpty: c morph roassalCanvas lines;
		assert: c morph roassalCanvas color class equals: Color;
		assert: c morph roassalCanvas numberOfNodes equals: 0;
		assert: c morph roassalCanvas shapes class equals: RSGroup;
		assertEmpty: c morph roassalCanvas shapes;
		assert: c morph roassalCanvas numberOfShapes equals: 0;
		deny: c morph roassalCanvas showRectangles;
		assert: c morph roassalCanvas visibleRectangle class
			equals: Rectangle;
		assert: c morph roassalCanvas numberOfDeepNodes equals: 0;
		assert: c morph roassalCanvas fixedShapes class equals: RSGroup;
		assertEmpty: c morph roassalCanvas fixedShapes;
		assert: c morph roassalCanvas edges class equals: RSGroup;
		assertEmpty: c morph roassalCanvas edges;
		assert: c morph roassalCanvas clearBackground;
		assert: c morph roassalCanvas numberOfFixedShapes equals: 0;
		assert: c morph roassalCanvas encompassingRectangle class
			equals: Rectangle;
		assert: c morph roassalCanvas announcer class equals: Announcer;
		assert: c morph roassalCanvas camera class equals: RSCamera;
		assert: c morph roassalCanvas basicRectangle class
			equals: Rectangle;
		assert: c morph roassalCanvas morph class equals: RSAthensMorph;
		assert: c morph roassalCanvas nodes class equals: RSGroup;
		assertEmpty: c morph roassalCanvas nodes;
		deny: c morph roassalCanvas isShape;
		assert: c morph visibleClearArea class equals: Rectangle;
		assert: c morph visibleClearArea top equals: 28.0;
		assert: c morph visibleClearArea extent class equals: Point;
		assert: c morph visibleClearArea hasPositiveExtent;
		assert: c morph visibleClearArea area equals: 4140.0;
		assert: c morph visibleClearArea isTall;
		assert: c morph visibleClearArea aboveCenter class equals: Point;
		assert: c morph visibleClearArea bottomCenter class equals: Point;
		assert: c morph visibleClearArea corner class equals: Point;
		assert: c morph visibleClearArea left equals: 195.0;
		assert: c morph visibleClearArea origin class equals: Point;
		assert: c morph visibleClearArea width equals: 45.0;
		assert: c morph visibleClearArea right equals: 240;
		deny: c morph visibleClearArea isZero;
		deny: c morph visibleClearArea isWide;
		assert: c morph visibleClearArea innerCorners class equals: Array;
		assert: c morph visibleClearArea innerCorners size equals: 4;
		assert: c morph visibleClearArea topCenter class equals: Point;
		assert: c morph visibleClearArea topRight class equals: Point;
		assert: c morph visibleClearArea bottomRight class equals: Point;
		assert: c morph visibleClearArea center class equals: Point;
		assert: c morph visibleClearArea topLeft class equals: Point;
		assert: c morph visibleClearArea bottom equals: 120;
		assert: c morph visibleClearArea floatCenter class equals: Point;
		assert: c morph visibleClearArea leftCenter class equals: Point;
		assert: c morph visibleClearArea isRectangle;
		assert: c morph visibleClearArea bottomLeft class equals: Point;
		assert: c morph visibleClearArea corners class equals: Array;
		assert: c morph visibleClearArea corners size equals: 4;
		assert: c morph visibleClearArea rightCenter class equals: Point;
		assert: c morph visibleClearArea height equals: 92.0;
		assert: c morph owner class equals: SystemWindow;
		assert: c morph owner label equals: 'Roassal';
		assert: c morph owner shouldDropOnMouseUp;
		assert: c morph owner wantsToBeCachedByHand;
		assert: c morph owner menuBox class equals: MultistateButtonMorph;
		assert: c morph owner model isNil;
		assert: c morph owner labelString equals: 'Roassal';
		assert: c morph owner fullFrame class equals: Rectangle;
		assert: c morph owner canBeMaximized;
		deny: c morph owner mustNotClose;
		assert: c morph owner labelArea class equals: AlignmentMorph;
		assert: c morph owner paneMorphs class equals: Array;
		assert: c morph owner paneMorphs size equals: 1;
		deny: c morph owner isCollapsed;
		assert: c morph owner isCloseable;
		assert: c morph owner collapsedFrame isNil;
		assert: c morph owner isSystemWindow;
		assert: c morph owner isDisplayed;
		assert: c morph owner labelWidgetAllowance equals: 133;
		assert: c morph otherProperties class
			equals: SmallIdentityDictionary;
		assert: c morph otherProperties size equals: 0;
		assert: c morph otherProperties values class equals: Array;
		assertEmpty: c morph otherProperties values;
		assert: c morph otherProperties keysSortedSafely class
			equals: SortedCollection;
		assertEmpty: c morph otherProperties keysSortedSafely;
		assert: c morph otherProperties isDictionary;
		assert: c morph otherProperties isHealthy;
		assert: c morph otherProperties associations class equals: Array;
		assertEmpty: c morph otherProperties associations;
		assert: c morph otherProperties keys class equals: Array;
		assertEmpty: c morph otherProperties keys;
		assert: c morph otherProperties capacity equals: 2;
		assert: c morph dockingBars class equals: Array;
		assertEmpty: c morph dockingBars;
		deny: c morph isFlexed;
		deny: c morph resistsRemoval;
		assert: c morph submorphCount equals: 0;
		assert: c morph borderWidth equals: 0;
		assert: c morph couldHaveRoundedCorners;
		assert: c morph renderer class equals: RSAthensRenderer;
		assert: c morph renderer canvas class equals: AthensCairoCanvas;
		assert: c morph renderer builder isNil;
		assert: c morph halosEnabled;
		assert: c morph enabled;
		assert: c morph isFullOnScreen;
		assert: c morph extension class equals: MorphExtension;
		assert: c morph extension fillStyle isNil;
		assert: c morph extension layoutProperties class
			equals: LayoutProperties;
		assert: c morph extension otherProperties class
			equals: SmallIdentityDictionary;
		assert: c morph extension borderStyle class equals: SimpleBorder;
		assert: c morph extension assureOtherProperties class
			equals: SmallIdentityDictionary;
		assert: c morph extension layoutPolicy isNil;
		assert: c morph extension sortedPropertyNames class equals: Array;
		assertEmpty: c morph extension sortedPropertyNames;
		assert: c morph extension visible;
		assert: c morph extension actionMap class
			equals: IdentityDictionary;
		assert: c morph extension layoutFrame class equals: LayoutFrame;
		assert: c morph extension externalName isNil;
		assert: c morph extension eventHandler isNil;
		deny: c morph extension sticky;
		deny: c morph extension locked;
		assert: c morph extension cornerStyle equals: #square;
		assert: c morph extension balloonText isNil;
		assert: c morph extension clipSubmorphs isNil;
		assert: c morph raisedColor class equals: Color;
		assert: c morph raisedColor hsvSaturation equals: 1.0;
		assert: c morph raisedColor alpha equals: 1.0;
		assert: c morph raisedColor red equals: 0.0;
		assert: c morph raisedColor brightness equals: 1.0;
		assert: c morph raisedColor name equals: #blue;
		assert: c morph raisedColor hue equals: 240.0;
		assert: c morph raisedColor beOpaque class equals: Color;
		assert: c morph raisedColor green equals: 0.0;
		assert: c morph raisedColor chroma equals: 1.0;
		assert: c morph raisedColor lightness equals: 0.5;
		assert: c morph raisedColor hslSaturation equals: 1.0;
		assert: c morph raisedColor saturation equals: 1.0;
		assert: c morph raisedColor luminance equals: 0.114;
		assert: c morph raisedColor blue equals: 1.0;
		assert: c morph colorForInsets class equals: Color;
		assert: c morph colorForInsets hsvSaturation equals: 1.0;
		assert: c morph colorForInsets alpha equals: 1.0;
		assert: c morph colorForInsets red equals: 0.0;
		assert: c morph colorForInsets brightness equals: 1.0;
		assert: c morph colorForInsets name equals: #blue;
		assert: c morph colorForInsets hue equals: 240.0;
		assert: c morph colorForInsets beOpaque class equals: Color;
		assert: c morph colorForInsets green equals: 0.0;
		assert: c morph colorForInsets chroma equals: 1.0;
		assert: c morph colorForInsets lightness equals: 0.5;
		assert: c morph colorForInsets hslSaturation equals: 1.0;
		assert: c morph colorForInsets saturation equals: 1.0;
		assert: c morph colorForInsets luminance equals: 0.114;
		assert: c morph colorForInsets blue equals: 1.0;
		deny: c morph isLineMorph;
		deny: c morph shouldFlex;
		assert: c morph submorphs class equals: Array;
		assertEmpty: c morph submorphs;
		deny: c morph isDockingBar;
		assert: c morph wantsToBeCachedByHand;
		assert: c morph highlightColor class equals: Color;
		assert: c morph highlightColor hsvSaturation equals: 0.0;
		assert: c morph highlightColor alpha equals: 1.0;
		assert: c morph highlightColor red equals: 0.29521016617790813;
		assert: c morph highlightColor brightness
			equals: 0.29521016617790813;
		assert: c morph highlightColor name equals: #unnamed;
		assert: c morph highlightColor hue equals: 0.0;
		assert: c morph highlightColor beOpaque class equals: Color;
		assert: c morph highlightColor green equals: 0.29521016617790813;
		assert: c morph highlightColor chroma equals: 0.0;
		assert: c morph highlightColor lightness
			equals: 0.29521016617790813;
		assert: c morph highlightColor hslSaturation equals: 0.0;
		assert: c morph highlightColor saturation equals: 0.0;
		assert: c morph highlightColor luminance
			equals: 0.29521016617790813;
		assert: c morph highlightColor blue equals: 0.29521016617790813;
		deny: c morph wantsToBeTopmost;
		assert: c morph updateableActionMap class
			equals: IdentityDictionary;
		assert: c morph updateableActionMap values class equals: Array;
		assertEmpty: c morph updateableActionMap values;
		assert: c morph updateableActionMap keysSortedSafely class
			equals: Array;
		assertEmpty: c morph updateableActionMap keysSortedSafely;
		assert: c morph updateableActionMap isDictionary;
		assert: c morph updateableActionMap isHealthy;
		assert: c morph updateableActionMap associations class
			equals: Array;
		assertEmpty: c morph updateableActionMap associations;
		assert: c morph updateableActionMap keys class equals: Array;
		assertEmpty: c morph updateableActionMap keys;
		deny: c morph isTranslucentButNotTransparent;
		assert: c morph borderColor class equals: Color;
		assert: c morph borderColor hsvSaturation equals: 0.0;
		assert: c morph borderColor alpha equals: 1.0;
		assert: c morph borderColor red equals: 0.25024437927663734;
		assert: c morph borderColor brightness equals: 0.25024437927663734;
		assert: c morph borderColor name equals: #veryDarkGray;
		assert: c morph borderColor hue equals: 0.0;
		assert: c morph borderColor beOpaque class equals: Color;
		assert: c morph borderColor green equals: 0.25024437927663734;
		assert: c morph borderColor chroma equals: 0.0;
		assert: c morph borderColor lightness equals: 0.25024437927663734;
		assert: c morph borderColor hslSaturation equals: 0.0;
		assert: c morph borderColor saturation equals: 0.0;
		assert: c morph borderColor luminance equals: 0.25024437927663734;
		assert: c morph borderColor blue equals: 0.25024437927663734;
		assert: c morph mainDockingBars class equals: Array;
		assertEmpty: c morph mainDockingBars;
		deny: c morph shouldDropOnMouseUp;
		assert: c morph eventHandler isNil;
		assert: c morph assureExtension class equals: MorphExtension;
		assert: c morph assureExtension fillStyle isNil;
		assert: c morph assureExtension layoutProperties class
			equals: LayoutProperties;
		assert: c morph assureExtension otherProperties class
			equals: SmallIdentityDictionary;
		assert: c morph assureExtension borderStyle class
			equals: SimpleBorder;
		assert: c morph assureExtension assureOtherProperties class
			equals: SmallIdentityDictionary;
		assert: c morph assureExtension layoutPolicy isNil;
		assert: c morph assureExtension sortedPropertyNames class
			equals: Array;
		assertEmpty: c morph assureExtension sortedPropertyNames;
		assert: c morph assureExtension visible;
		assert: c morph assureExtension actionMap class
			equals: IdentityDictionary;
		assert: c morph assureExtension layoutFrame class
			equals: LayoutFrame;
		assert: c morph assureExtension externalName isNil;
		assert: c morph assureExtension eventHandler isNil;
		deny: c morph assureExtension sticky;
		deny: c morph assureExtension locked;
		assert: c morph assureExtension cornerStyle equals: #square;
		assert: c morph assureExtension balloonText isNil;
		assert: c morph assureExtension clipSubmorphs isNil;
		assert: c morph borderWidthForRounding equals: 0;
		assert: c morph color class equals: Color;
		assert: c morph color hsvSaturation equals: 1.0;
		assert: c morph color alpha equals: 1.0;
		assert: c morph color red equals: 0.0;
		assert: c morph color brightness equals: 1.0;
		assert: c morph color name equals: #blue;
		assert: c morph color hue equals: 240.0;
		assert: c morph color beOpaque class equals: Color;
		assert: c morph color green equals: 0.0;
		assert: c morph color chroma equals: 1.0;
		assert: c morph color lightness equals: 0.5;
		assert: c morph color hslSaturation equals: 1.0;
		assert: c morph color saturation equals: 1.0;
		assert: c morph color luminance equals: 0.114;
		assert: c morph color blue equals: 1.0;
		assert: c morph allMorphs class equals: Array;
		assert: c morph allMorphs size equals: 1;
		assert: (c morph allMorphs at: 1) class equals: RSAthensMorph;
		assert: c morph balloonText isNil;
		assert: c morph submorphBefore class equals: AlignmentMorph;
		assert: c morph submorphBefore borderStyle class
			equals: BorderStyle;
		deny: c morph submorphBefore isTranslucentButNotTransparent;
		assert: c morph submorphBefore borderColor class equals: Color;
		assert: c morph submorphBefore colorForInsets class equals: Color;
		assert: c morph submorphBefore borderWidth equals: 0;
		assert: c morph submorphBefore doesBevels;
		assert: c morph submorphBefore isAlignmentMorph;
		deny: c morph hasSubmorphs;
		deny: c morph doesBevels;
		assert: c morph canvas class equals: RSCanvas;
		assert: c morph canvas deepNodes class equals: OrderedCollection;
		assertEmpty: c morph canvas deepNodes;
		assert: c morph canvas extent class equals: Point;
		assert: c morph canvas numberOfEdges equals: 0;
		assert: c morph canvas animations class equals: OrderedCollection;
		assertEmpty: c morph canvas animations;
		assert: c morph canvas lines class equals: RSGroup;
		assertEmpty: c morph canvas lines;
		assert: c morph canvas color class equals: Color;
		assert: c morph canvas numberOfNodes equals: 0;
		assert: c morph canvas shapes class equals: RSGroup;
		assertEmpty: c morph canvas shapes;
		assert: c morph canvas numberOfShapes equals: 0;
		deny: c morph canvas showRectangles;
		assert: c morph canvas visibleRectangle class equals: Rectangle;
		assert: c morph canvas numberOfDeepNodes equals: 0;
		assert: c morph canvas fixedShapes class equals: RSGroup;
		assertEmpty: c morph canvas fixedShapes;
		assert: c morph canvas edges class equals: RSGroup;
		assertEmpty: c morph canvas edges;
		assert: c morph canvas clearBackground;
		assert: c morph canvas numberOfFixedShapes equals: 0;
		assert: c morph canvas encompassingRectangle class
			equals: Rectangle;
		assert: c morph canvas announcer class equals: Announcer;
		assert: c morph canvas camera class equals: RSCamera;
		assert: c morph canvas basicRectangle class equals: Rectangle;
		assert: c morph canvas morph class equals: RSAthensMorph;
		assert: c morph canvas nodes class equals: RSGroup;
		assertEmpty: c morph canvas nodes;
		deny: c morph canvas isShape;
		assert: c morph allNonSubmorphMorphs class
			equals: OrderedCollection;
		assertEmpty: c morph allNonSubmorphMorphs;
		assert: c morph borderStyle class equals: SimpleBorder;
		assert: c morph borderStyle style equals: #simple;
		deny: c morph borderStyle isComplex;
		assert: c morph borderStyle widthForRounding equals: 0;
		assert: c morph borderStyle color class equals: Color;
		assert: c morph borderStyle width equals: 0;
		deny: c morph borderStyle hasFillStyle;
		deny: c morph borderStyle isComposite;
		assert: c morph borderStyle bottomRightColor class equals: Color;
		assert: c morph borderStyle colorsAtCorners class equals: Array;
		assert: c morph borderStyle colorsAtCorners size equals: 4;
		assert: c morph borderStyle topLeftColor class equals: Color;
		assert: c morph borderStyle baseColor class equals: Color;
		assert: c morph borderStyle isBorderStyle;
		assert: c morph hasExtension;
		deny: c morph isSticky;
		assert: c morph submorphAfter isNil;
		deny: c morph wantsSteps;
		assert: c morph isMorph;
		assert: c morph actionMap class equals: IdentityDictionary;
		assert: c morph actionMap values class equals: Array;
		assertEmpty: c morph actionMap values;
		assert: c morph actionMap keysSortedSafely class equals: Array;
		assertEmpty: c morph actionMap keysSortedSafely;
		assert: c morph actionMap isDictionary;
		assert: c morph actionMap isHealthy;
		assert: c morph actionMap associations class equals: Array;
		assertEmpty: c morph actionMap associations;
		assert: c morph actionMap keys class equals: Array;
		assertEmpty: c morph actionMap keys
]

{ #category : #running }
RSCanvasTest >> testOpening [
	canvas open delete
]

{ #category : #'tests - shapes ordering' }
RSCanvasTest >> testPush [
	| c blueBox redBox |
	c := RSCanvas new.
	blueBox := RSBox new
		size: 80;
		color: #blue.
	redBox := RSBox new
		size: 80;
		color: #red.
	c
		add: blueBox;
		add: redBox.
	blueBox translateBy: 40 @ 20.

	"red is in front of blue"
	self
		assert: c shapes asArray
		equals:
			{blueBox.
			redBox}.
	redBox pushBack.
	self
		assert: c shapes asArray
		equals:
			{redBox.
			blueBox}.
	blueBox pushBack.
	self
		assert: c shapes asArray
		equals:
			{blueBox.
			redBox}.
	c pushBack: redBox.
	self
		assert: c shapes asArray
		equals:
			{redBox.
			blueBox}
]

{ #category : #'tests - shapes ordering' }
RSCanvasTest >> testPushBackEdges [
	| c blueBox redBox l |
	c := RSCanvas new.
	blueBox := RSBox new
		size: 80;
		color: #blue.
	redBox := RSBox new
		size: 80;
		color: #red.
	c
		add: blueBox;
		add: redBox.
	blueBox translateBy: 40 @ 20.
	l := RSLine new
		from: blueBox;
		to: redBox.
	c add: l.
	self
		assert: c shapes asArray
		equals:
			{blueBox.
			redBox.
			l}.
	c pushBackEdges.
	self
		assert: c shapes asArray
		equals:
			{l.
			blueBox.
			redBox}
]

{ #category : #'as yet unclassified' }
RSCanvasTest >> testPushBackEdges_amp_A86 [
	<smallAmpCoveres: 'RemoveCaretOperator#RSCanvas#numberOfAnimations#80#96'>
	<madeBySmallAmp>
	| c blueBox redBox l anInteger anUndefinedObject1 anUndefinedObject2 anUndefinedObject3 |
	c := RSCanvas new.
	anInteger := c numberOfAnimations.
	self assert:
		anInteger asString equals: 'a SAObservationPrimitive'.
	anUndefinedObject1 := RSBox new.
	blueBox := anUndefinedObject1
		size: 80;
		color: #blue.
	anUndefinedObject2 := RSBox new.
	redBox := anUndefinedObject2
		size: 80;
		color: #red.
	c := c
		add: blueBox;
		add: redBox.
	blueBox translateBy: 40 @ 20.
	anUndefinedObject3 := RSLine new.
	l := anUndefinedObject3
		from: blueBox;
		to: redBox.
	self should: [ c add: l ] raise: MessageNotUnderstood
]

{ #category : #'tests - shapes ordering' }
RSCanvasTest >> testPushFront [
	| c blueBox redBox |
	c := RSCanvas new.
	blueBox := RSBox new
		size: 80;
		color: #blue.
	redBox := RSBox new
		size: 80;
		color: #red.
	c
		add: blueBox;
		add: redBox.
	blueBox translateBy: 40 @ 20.

	"red is in front of blue"
	self
		assert: c shapes asArray
		equals:
			{blueBox.
			redBox}.
	blueBox pushFront.
	self
		assert: c shapes asArray
		equals:
			{redBox.
			blueBox}.
	redBox pushFront.
	self
		assert: c shapes asArray
		equals:
			{blueBox.
			redBox}.
	c pushFront: blueBox.
	self
		assert: c shapes asArray
		equals:
			{redBox.
			blueBox}.
	c pushBack: blueBox.
	self
		assert: c shapes asArray
		equals:
			{blueBox.
			redBox}
]

{ #category : #'tests - shapes ordering' }
RSCanvasTest >> testRemovingShapes [
	| e |
	e := RSEllipse new.
	canvas addShape: e.
	self assert: canvas shapes size equals: 1.
	e remove.
	self assert: canvas shapes size equals: 0
]

{ #category : #tests }
RSCanvasTest >> testShapeFromModel [
	| shapes |
	shapes := (1 to: 3)
		collect: [ :m | 
			RSBox new
				model: m;
				yourself ].
	canvas addAll: shapes.
	self assert: (canvas shapeFromModel: 1) equals: shapes first.
	self assert: (canvas shapeFromModel: 2) equals: shapes second.
	self assert: (canvas shapeFromModel: 3) equals: shapes third.
	self assert: (canvas shapeFromModel: 4) isNil
]

{ #category : #'tests - composite' }
RSCanvasTest >> testShapeFromModelAndComposite [
	| compo |
	compo := RSComposite new.
	compo
		add:
			(RSBox new
				size: 20;
				model: 42).
	compo model: 41.
	canvas add: compo.
	self assert: canvas numberOfShapes equals: 1.
	self assert: (canvas shapeFromModel: 41) equals: compo.
	self assert: (canvas shapeFromModel: 42) isNil.
	self assert: (canvas deepShapeFromModel: 41) equals: compo.
	self
		assert: (canvas deepShapeFromModel: 42)
		equals: compo children first.
	self assert: (canvas deepShapeFromModel: 43) isNil
]

{ #category : #'tests - composite' }
RSCanvasTest >> testShapeFromModelAndComposite2 [
	| compo compo2 compo3 |
	compo := RSComposite new.
	compo
		add:
			(RSBox new
				size: 20;
				model: 42).
	compo model: 41.
	canvas add: compo.
	compo2 := RSComposite new.
	compo2
		add:
			(RSBox new
				size: 20;
				model: 42).
	compo2 model: 41.
	canvas add: compo2.
	compo3 := RSComposite new.
	compo3
		add:
			(RSBox new
				size: 20;
				model: 2).
	compo3 model: 1.
	canvas add: compo3.
	self assert: canvas numberOfShapes equals: 3.
	self
		assert: (canvas shapesFromModel: 41) asArray
		equals:
			{compo.
			compo2}.
	self assert: (canvas shapesFromModel: 42) isEmpty.
	self
		assert: (canvas deepShapesFromModel: 41) asArray
		equals:
			{compo.
			compo2}.
	self
		assert: (canvas deepShapesFromModel: 42) asArray
		equals:
			{compo children first.
			compo2 children first}.
	self
		assert: (canvas deepShapesFromModel: 2) asArray
		equals: {compo3 children first}
]

{ #category : #'tests - composite' }
RSCanvasTest >> testShapeFromModelAndComposite3 [
	| compo compo2 compo3 |
	compo := RSComposite new.
	compo
		add:
			(RSBox new
				size: 20;
				model: 42).
	compo model: 41.
	canvas add: compo.
	compo2 := RSComposite new.
	compo2
		add:
			(RSBox new
				size: 20;
				model: 42).
	compo2 model: 41.
	canvas add: compo2.
	compo3 := RSComposite new.
	compo3
		add:
			(RSBox new
				size: 20;
				model: 2).
	compo3 model: 1.
	canvas add: compo3.
	self assert: canvas numberOfShapes equals: 3.
	self
		assert: (canvas shapesFromModels: #(41 1)) asArray
		equals:
			{compo.
			compo2.
			compo3}.
	self assert: (canvas shapesFromModels: #(42)) isEmpty.
	self
		assert: (canvas deepShapesFromModels: #(41 42)) asArray
		equals:
			{compo.
			compo children first.
			compo2.
			compo2 children first}
]
