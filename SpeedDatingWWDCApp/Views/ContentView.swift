//
//  ContentView.swift
//  SpeedDatingWWDCApp
//
//  Created by Jonas Fernando Nascimento Melo on 01/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var categoriaSelecionada: Categoria?

    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                VStack(spacing: 8) {
                    Text("Speed Dating WWDC")
                        .font(.largeTitle.bold())
                    Text("Quebra-gelo entre alunos e alumni")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .padding(.top, 40)

                Spacer()

                VStack(spacing: 16) {
                    Text("Você é...")
                        .font(.headline)
                        .foregroundStyle(.secondary)

                    ForEach(Categoria.allCases) { categoria in
                        Button {
                            categoriaSelecionada = categoria
                        } label: {
                            CategoriaCard(categoria: categoria)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .padding()
            .navigationDestination(item: $categoriaSelecionada) { categoria in
                PerguntaView(categoria: categoria)
            }
        }
    }
}

#Preview {
    ContentView()
}
