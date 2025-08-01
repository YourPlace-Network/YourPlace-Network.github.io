export PATH:=$(PATH);$(which bundler);
SHELL := bash
.SHELLFLAGS := -e -o pipefail -c

install:
	bundle add jekyll
	bundle install
	bundle update --bundler

clean:
	bundle exec jekyll clean

run: clean
	bundle exec jekyll build
	bundle exec jekyll serve --livereload