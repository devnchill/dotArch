export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/local/go/bin:$HOME/.local/share/go/bin"
export GOPATH="$HOME/.local/share/go"

[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env"
. "$HOME/.asdf/asdf.sh"

fpath=(${ASDF_DIR}/completions $fpath)

. "$HOME/.cargo/env"

