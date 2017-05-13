!/bin/bash
####
#
# Vanguard CLI (this runs on the server)
# USAGE: Vanguard [up/down] git-url branch
#
#
# projekt has "Vanguardfile" where the following stuff is defined:
#    - requirements file for pip
#    - script file for fetching live database (can also fetch latest backup)
# 
# config like db-name, db-username and so on in the django file need to be read from env vars
#
# Vanguard needs to be run as root to have control over nginx
#
####


# START
# get project dir from git-url (slugify dir name)
# get branch dir by concatenating project dir and branch name (slugify dir name)

# if not exists project dir
	# create project dir
	# install global supervisor
	# install global redis
	# create supervisor entry for global redis called global_redis
	# install global memcached
	# creeate supervisor entry for global memcached called global_memcached


# if not exists branch dir 
	# create branch dir
	# clone repo into branch dir
	# create new database with name "project_branch" and user "project_branch"
	# fetch live database and save contents into new database
	# QUESTION: somehow i have to set the db config in the django settings file. what about env vars in the virtualenv?
	# create nginx config for sudomain connected to gunicorn over socket 
	# create supervisor entry for gunicorn named "gunicorn_project_branch"
	# create supervisor entry for gunicorn named "celery_project_branch"
	# QUESTION: for the future: write sort of plugin system that detects in the requirements file what needs to be added to supervisor. (so Vanguard could be easiely extended)
	# create new virtualenv with same name as branch
	# QUESTION: set redis db # in env var in virtualenv so every branch has own redis db?

# else if branch dir exists
	# pull newest version of branch


# install new dependencies with pip (requirements file: find automagically or config?)	
# run migrations
# collect static
# compile translations

# restart everything in supervisor for this branch
# reload nginx

