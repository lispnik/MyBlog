Class {
	#name : #BaselineOfMyBlog,
	#superclass : #BaselineOf,
	#category : #BaselineOfMyBlog
}

{ #category : #baselines }
BaselineOfMyBlog >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ "Packages"
			spec
				package: 'MyBlog';
				package: 'MyBlog-Models';
				package: 'MyBlog-Views'
					with: [ spec requires: #('MyBlog-Models') ].
			spec
				project: 'Seaside'
				with: [ spec
						className: 'ConfigurationOfSeaside3';
						repository: 'github://SeasideSt/Seaside:master/repository' ] ]
]
