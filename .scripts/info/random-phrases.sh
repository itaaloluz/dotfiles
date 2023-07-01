#!/bin/bash

# Frases que vocẽ pode adicionar e remover
phrases=(
    "Comece onde você está, use o que você tem e faça o que você pode"                                                                    # Arthur Ashe
    "Ação sempre gera inspiração. Inspiração raramente gera ação"                                                                         # Frank Tibolt
    "Não importa que você vá devagar, contanto que você não pare"                                                                         # Confúcio
    "Coragem é saber o que não temer"                                                                                                     # Platão
    "Acredite em milagres, mas não dependa deles"                                                                                         # Immanuel Kant
    "A tecnologia move o mundo"                                                                                                           # Steve Jobs
    "A necessidade é a mãe da inovação"                                                                                                   # Platão
    "A felicidade e a liberdade começam com um claro entendimento de uma coisa: algumas coisas estão sob nosso controle, outras não"      # Epicteto
    "A adversidade não é uma desgraça; é uma oportunidade"                                                                                # Sêneca
    "Não importa o que aconteça com você, mas como você reage a isso que importa"                                                         # Epicteto
    "A vida é muito curta para se preocupar com coisas insignificantes"                                                                   # Sêneca
    "O homem sábio sempre será o mestre de sua mente"                                                                                     # Sêneca
    "A honestidade é a primeira etapa para a grandeza"                                                                                    # Confúcio
    "Seja gentil, pois cada pessoa que você encontra está enfrentando uma batalha difícil"                                                # Platão
    "A maior recompensa pelo trabalho não é o que você ganha, mas o que você se torna através dele"                                       # John Ruskin
    "A amizade é o ingrediente mais importante na receita da vida"                                                                        # Hubert H. Humphrey
    "A gratidão transforma o que temos em suficiente"                                                                                     # Autor desconhecido
    "A persistência é o caminho do êxito"                                                                                                 # Charles Chaplin
    "O sucesso é a soma de pequenos esforços repetidos dia após dia"                                                                      # Robert Collier
    "A única maneira de fazer um ótimo trabalho é amar o que você faz"                                                                    # Steve Jobs
    "Seja a mudança que você deseja ver no mundo"                                                                                         # Mahatma Gandhi
    "Nunca é tarde demais para ser aquilo que você poderia ter sido"                                                                      # George Eliot
    "A tecnologia é uma ferramenta poderosa que pode transformar o mundo para melhor"                                                     # Bill Gates
    "A inovação distingue um líder de um seguidor"                                                                                        # Steve Jobs
    "A inteligência artificial é a nova eletricidade"                                                                                     # Andrew Ng
    "A tecnologia por si só não é suficiente. É a tecnologia casada com as artes liberais que nos torna resultado do futuro"              # Steve Jobs
    "O poder da tecnologia está em como a usamos para melhorar as vidas das pessoas"                                                      # Satya Nadella
    "Se o porco inteiro fosse perfeito, não haveria cachorro quente"                                                                      # Greg Universo
    "É preferível ser odiado pelo que se é do que ser amado por representar um papel"                                                     # Autor desconhecido
    "Quando nosso propósito se torna evitação, nossa vida se torna um vazio"                                                              # Bill Crawford
    "A razão pela qual lutamos contra a insegurança é porque comparamos nossos bastidores, com a montanha de destaque de todos os outros" # Steven Furtick
    "Sua perspectiva de vida vem da gaiola em que você foi mantido em cativeiro"                                                          # Shannon L. Alder

)

# Gera um número aleatório de acordo com o tamanho do array
random_index=$((RANDOM % "${#phrases[@]}"))

echo "${phrases[$random_index]}"
