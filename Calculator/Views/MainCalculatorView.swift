//
//  ContentView.swift
//  Calculator
//
//  Created by Maciej Plewko on 01/04/2023.
//

import SwiftUI

struct MainCalculatorView: View {
    @State var lightMode: Bool = true
    @State var currentComputation: String = ""
    @State var mainResult: String = "0"
    
    var body: some View {
        ZStack {
            primaryBackgroundColor.ignoresSafeArea()
            
            VStack {
                SunMoonView(lightMode: lightMode)
                    .onTapGesture {
                        withAnimation {
                            lightMode.toggle()
                        }
                    }
                
                Spacer()
                
                ComputationView(currentComputation: currentComputation, mainResult: mainResult)
                    .padding(.horizontal, UIDevice.isIPad ? UIScreen.main.bounds.width * 0.1 : 0)
                
                Spacer()
                
                CalcsButtonsView(currentComputation: $currentComputation, mainResult: $mainResult)
                
                if UIDevice.isIPad {
                    Spacer()
                }
            }
        }
        .environment(\.colorScheme, lightMode ? .light : .dark)
    }
}

struct MainCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        MainCalculatorView()
    }
}
