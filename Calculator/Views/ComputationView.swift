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
        VStack(spacing: 10) {
            HStack {
                Spacer()
                Text(currentComputation)
                    .foregroundColor(foregroundDigitsColor)
                    .font(UIDevice.isIPad ? .largeTitle : .body)
                .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
            
            HStack {
                Spacer()
                Text(mainResult)
                    .foregroundColor(foregroundDigitsColor)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
        }.padding(.horizontal)
    }
}

struct ComputationView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            ComputationView(currentComputation: "1+2", mainResult: "3")
            Spacer()
            ComputationView(currentComputation: "12936+2", mainResult: "12324512")
            Spacer()
            ComputationView(currentComputation: "1293642354566*342", mainResult: "12324512534654647797898998")
            Spacer()
        }
    }
}
