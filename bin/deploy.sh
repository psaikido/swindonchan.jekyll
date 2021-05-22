#! /bin/bash

JEKYLL_ENV=production bundle exec jekyll b
git push origin master

config="swindonchan@gp-uk.net:~/httpdocs/"
rsync -av --del /home/hughie/sites/swindonchan.org/swindonchan/_site/ $config
