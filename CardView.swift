//
//  ContentView.swift
//  AnimatingCard
//
//  Created by RAM JI DUBEY on 07/05/25.
//

import SwiftUI

struct CardView: View {
    let card: Card
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color(.darkGray)
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius: card.cardCornerRadius, style: .continuous)
                    .frame(width: 260, height: 340)
                    .foregroundColor(card.cardColor)
                    .shadow(color: card.cardShadowColor, radius: card.shadowRadius)
                CardBorder(card: card)
                textOnCard
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
    
    private var textOnCard: some View {
        Text(card.TextOnCard)
            .bold()
            .font(.largeTitle)
            .foregroundStyle(card.textColorOnCard)
    }
}

#Preview {
    CardView(card: .init(borderWidth: 5,
                         cardCornerRadius: 20))
}
