//
//  AnimatingCardApp.swift
//  AnimatingCard
//
//  Created by RAM JI DUBEY on 07/05/25.
//

import SwiftUI

@main
struct AnimatingCardApp: App {
    var body: some Scene {
        WindowGroup {
            CardView(card: .init(borderWidth: 5, cardCornerRadius: 20))
        }
    }
}
