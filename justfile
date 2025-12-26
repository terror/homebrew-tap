set dotenv-load

export EDITOR := 'nvim'

default:
  just --list

bump formula version:
  brew bump-formula-pr --version {{ version }} terror/tap/{{ formula }}
