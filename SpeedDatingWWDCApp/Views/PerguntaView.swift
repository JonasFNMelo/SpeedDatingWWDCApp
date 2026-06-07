//
//  PerguntaView.swift
//  SpeedDatingWWDCApp
//
//  Created by Jonas Fernando Nascimento Melo on 01/06/26.
//

import SwiftUI

struct PerguntaView: View {
    let categoria: Categoria
    @State private var pergunta: String = ""
    @State private var animacao: Bool = false

    @State var alvo: String
    
    init(categoria: Categoria){
        self.categoria = categoria
        _alvo = State(initialValue: categoria == .aluno ? Categoria.alumni.rawValue : Categoria.aluno.rawValue)

    }
    
    var body: some View {
        VStack(spacing: 24) {
            VStack(spacing: 4) {
                Text("Você é \(categoria.rawValue)")
                    .bold()
                HStack{
                    Text("Selecione para quem é a pergunta: ")
                        .fontWeight(.light)
                    Spacer()
                    Picker("A", selection: $alvo) {
                        ForEach(Categoria.allCases, id: \.self) { cat in
                            Text(cat.rawValue).tag(cat.rawValue)
                        }
                    }
                    .pickerStyle(.menu)
                    .tint(categoria.gradiente[0])
                    .onChange(of: alvo) {
                        print(alvo)
                    }
                }
            }
            .padding(.top, 16)

            Spacer()

            ZStack {
                RoundedRectangle(cornerRadius: 24)
                    .fill(
                        LinearGradient(
                            colors: categoria.lightGradiente,
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .strokeBorder(.quaternary, lineWidth: 1)
                    )

                if pergunta.isEmpty {
                    VStack(spacing: 12) {
                        Image(systemName: "questionmark.bubble.fill")
                            .font(.system(size: 48))
                            .foregroundStyle(.secondary)
                        Text("Toque no botão pra sortear a primeira pergunta")
                            .font(.callout)
                            .foregroundStyle(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    .padding(32)
                } else {
                    Text(pergunta)
                        .font(.title2.weight(.medium))
                        .multilineTextAlignment(.center)
                        .padding(28)
                        .scaleEffect(animacao ? 1 : 0.95)
                        .opacity(animacao ? 1 : 0)
                }
            }
            .frame(minHeight: 240)

            Spacer()

            Button {
                sortear()
            } label: {
                Label(pergunta.isEmpty ? "Gerar pergunta" : "Próxima pergunta",
                      systemImage: "")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .background(
                        LinearGradient(
                            colors: categoria.gradiente,
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 24)
        .navigationTitle("Pergunta")
        .navigationBarTitleDisplayMode(.inline)
    }

    private func sortear() {
        animacao = false
        let nova = BancoDePerguntas.perguntaAleatoria(
            para: Categoria(rawValue: alvo) ?? .cocoahead,
            evitando: pergunta.isEmpty ? nil : pergunta
        )
        withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
            pergunta = nova
            animacao = true
        }
    }
}

#Preview {
    let cat = Categoria.aluno
    PerguntaView(categoria: cat)
}
