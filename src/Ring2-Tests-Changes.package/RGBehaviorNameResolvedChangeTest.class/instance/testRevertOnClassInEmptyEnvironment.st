tests - revert
testRevertOnClassInEmptyEnvironment

	"try to revert the change on an empty environment. It should raise a resolving error"

	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	self should: [ change revertIn: emptyEnvironment ] raise: RGResolvingError.
		