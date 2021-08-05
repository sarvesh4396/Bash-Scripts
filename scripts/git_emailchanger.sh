#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Errors to ignore
# shellcheck disable=SC1017

# This scripts changes author and commiter email in a git repository.
# you can also change name and all modify accordingly.

# Checks commiter email
git filter-branch -f --commit-filter '
    if [ "$GIT_COMMITTER_EMAIL" = "email to be changed...." ];
    then
        GIT_COMMITTER_EMAIL="new email.....";
        GIT_AUTHOR_EMAIL="new email.....";
        git commit-tree "$@";
    else
         git commit-tree "$@";
    fi' HEAD

# Checks author email

git filter-branch -f --commit-filter '
    if [ "$GIT_AUTHOR_EMAIL" = "email to be changed...." ];
    then
        GIT_COMMITTER_EMAIL="new email.....";
        GIT_AUTHOR_EMAIL="new email.....";
        git commit-tree "$@";
    else
         git commit-tree "$@";
    fi' HEAD
