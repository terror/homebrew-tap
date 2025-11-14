## homebrew-tap

[![CI](https://github.com/terror/homebrew-tap/actions/workflows/ci.yaml/badge.svg)](https://github.com/terror/homebrew-tap/actions/workflows/ci.yaml)

**homebrew-tap** is my personal collection of formulae for
[homebrew](https://brew.sh/).

## Installation

You can install packages from this tap by running:

```bash
brew install terror/tap/<name>
```

You can also only add the tap which makes formulae within it available in search
results (e.g. brew search output):

```bash
brew tap terror/tap
```

**n.b.** to clone the tap via SSH you will need to use:

```bash
brew tap terror/tap https://github.com/terror/homebrew-tap
```

While you may search across taps, it is necessary to always use fully qualified
name (incl. the `terror/tap/` prefix) when referring to formulae in external
taps such as this one outside of search.

## Formulae

Below lists the formulae installable via this tap:

| name                                           | version | description                                                 |
| ---------------------------------------------- | ------- | ----------------------------------------------------------- |
| [edmv](https://github.com/terror/edmv)         | 1.0.1   | Bulk rename files using your favorite editor                |
| [just-lsp](https://github.com/terror/just-lsp) | 0.2.8   | A language server for [just](https://github.com/casey/just) |
| [present](https://github.com/terror/present)   | 0.2.3   | Interpolate shell command output directly into markdown     |
| [spymux](https://github.com/terror/spymux)     | 0.1.1   | A centralized view for all of your tmux panes               |
| [val](https://github.com/terror/val)           | 0.3.6   | An arbitrary precision calculator language                  |
