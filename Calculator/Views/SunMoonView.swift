//
//  SunMoonView.swift
//  Calculator
//
//  Created by Maciej Plewko on 01/04/2023.
//

import SwiftUI

struct SunMoonView: View {
    @State var lightMode: Bool = true
    
    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "sun.min")
                .imageScale(.large)
                .foregroundColor(lightMode ? sunOrMoonSelectedColor : sunOrMoonNotSelectedColor)
            
            
            
            Image(systemName: "moon")
                .imageScale(.large)
                .foregroundColor(lightMode ? sunOrMoonNotSelectedColor : sunOrMoonSelectedColor)
        }
        .padding()
        .background(secondaryBackgroundColor)
        .cornerRadius(20)
    }
}

struct SunMoonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SunMoonView(lightMode: true)
            SunMoonView(lightMode: false)
        }
    }
}
