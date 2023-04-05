//
//  ScoreView.swift
//  Code History Beatrice
//
//  Created by Beatrice Movila on 17.11.2022.
//




/*struct RoundedRectProgressViewStyle: ProgressViewStyle {
    
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 14)
                .frame(width: 250, height: 28)
                .foregroundColor(GameColor.correctGuess )
                .overlay(Color.black.opacity(0.2)).cornerRadius(14)
            
            RoundedRectangle(cornerRadius: 14)
                .frame(width: CGFloat(configuration.fractionCompleted ?? 0) * 250, height: 28)
               .foregroundColor(.clear)
            
              
            
                .overlay {
                    LinearGradient(gradient: Gradient(colors: [GameColor.incorrectGuess, GameColor.correctGuess]), startPoint: .topTrailing, endPoint: .bottomLeading)}
                .cornerRadius(14)
            
            if let fractionCompleted = configuration.fractionCompleted {
                Text(fractionCompleted < 1 ?
                        " \(Int((configuration.fractionCompleted ?? 0) * 100))%"
                        : "Done!"
                )
                .fontWeight(.bold)
                .foregroundColor(fractionCompleted < 1 ? GameColor.incorrectGuess : GameColor.correctGuess)
                .frame(width: 180)
            }
                
        }
        .padding()
    }
}
*/



import SwiftUI
import UIKit
import ConfettiSwiftUI

struct CustomCircularProgressViewStyle: ProgressViewStyle {
    
    
    @State private var counter = 0
    
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            
            Circle()
                .trim(from: 0.0, to: CGFloat(configuration.fractionCompleted ?? 0))
                .stroke(
                    
                    LinearGradient(gradient: Gradient(colors: [GameColor.correctGuess, GameColor.incorrectGuess]), startPoint: .topTrailing, endPoint: .bottomLeading),
                        
                        
                    style: StrokeStyle(lineWidth:5, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0], dashPhase: 0) )
            
               .rotationEffect(Angle(degrees: 270))
               .rotation3DEffect(Angle(degrees: 0), axis: (x: 1, y: 0, z: 0))
                .frame(width: 150)
                
            
            if let fractionCompleted = configuration.fractionCompleted {
                Text(fractionCompleted < 1 ?
                        " \(Int((configuration.fractionCompleted ?? 0) * 100))%"
                        : "100% Otaku!"
                    )
                
                .fontWeight(.bold)
                .foregroundColor(fractionCompleted < 1 ? GameColor.incorrectGuess : GameColor.correctGuess)
                .frame(width: 180)
                .onTapGesture(){counter += 1}
                        ConfettiCannon(counter: $counter)
                
                /* .onAppear(perform: {
                     fractionCompleted < 1 ?
                     playSound(sound: "success", type: "wav") : playSound(sound: "winner", type: "wav")
            
                    })*/

            }

        }
    }
}






struct ScoreView: View {
    let viewModel: ScoreViewModel
    @State private var drawingStroke = false
    
    @State private var downloadAmount = 0.0
    
    @State private var counter  = 0
    
    
        let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            
           
            GameColor.ykrbackground.ignoresSafeArea()
                .blur(radius: 20)
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.system(size: 30))
                    .bold()
                    //.foregroundColor(GameColor.ykr)
                /*Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()*/
                 
                
                
               ProgressView("Loading...", value: downloadAmount, total: 100)
                   .progressViewStyle(CustomCircularProgressViewStyle())
                   
                   .onReceive(timer) { _ in
                       if downloadAmount < Double(viewModel.percentage) {
                           downloadAmount += 5
                       }
                   }
                
                /*ProgressView("Loading...", value: downloadAmount, total: 100)
                    .progressViewStyle(RoundedRectProgressViewStyle())
                  
                    .onReceive(timer) { _ in
                        if downloadAmount < Double(viewModel.percentage) {
                            downloadAmount += 1
                        }
                    }
                
                ProgressView("Downloading…", value: downloadAmount, total: 100)
                            .onReceive(timer) { _ in
                                if downloadAmount < Double(viewModel.percentage) {
                                    downloadAmount += 1
                                }
                            }*/
                
                
                
                Spacer()
                VStack {
                    Text("  \(viewModel.correctGuesses) ٩(^‿^)۶")
                    Text("\(viewModel.incorrectGuesses)（·•᷄‎ࡇ•᷅ )")
                    
                }
                .font(.system(size: 30))
                
                .onAppear(perform: {
                    if viewModel.correctGuesses == 10
                    {
                        playSound(sound: "winner", type: "wav") }
                    else
                    {
                        playSound(sound: "success", type: "wav")}
            
                    })
                
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                    })
            }
            .foregroundColor(.white)
            .buttonStyle(GrowingButton())
            .navigationBarHidden(true)
            
            
        }
    }
}



struct ScoreView_Previews: PreviewProvider {
  static var previews: some View {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 9, incorrectGuesses: 0))
  }
}
