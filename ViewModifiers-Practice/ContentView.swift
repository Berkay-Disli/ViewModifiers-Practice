//
//  ContentView.swift
//  ViewModifiers-Practice
//
//  Created by Berkay Disli on 26.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("This is a modified text.")
                .borderedText(borderColor: .black, foregroundColor: .red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BorderedText: ViewModifier {
    let borderColor: Color
    let foregroundColor: Color
   
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.light)
            .foregroundColor(foregroundColor)
            .padding()
            .background(
                Capsule()
                    .stroke(borderColor, lineWidth: 2)
            )
        
    }
}

extension Text {
    func borderedText(borderColor: Color, foregroundColor: Color) -> some View {
        modifier(BorderedText(borderColor: borderColor, foregroundColor: foregroundColor))
    }
}


