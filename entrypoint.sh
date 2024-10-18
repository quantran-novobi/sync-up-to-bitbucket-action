#!/bin/sh

set -ue

RepositoryName="${INPUT_BITBUCKET_REPOSITORY_NAME}"
BitbucketWorkspace="${INPUT_BITBUCKET_WORKSPACE_NAME}"
BitbucketAccessToken="${INPUT_BITBUCKET_ACCESS_TOKEN}"
BitbucketUrl="https://x-token-auth:${BitbucketAccessToken}@bitbucket.org/${BitbucketWorkspace}/${RepositoryName}.git"

git config --global --add safe.directory /github/workspace
git remote add sync ${BitbucketUrl}
git push sync --mirror
