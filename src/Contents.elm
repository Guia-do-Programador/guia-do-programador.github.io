module Contents exposing (..)

-- Todo
-- Fix typos


title =
    "Guia do Programador!"


description =
    """
    O intuito do grupo é a participação coletiva de todos e o aprendizado de
    cada um. Para isso preparamos um guia que reune diversos conteúdos de alta qualidade para que você não perca mais oportunidades. No grupo do telegram você pode tirar dúvidas, sugerir projetos e
    conversar sobre temas relacionados à programação competiviva e algoritmos. Para praticar temos alguns repositórios em que você pode resolver alguns exercicios, além de uma série de exercícios que estão sendo traduzidos.
    """


invite =
    "Entre no nosso grupo do "


telegramLinkData =
    { url = "https://t.me/joinchat/FoVIKRkUpbZZz5uzmc3K6g"
    , label = "Telegram"
    }


githubLinkData =
    { url = "https://github.com/Guia-do-Programador/"
    , label = "GitHub"
    }


languages =
    ( [ { label = "C++"
        , rot = 15
        , scale = 1
        , translate = ( 0, -5 )
        }
      , { label = "Python"
        , rot = -15
        , scale = 1.3
        , translate = ( -30, 15 )
        }
      , { label = "Java"
        , rot = -5
        , scale = 1.2
        , translate = ( -30, 15 )
        }
      , { label = "C#
        , rot = -2
        , scale = 1.4
        , translate = ( -20, -5 )
        }
      , { label = "Elixir"
        , rot = 10
        , scale = 1.3
        , translate = ( -20, 20 )
        }
      ]
    , [ { label = "Lua"
        , rot = -7
        , scale = 1.18
        , translate = ( 10, 0 )
        }
      , { label = "C"
        , rot = 15
        , scale = 1.4
        , translate = ( 10, 10 )
        }
      , { label = "Algorithms"
        , rot = -4
        , scale = 1.3
        , translate = ( -30, 20 )
        }
      , { label = "Data Structures"
        , rot = 10
        , scale = 1.5
        , translate = ( -20, 15 )
        }
      ]
    )


projects =
    { title = "Projetos Atuais"
    , content =
        [ [ "https://github.com/lambda-study-group/telegram-bot"
          , "Telegram Bot"
          ]
        , [ "https://github.com/lambda-study-group/awesome-functional-studies"
          , "Juntar conteúdo acadêmico e prático de várias linguagens em um awesome"
          ]
        , [ "https://github.com/lambda-study-group/dicionario-termos-funcionais"
          , "Dicionário de tradução de termos funcionais"
          ]
        , [ "https://github.com/lava-jato-the-game/lava_jato"
          , "Desenvolvimento do jogo da Lava Jato com Phoenix(Absinthe) / ClojureScript"
          ]
        ]
    }


exercices =
    { title = "Resolução de Exercícios"
    , content =
        [ [ "https://github.com/lambda-study-group/desafios"
          , "Desafios"
          ]
        , [ "https://github.com/lambda-study-group/sicp"
          , "Exercícios do livro SICP em várias linguagens diferentes"
          ]
        , [ "https://github.com/lambda-study-group/hacker-rank"
          , "Exercícios da trilha de programação funcional do HackerRank"
          ]
        , [ "https://github.com/lambda-study-group/exercism"
          , "Exercícios de linguagens funcionais no Exercism"
          ]
        ]
    }


translations =
    { title = "Traduções"
    , content =
        [ [ "https://github.com/lambda-study-group/Functional-Light-JS"
          , "Tradução do Functional Light Programming"
          ]
        ]
    }


toLinkData list =
    case list of
        [ url, label ] ->
            { url = url, label = label }

        _ ->
            { url = "", label = "" }


convertRepository ({ content } as data) =
    { title = data.title, content = List.map toLinkData content }


repositories =
    List.map convertRepository [ projects, exercices, translations ]
