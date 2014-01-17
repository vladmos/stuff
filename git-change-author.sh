#!/bin/sh
 
git filter-branch --env-filter '
 
an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"
 
if [ "$GIT_COMMITTER_EMAIL" = "vladmos@yandex-team.ru" ]
then
    cn="Vladimir Moskva"
    cm="m@fulc.ru"
fi
if [ "$GIT_AUTHOR_EMAIL" = "vladmos@yandex-team.ru" ]
then
    an="Vladimir Moskva"
    am="m@fulc.ru"
fi
 
export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'
