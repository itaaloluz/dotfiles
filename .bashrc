# ~/.bashrc

# Se não estiver executando interativamente, não faz nada
[[ $- != *i* ]] && return

# Executando o script de frases aleatórias
"$HOME/.scripts/system/random-phrases.sh"

# Colore a saída do comando
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Comando melhorado de limpar a tela
alias clear='printf "\E[H\E[3J" && clear'

# Atalhas para o gerenciador de pacotes:
alias remove='sudo pacman -Rns'  # Remove um programa
alias install='sudo pacman -Sy'  # Instala um programa
alias search='pacman -Ss'        # Pesquisa por um programa
alias depend='pacman -Qi'        # Verifica as dependencias de um programa
alias installed='pacman -Qe'     # Lista os pacotes instalados
alias update='sudo pacman -Syyu' # Sincroniza e procura por atualizações
alias orphans='pacman -Qdtq'     # Lista os pacotes orfãos

# Caminho do arquivo de uma ia de terminal
alias bai='$HOME/Downloads/Outros/tgpt'
# Comando que quando executado mostra um fato curioso gerado pela ia
alias funfact='bai "Um fato curioso aleatório sobre tecnologia:"'

PS1='[\u@\h \W]\$ '
