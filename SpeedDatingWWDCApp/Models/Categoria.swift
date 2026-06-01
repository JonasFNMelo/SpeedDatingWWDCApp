//
//  Categoria.swift
//  SpeedDatingWWDCApp
//
//  Created by Jonas Fernando Nascimento Melo on 01/06/26.
//
import Foundation

enum Categoria: String, CaseIterable, Identifiable {
    case aluno = "Aluno"
    case alumni = "Alumni"

    var id: String { rawValue }

    var icone: String {
        switch self {
        case .aluno:  return "graduationcap.fill"
        case .alumni: return "star.fill"
        }
    }
}
