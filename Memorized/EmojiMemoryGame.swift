//
//  EmojiMemoryGame.swift
//  Memorized
//
//  Created by Vinícius Tamanhão on 21/10/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var game: MemoryGame<String> = EmojiMemoryGame.createMyMemoryGame()
    
    static func createMyMemoryGame( ) -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK: -Access to the Game Model
    var cards: Array<MemoryGame<String>.Card> {
        game.cards
    }
    //MARK: -Intent(s)
    
    func choose (card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
    
    
}
