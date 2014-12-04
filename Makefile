m = "updated repo"

stats:
	git status -s

push:
	git add -A
	git add *
	git commit -m "$(m)"
	git push -u origin master

jge:
	node scripts/build.js src/jge/index.coffee dist/jge.js dist/jge.min.js

ui:
	node scripts/build.js src/ui/index.coffee dist/ui.js dist/ui.min.js

console:
	node scripts/build.js src/console/index.coffee dist/console.js dist/console.min.js

editor:
	node scripts/build.js src/editor/client.coffee dist/editor-client.js dist/editor-client.min.js 

.PHONY:  stats push jge ui console editor
.SILENT: stats push jge ui console editor