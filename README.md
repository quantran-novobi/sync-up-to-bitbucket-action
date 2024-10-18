# Sync up to Bitbucket Action

Synchronize from GitHub repository to Bitbucket via GitHub Actions using Bitbucket Access Token.

## Example usage

```yaml
name: sync up to bitbucket

on:
  push:
    tags-ignore:
      - '*'
    branches:
      - '*'

jobs:
  sync:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
        with:
          fetch-depth: 0

      - name: Sync up to Bitbucket
        uses: quantran-novobi/sync-up-to-bitbucket-action@v1
        with:
          bitbucket_repository_name: test_repo
          bitbucket_workspace_name: test_workspace
          bitbucket_access_token: ${{ secrets.BITBUCKET_ACCESS_TOKEN }}
```

## Inputs

- `bitbucket_repository_name` **Required** Bitbucket repository name.
- `bitbucket_workspace_name` **Required** Workspace of the Bitbucket repository.
- `bitbucket_access_token` **Required** Bitbucket repository Access Token.

## License

[MIT](LICENSE)

