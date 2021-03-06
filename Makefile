
css:
	lessc --compress assets/less/jamesbrennan.less > assets/css/main.min.css

js:
	cat js/jquery-1.8.3.min.js \
		js/main.js > js/temp.js
	uglifyjs -nc js/temp.js > js/jquery.jamesbrennan.min.js
	rm js/temp.js

watch:
	echo "Watching less files..."; \
	watchr -e "watch('less/.*\.less') { system 'make css' }"
