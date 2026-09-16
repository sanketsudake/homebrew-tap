# homebrew-tap

Homebrew tap for [Sanket Sudake](https://github.com/sanketsudake)'s command-line tools.

```sh
brew tap sanketsudake/tap
```

## Casks

### chrome-cdp

Drive your already-running local Chrome from the command line over the DevTools Protocol.

```sh
brew install --cask sanketsudake/tap/chrome-cdp
```

Source: [sanketsudake/chrome-cdp-cli](https://github.com/sanketsudake/chrome-cdp-cli)

### cc-proxy

Transparent logging proxy between Claude Code and the Anthropic API.

```sh
brew install --cask sanketsudake/tap/cc-proxy
```

Source: [sanketsudake/cc-proxy](https://github.com/sanketsudake/cc-proxy)

### portless

Dial services by name with readiness built into the dial — the `portless` CLI.

```sh
brew install --cask sanketsudake/tap/portless
```

Source: [sanketsudake/go-portless](https://github.com/sanketsudake/go-portless)

### cines

Two player chess.

```sh
brew install --cask sanketsudake/tap/cines
```

Source: [sanketsudake/CHESS-in-Qt](https://github.com/sanketsudake/CHESS-in-Qt)

---

Every cask here is generated on release — do not edit them by hand.
`chrome-cdp`, `cc-proxy` and `portless` come from [GoReleaser](https://goreleaser.com);
`cines` is rendered from a template in its own repository.
