# CLI

This repository contains Glossia's CLI powered by Go.

## Usage

Install it with [Mise](https://mise.jdx.dev):

```bash
mise use -g ubi:glossia/cli@latest
```

Or scope it to your project by adding it to the project's `mise.toml` file:

```toml
[tools]
"ubi:glossia/cli" = "latest"
```

## Development

### Setup

1. Clone the repository: `git clone git@github.com:glossia/cli.git`
2. Install dependencies: `mise install`
3. Run the CLI: `mise run glossia`
