install:
	bin/composer install

start:
	php -S localhost:8080

test:
	curl -s localhost:8080 | grep -q "<title>PrivateBin</title>"
lintphp:
	find . -type f -name '*.php' -exec php -l {} \;
lintcs:
	./vendor/bin/phpcs --extensions=php ./lib/
lintmd:
	./vendor/bin/phpmd ./lib ansi codesize,unusedcode,naming
