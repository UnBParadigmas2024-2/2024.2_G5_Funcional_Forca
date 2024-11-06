# Jogo da Forca

**Disciplina**: FGA0210 - PARADIGMAS DE PROGRAMAÇÃO - T01 <br>
**Nro do Grupo**: 05<br>
**Paradigma**: FUNCIONAL<br>

## Alunos
|Matrícula | Aluno |
| -- | -- |
| 18/0015311 |  Danilo Domingo |
| 19/0020814 |  Vinícius Roriz |
| 19/0030291 |  Jackes Fonseca |

## Sobre 
Esta é uma implementação em Haskell do clássico jogo da forca, onde o jogador tenta adivinhar uma palavra escondida, letra por letra, dentro de um número limitado de tentativas.

O progama escolhe uma palavra e mostra a quantidade de letras representadas por "_". O jogador então tem 6 tentativas para acertar todas as letras da palavra, com cada tentativa errada adicionando uma parte do corpo ao boneco na forca, que é exibida pelo programa.

## Screenshots
Adicione 2 ou mais screenshots do projeto em termos de interface e/ou funcionamento.

## Instalação 
**Linguagens**: Haskell<br>
**Tecnologias**: Cabal<br>

1. Instale o GHCup e suas dependências:
#### Linux / WSL
```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```
- Quando questionado, escolha sempre as opções padrão
#### Windows (PowerShell Não Admin)
```
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { & ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -Interactive -DisableCurl } catch { Write-Error $_ }
```
2. Compile e execute o projeto:
```
cabal build
```  
```
cabal run
```

## Uso 
Explique como usar seu projeto.
Procure ilustrar em passos, com apoio de telas do software, seja com base na interface gráfica, seja com base no terminal.
Nessa seção, deve-se revelar de forma clara sobre o funcionamento do software.

## Vídeo
Adicione 1 ou mais vídeos com a execução do projeto.
Procure: 
(i) Introduzir o projeto;
(ii) Mostrar passo a passo o código, explicando-o, e deixando claro o que é de terceiros, e o que é contribuição real da equipe;
(iii) Apresentar particularidades do Paradigma, da Linguagem, e das Tecnologias, e
(iV) Apresentar lições aprendidas, contribuições, pendências, e ideias para trabalhos futuros.
OBS: TODOS DEVEM PARTICIPAR, CONFERINDO PONTOS DE VISTA.
TEMPO: +/- 15min

## Participações
Apresente, brevemente, como cada membro do grupo contribuiu para o projeto.
|Nome do Membro | Contribuição | Significância da Contribuição para o Projeto (Excelente/Boa/Regular/Ruim/Nula) | Comprobatórios (ex. links para commits)
| -- | -- | -- | -- |
| Fulano  |  Programação dos Fatos da Base de Conhecimento Lógica | Boa | Commit tal (com link)

## Outros 
Quaisquer outras informações sobre o projeto podem ser descritas aqui. Não esqueça, entretanto, de informar sobre:
(i) Lições Aprendidas;
(ii) Percepções;
(iii) Contribuições e Fragilidades, e
(iV) Trabalhos Futuros.

## Fontes
### [Zvon](http://www.zvon.org/other/haskell/Outputglobal/index.html)
Zvon é um site que possui informações sobre várias funções e módulos da linguagem Haskell, apresentadas de forma concisa e com exemplos.  
<img src="img/zvon.png" width="500"/>

Sugestão de leitura: 
*Effective Haskell*. Rebecca Skinner, 2023
