//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Janvier on 2022-02-25.
//

import SwiftUI

struct ContentView: View {
  let emojis = ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍈", "🍒", "🍑", "🥭", "🍍", "🥥", "🥝", "🍅", "🍆", "🥑", "🥦", "🥬", "🥒", "🌶️", "🫑", "🌽", "🥕", "🫒", "🧄", "🧅", "🥔", "🍠", "🥐", "🥯"]
  let emojisCount = 3
  var body: some View {
    ScrollView {
      LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
        ForEach(emojis, id: \.self) {emoji in
          CardView(content: emoji)
            .aspectRatio(2/3, contentMode: .fit)
        }
      }
    }
 
    .foregroundColor(.yellow)
    .font(.largeTitle)
    
    
  }
}

struct CardView: View {
  @State var isFaceUp: Bool = true
  var content: String
  
  var body: some View {
    ZStack {
      if isFaceUp {
        RoundedRectangle(cornerRadius: 25.0)
          .strokeBorder(lineWidth: 3.0)
         
        Text(content)
      }
      else {
        RoundedRectangle(cornerRadius: 25.0)
          .fill()
      }
        
      
    }
    .padding()
    .onTapGesture {
      isFaceUp.toggle()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
        .previewDevice("iPhone 13 mini")
    }
}
