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
        "Que tecnologia anunciada em alguma WWDC mudou seu trabalho?",
        "Se voltasse no tempo, o que diria pra você mesmo no primeiro dia?",
        "Qual projeto da sua academy você ainda lembra com carinho?",
        "Como a academy influenciou na sua carreira hoje?",
        "Qual foi o maior aprendizado que você levou daqui?",
        "Tinha algum ritual ou tradição da sua época que sente falta?",
        "Qual a história mais inesperada que aconteceu na sua Academy?",
        "Que conselho você daria pra quem vai entrar no mercado agora?",
        "Qual sessão de WWDC ficou marcada pra você e por quê?",
        "Como era acompanhar a WWDC na sua época?",
        "Tem alguma decisão de carreira que você atribui a Academy?"
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
        "Se pudesse pedir uma feature pra Apple anunciar hoje, qual seria?"
    ]

    static func perguntaAleatoria(para categoria: Categoria, evitando ultima: String?) -> String {
        let lista = categoria == .aluno ? paraAlumni : paraAluno
        let candidatos = lista.filter { $0 != ultima }
        return candidatos.randomElement() ?? lista.randomElement() ?? ""
    }
}
