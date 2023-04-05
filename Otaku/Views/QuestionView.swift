//
//  QuestionView.swift
//  Code History Beatrice
//
//  Created by Beatrice Movila on 15.11.2022.
//

import Foundation
import UIKit
import SwiftUI
import AVFoundation
import Subsonic

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    let transition = AnyTransition.asymmetric(insertion: .scale, removal: .opacity)
    
    
   
    @State private var flag = false
    
    var body: some View {
       
        
        
        VStack (alignment: .center) {
            
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .padding()
                .background(Color("myColor")
                .blur(radius: 15))
                
            Spacer()
            VStack (alignment: .center) {
                ForEach(0..<3/*question.possibleAnswers.count*/) { index in
                    Button { action:
                        do {
                            UIImpactFeedbackGenerator(style: .soft).impactOccurred()
                            withAnimation (){
                                
                                viewModel.makeGuess(atIndex: index)
                                flag.toggle() // self.flag.toggle()
                                /*print("Tapped on option with the text: \(question.possibleAnswers[index])")
                                 */
                            }}
                    }
                    
                        label: {
                                                    
                           ChoiceTextView(choiceText: question.possibleAnswers[index])
                            .id(question.possibleAnswers[index])
                            .transition(transition)
                            .frame(maxWidth: .infinity)
                            .background(viewModel.color(forOptionIndex: index))
                            
                            .cornerRadius(14)
                                
                                          
                        }
                      
                    .background(Color("myColor"))
                    .cornerRadius(14)
                    .padding()
                    .frame(maxWidth: .infinity)
                    //.disabled(viewModel.guessWasMade) //pot sa aleg altul
                   // .buttonStyle(GrowingButton()) 
                }
                
            } //end vstack
            
            
            
            if viewModel.guessWasMade {
                Button(action:  {
                    UIImpactFeedbackGenerator(style: .soft).impactOccurred()
                    
                    play(sound: "bubble.wav") //sunet pe butonul next
                    
                    withAnimation {
                        viewModel.displayNextScreen()
                        flag.toggle() // self.flaf.toggle()
                    }
                })
                    {
                        BottomTextView(str: "Next")
                    }
                    .buttonStyle(GrowingButton())
                    .transition( AnyTransition.asymmetric(insertion: .opacity, removal: .opacity))
                
            } //end if

        }
      
       /* .background(GameColor.ykrbackground2
            .blur(radius: 15))*/
        
        .background (Image (question.questionBackground)
        .resizable()
        .blur(radius: 15)
            
            )
        
        

    } //end body
    
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}
