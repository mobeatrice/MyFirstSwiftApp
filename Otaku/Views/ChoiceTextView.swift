//
//  ChoiceTextView.swift
//  Code History Beatrice
//
//  Created by Beatrice Movila on 06.10.2022.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
 
    var body: some View {
        Text(choiceText)
        
            //.background(Color("myColor"))
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .foregroundColor(.white)
            
            
        
        
            //.border(GameColor.accent, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
