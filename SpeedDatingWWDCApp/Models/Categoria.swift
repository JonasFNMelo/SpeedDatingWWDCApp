//
//  Categoria.swift
//  SpeedDatingWWDCApp
//
//  Created by Jonas Fernando Nascimento Melo on 01/06/26.
//
import Foundation
import SwiftUI

enum Categoria: String, CaseIterable, Identifiable {
    case aluno = "Jr. Learner"
    case alumni = "Alumni"
    case cocoahead = "CocoaHead"

    var id: String { rawValue }

    var icone: String {
        switch self {
        case .aluno:  return "graduationcap.fill"
        case .alumni: return "star.fill"
        case .cocoahead: return ""
        }
    }
    
    var gradiente: [Color]{
        switch self {
        case .aluno: return [.blue, .purple]
        case .alumni: return [.orange, .pink]
        case .cocoahead: return  [.green, .mint]
        }
    }
    var lightGradiente: [Color]{
        switch self {
        case .aluno: return [.blue.opacity(0.15), .purple.opacity(0.15)]
        case .alumni: return [.orange.opacity(0.15), .pink.opacity(0.15)]
        case .cocoahead: return  [.green.opacity(0.15), .white.opacity(0.15)]
        }
    }
}
