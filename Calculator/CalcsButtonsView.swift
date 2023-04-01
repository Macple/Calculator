//
//  CalcsButtonsView.swift
//  Calculator
//
//  Created by Maciej Plewko on 01/04/2023.
//

import SwiftUI

struct CalcsButtonsView: View {
    @Binding var currentComputation: String
    @Binding var mainResult: String
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CalcsButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        CalcsButtonsView(currentComputation: .constant("1+2"), mainResult: .constant("3"))
    }
}
