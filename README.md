# Keep Remote File Locally Up-To-Date Docker action

This action retrieves a remote file with wget and compares it to the version in the repository. If a newer version is available remotely, it updates the file in the repository.

## Inputs

### `url`

**Required** The url of the remote file to download.

### `file_in_repo`

**Required** The location of the file in the repository to update if changed.

### `git_user`

The name to commit under. Default: 'thelastproject/keep-remote-locally-up-to-date'.

### `git_email`

The email to commit under. Default: 'no-reply@github.com'.

## Example usage

Put the following in `.github/workflows/main.yml`:
```
jobs:
  keep_file_updated:
    runs-on: ubuntu-latest
    name: Keep file updated
    steps:
    - name: Checkout repo
      id: checkout
      uses: actions/checkout@v2
    - name: Update file
      id: update_file
      uses: TheLastProject/keep-remote-file-locally-up-to-date-action@v1
      with:
        url: https://example.com/index.html
        file_in_repo: example/index.html
on:
  schedule:
    - cron: '0 0 * * *'
```

## License
Creative Commons Zero 1.0 Universal
