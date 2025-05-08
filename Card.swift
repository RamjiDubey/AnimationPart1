//
//  Card.swift
//  AnimatingCard
//
//  Created by RAM JI DUBEY on 08/05/25.
//

import SwiftUI

struct Card {
    var borderWidth: CGFloat
    var cardColor: Color = .brown.opacity(0.9)
    var cardCornerRadius: CGFloat
    var cardShadowColor: Color = .blue.opacity(0.8)
    var shadowRadius: CGFloat = 10
    var TextOnCard: String = "CARD"
    var textColorOnCard: Color = .red.opacity(0.8)
}
