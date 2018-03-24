trait exclusion
exclusionsFor: aRGTraitExclusion do: aBlock

	^ (aRGTraitExclusion propertyNamed: #realObject ifAbsent: [ self error: 'You can use only trait transformations generated directly by this backend' ]) exclusions do: [:each | aBlock value: each ]