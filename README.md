## homebrew-tap

**homebrew-tap** is my personal collection of formulas for
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

**n.b.**: to clone the tap via SSH you will need to use:

```bash
brew tap terror/tap https://github.com/terror/homebrew-tap
```

While you may search across taps, it is necessary to always use fully qualified
name (incl. the `terror/tap/` prefix) when referring to formulae in external
taps such as this one outside of search.

## Formulae

Below lists the formulae installable via this tap:

| name                                           | description                                                  |
| ---------------------------------------------- | ------------------------------------------------------------ |
| [just-lsp](https://github.com/terror/just-lsp) | A language server for [just](https://github.com/casey/just). |
