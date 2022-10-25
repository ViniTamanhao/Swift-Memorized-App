//
//  EmojiMemoryGameView.swift
//  Memorized
//
//  Created by Vinícius Tamanhão on 19/10/22.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    //MARK: ViewModel instance
    @ObservedObject var vM: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach (vM.cards) { card in
                CardView(card: card).onTapGesture {
                    self.vM.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
            }
        }
    }
}
    





























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(vM: EmojiMemoryGame())
            .previewInterfaceOrientation(.portrait)
    }
}
