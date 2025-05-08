//
//  CardBorder.swift
//  AnimatingCard
//
//  Created by RAM JI DUBEY on 08/05/25.
//

import SwiftUI

struct CardBorder: View {
    @State private var rotation: CGFloat = 0.0
    let card: Card
    
    var body: some View {
        GeometryReader { reader in
            RoundedRectangle(cornerRadius: 0, style: .continuous)
                .frame(width: 500, height: 200)
                .rotationEffect(.degrees(rotation))
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.blue, .pink, .purple]),
                                                startPoint: .top,
                                                endPoint: .bottom))
                .mask {
                    RoundedRectangle(cornerRadius: card.cardCornerRadius, style: .continuous)
                        .stroke(lineWidth: card.borderWidth)
                        .frame(width: 260, height: 340)
                }
                .onAppear {
                    withAnimation(.linear(duration: 4).repeatForever(autoreverses: false)) {
                        rotation = 360
                    }
                }
                .frame(width: reader.size.width, height: reader.size.height)
        }
    }
}
