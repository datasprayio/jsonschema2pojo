
release-patch:
	mvn build-helper:parse-version \
	    -DreleaseVersion=\$${parsedVersion.majorVersion}.\$${parsedVersion.minorVersion}.\$${parsedVersion.nextIncrementalVersion} \
	    -DdevelopmentVersion=\$${parsedVersion.majorVersion}.\$${parsedVersion.minorVersion}.\$${parsedVersion.nextIncrementalVersion}-SNAPSHOT \
	    -Dresume=false -DskipITs -Darguments=-DskipITs release:prepare
	make release-perform
	make release-github-release

release-minor:
	mvn build-helper:parse-version \
	    -DreleaseVersion=\$${parsedVersion.majorVersion}.\$${parsedVersion.nextMinorVersion}.0 \
	    -DdevelopmentVersion=\$${parsedVersion.majorVersion}.\$${parsedVersion.nextMinorVersion}.0-SNAPSHOT \
	    --Dresume=false -DskipITs -Darguments=-DskipITs release:prepare
	make release-perform
	make release-github-release

release-major:
	mvn build-helper:parse-version \
	    -DreleaseVersion=\$${parsedVersion.nextMajorVersion}.0.0 \
	    -DdevelopmentVersion=\$${parsedVersion.nextMajorVersion}.0.0-SNAPSHOT \
	    -Dresume=false -DskipITs -Darguments=-DskipITs release:prepare
	make release-perform
	make release-github-release

release-perform:
	mvn -DskipTests -Darguments=-DskipTests -DskipITs -Darguments=-DskipITs release:perform

release-github-release:
	mvn build-helper:parse-version \
		-DgithubReleaseVersion=\$${parsedVersion.majorVersion}.\$${parsedVersion.minorVersion}.\$${parsedVersion.incrementalVersion} \
		-Dgithub.draft=true --non-recursive github-release:release
