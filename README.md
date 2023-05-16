# Dotnet core version detector

Determines the version of dotnet core to install based on the src/global.json

## How to use it?
This is a GitHub action, so it has to be added to a GitHub workflow.  

A simple example of running this action on all pushes to the repository would be
to add a `dotnetcore.yml` file under `.github/workflows` with the following content
```yaml
on: [push]

jobs:
  dotnet-build:
    runs-on: ubuntu-latest
    name: 
    steps:
      # Checkout the source code so there are some files to look at.
      - uses: actions/checkout@v1
      # Run the version detection action
      - name: Determine the version of dotnet core to install from src/global.json
        uses: credfeto/action-dotnet-version-detect@v1.3.0
        with:
          file: src/global.json
          fallback: 3.1.404
      - name: Setup .NET Core
        uses: actions/setup-dotnet@v1
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          dotnet-version: ${{ env.DOTNET_VERSION }}
      - name: Build
        run: |
          cd src
          dotnet build

```

On each push, it will now install the version of dotnet core specified in src/global.json, install it and build the source

## Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->