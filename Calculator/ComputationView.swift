//
//  ComputationView.swift
//  Calculator
//
//  Created by Maciej Plewko on 01/04/2023.
//

import SwiftUI

struct ComputationView: View {
    let currentComputation: String
    let mainResult: String

    var body: some View {
        VStack {
            Text(currentComputation)
            Text(mainResult)
        }
    }
}

struct ComputationView_Previews: PreviewProvider {
    static var previews: some View {
        ComputationView(currentComputation: "1+2", mainResult: "3")
    }
}
