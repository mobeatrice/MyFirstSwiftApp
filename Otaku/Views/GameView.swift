//
//  ContentView.swift
//  Code History Beatrice
//
//  Created by Beatrice Movila on 03.10.2022.
//

import SwiftUI
import AVFoundation

struct GameView: View {
 
  @StateObject var viewModel = GameViewModel()
    

  var body: some View {
      
    ZStack {
        
      GameColor.ykrbackground.ignoresSafeArea()
            .blur(radius: 20)
        
      VStack {
        Text(viewModel.questionProgressText)
          .font(.callout)
          .multilineTextAlignment(.leading)
          .padding()
          
          //.foregroundColor(.red)
        QuestionView(question: viewModel.currentQuestion)
          
      }
        
        
      .onAppear(perform: {
          playSound(sound: "background", type: "wav")
      })
    }
      
      
    .background(
        
       NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,
            incorrectGuesses: viewModel.incorrectGuesses)),
                       isActive: .constant(viewModel.gameIsOver),
                      label: { EmptyView() })
       
     )
    .foregroundColor(.white)
    .navigationBarHidden(true) // New line
    .environmentObject(viewModel) // new line
      
      
      
  }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
        
    }
}
