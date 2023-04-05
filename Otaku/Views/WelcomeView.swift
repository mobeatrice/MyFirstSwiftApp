//
//  WelcomeView.swift
//  Code History Beatrice
//
//  Created by Beatrice Movila on 01.11.2022.
//

import SwiftUI




struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.ykrbackground.ignoresSafeArea()
                    .blur(radius: 20)  // blur

                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Let's find your Otaku Level ♡( ◡‿◡ )")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    
                    
                    VStack {
                        Image("kuromi")
                            .resizable()
                            .scaledToFit()
                    }
                    
                    Spacer()
                    
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Okay let's go!")
                        })
                    
                }
                .foregroundColor(.white)
                .buttonStyle(GrowingButton())
            }
        } .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
        WelcomeView()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
    }
    }
}
