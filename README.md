## homebrew-tap

[![build](https://img.shields.io/github/actions/workflow/status/terror/homebrew-tap/ci.yaml?branch=master&style=flat&labelColor=1d1d1d&color=424242&logo=GitHub%20Actions&logoColor=white&label=build)](https://github.com/terror/homebrew-tap/actions/workflows/ci.yaml)

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

| name                                             | version | description                                             |
| ------------------------------------------------ | ------- | ------------------------------------------------------- |
| [edmv](https://github.com/terror/edmv)           | 1.0.1   | Bulk rename files using your favorite editor            |
| [just-lsp](https://github.com/terror/just-lsp)   | 0.3.2   | Language server for just                                |
| [present](https://github.com/terror/present)     | 0.2.3   | Interpolate shell command output directly into markdown |
| [pyproject](https://github.com/terror/pyproject) | 0.1.2   | Linter and language server for pyproject.toml files     |
| [skeleton](https://github.com/terror/skeleton)   | 0.2.4   | Project scaffolding utility                             |
| [spymux](https://github.com/terror/spymux)       | 0.1.3   | Centralized view for all of your tmux panes             |
| [swab](https://github.com/terror/swab)           | 0.1.3   | Configurable project cleaning tool                      |
| [val](https://github.com/terror/val)             | 0.3.6   | Arbitrary precision calculator language                 |

## Prior Art

I was inspired to build this after trying to find an easy way to install various
projects I have via [homebrew](https://brew.sh/). I found out you could sidestep
`homebrew-core` easily via a custom 'tap' (i.e. this repository) after looking
at the tap [HashiCorp](https://github.com/hashicorp/homebrew-tap) maintains.
