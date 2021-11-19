experimental-version:
	lerna version --conventional-commits --conventional-prerelease --preid=experimental --sign-git-tag=experimental --no-changelog --yes

experimental-publish:
	lerna publish from-git --canary --preid experimental --pre-dist-tag experimental --npm-tag experimental --yes

main-publish: 
	npx lerna publish from-git --yes --no-git-reset

main-version:
	npx lerna version --conventional-commits --yes --conventional-graduate --create-release github