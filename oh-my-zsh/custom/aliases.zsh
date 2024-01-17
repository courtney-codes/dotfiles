touchdir () { mkdir -p "$(dirname "$1")" && touch "$1" ;  }
alias touch=touchdir

alias idea='open -na "IntelliJ IDEA.app"'
