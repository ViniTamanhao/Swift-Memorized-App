//
//  MemorizedApp.swift
//  Memorized
//
//  Created by Vinícius Tamanhão on 19/10/22.
//

import SwiftUI

@main
struct MemorizedApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(vM: game)
        }
    }
}
