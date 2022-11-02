//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Janvier on 2022-02-25.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var game: EmojiMemoryGame
  let emojis = ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍈", "🍒", "🍑", "🥭", "🍍", "🥥", "🥝", "🍅", "🍆", "🥑", "🥦", "🥬", "🥒", "🌶️", "🫑", "🌽", "🥕", "🫒", "🧄", "🧅", "🥔", "🍠", "🥐", "🥯"]
  let emojisCount = 3
  var body: some View {
    ScrollView {
      LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
        ForEach(game.cards) {card in
          CardView(card: card)
            .aspectRatio(2/3, contentMode: .fit)
            .onTapGesture {
              game.choose(card)            
        }
      }
    }
 
    .foregroundColor(.yellow)
    .font(.largeTitle)
    
    
  }
}

struct CardView: View {
  var card: MemoryGame<String>.Card
  
  var body: some View {
    let shape = RoundedRectangle(cornerRadius: 25.0)
    ZStack {
      if card.isFaceUp {
       
        shape.strokeBorder(lineWidth: 3.0)
         
        Text(card.cardContent)
      }
      else {
        shape.fill()
      }
        
      
    }
    .padding()
    
  }
}

  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(game: EmojiMemoryGame())
    }
  }
}
