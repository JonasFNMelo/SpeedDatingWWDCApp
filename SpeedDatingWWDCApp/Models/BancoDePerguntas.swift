//
//  BancoDePerguntas.swift
//  SpeedDatingWWDCApp
//
//  Created by Jonas Fernando Nascimento Melo on 01/06/26.
//
import Foundation

enum BancoDePerguntas {
    static let paraAlumni: [String] = [
        "Qual foi a coisa mais marcante do seu tempo na Academy?",
        "Teve alguma tecnologia anunciada em uma WWDC mudou seu trabalho?",
        "Se voltasse no tempo, o que diria pra você mesmo no primeiro dia da Academy?",
        "Qual projeto da sua academy você ainda lembra com carinho?",
        "Como a academy influenciou na sua carreira hoje?",
        "Qual foi o maior aprendizado que você levou daqui?",
        "Tinha algum ritual ou tradição da sua academy que sente falta?",
        "Qual a história mais inesperada que aconteceu na sua Academy?",
        "Que conselho você daria pra quem vai entrar no mercado agora?",
        "Qual sessão de WWDC ficou marcada pra você e por quê?",
        "Como era acompanhar a WWDC na sua época?",
        "Tem alguma decisão de carreira que você atribui a Academy?",
        
        "Como foi seu primeiro processo seletivo depois da Academy?",
        "O que te pegou de surpresa no mercado de trabalho real?",
        "Portfólio ou networking?\nO que pesou mais pra você conseguir seu primeiro emprego?",
        "Freelance ou CLT?\nQual caminho você tomou e se arrependeu de alguma coisa?",
        "Como são os squads que você trabalha, são muitos diferentes das dinamicas da Academy?",
        "Qual skill técnica você teve que aprender rápido depois que entrou no mercado?",
        "Qual skill que não é técnica fez mais diferença na sua carreira?",
        "Como você se mantém atualizado com as mudanças da plataforma Apple no dia a dia?",
    ]
    
    static let paraAluno: [String] = [
        "Qual o projeto mais legal que você tá tocando agora?",
        "O que você mais tá curtindo na Academy até aqui?",
        "Tem alguma tecnologia nova que você tá doido pra explorar?",
        "Qual sessão dessa WWDC você tá mais ansioso pra ver?",
        "Como você imagina sua carreira daqui a 5 anos?",
        "Qual foi seu maior desafio técnico desde que começou?",
        "Você prefere trabalhar em produto, infra ou pesquisa? Por quê?",
        "Qual app você sonha em construir um dia?",
        "Que skill você mais quer desenvolver na Academy?",
        "Tem alguém do time que virou referência pra você? Por quê?",
        "O que te surpreendeu (pra bem ou pra mal) no dia a dia?",
        "Se pudesse pedir uma feature pra Apple anunciar hoje, qual seria?",
        
        "Qual linguagem ou framework você quer aprender antes de terminar a Academy?",
        "Você já contribuiu com algo open source ou pretende?",
        "Tem algum bug que te deixou louco pra resolver? Como foi?",
        "Tem algum projeto antigo seu que você olha hoje e pensa 'preciso refatorar isso'?",
        "O que você faria diferente se começasse a Academy do zero hoje?",
        "Se você pudesse trocar uma semana de Academy por uma imersão em qualquer empresa, qual seria e por quê?",
        "Você tem um projeto pessoal parado na gaveta? O que falta pra tirar ele do papel?",
        "Qual parte do desenvolvimento você acha que ainda é seu ponto cego e quer melhorar?"
    ]

    static func perguntaAleatoria(para categoria: Categoria, evitando ultima: String?) -> String {
        let lista = categoria == .aluno ? paraAlumni : paraAluno
        let candidatos = lista.filter { $0 != ultima }
        return candidatos.randomElement() ?? lista.randomElement() ?? ""
    }
}
