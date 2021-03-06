#!/bin/bash
cd public

if [ -n "$GITHUB_AUTH_SECRET" ]
then
    touch ~/.git-credentials
    chmod 0600 ~/.git-credentials
    echo $GITHUB_AUTH_SECRET > ~/.git-credentials
    git config credential.helper store
    git config user.email "mijian.xu@smail.nju.edu.cn"
    git config user.name "xumi1993"
fi
git add .
git commit -m `date +"%Y.%m.%dT%H:%M%S"`
git push --force origin HEAD:gh-pages