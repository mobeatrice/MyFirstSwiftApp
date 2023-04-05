//
//  BottomTextView.swift
//  Code History Beatrice
//
//  Created by Beatrice Movila on 01.11.2022.
//

import SwiftUI

struct BottomTextView: View {
    
    let str: String
    
   
 
    var body: some View {
        
        HStack {
            Spacer()
            Text(str)
                .foregroundColor(.white)
                .font(.body)
                .bold()
                .padding()
               
         
            Spacer()
        }
        .background(GameColor.ykr)  //modificat
       
    }
}

struct BottomTextView_Previews: PreviewProvider {
    
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
