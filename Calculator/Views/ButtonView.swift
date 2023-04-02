//
//  ButtonView.swift
//  Calculator
//
//  Created by Maciej Plewko on 01/04/2023.
//

import SwiftUI

struct ButtonView: View {
    let calcButton: CalcButton
    let fgColor: Color
    let bgColor: Color
    
    var systemImage: String? {
        let value = calcButton.rawValue
        return value.contains("IMG") ? value.replacingOccurrences(of: "IMG", with: "") : nil
    }
    
    var text: String? {
        let value = calcButton.rawValue
        return value.contains("IMG") ? nil : value
    }
    
    let buttonDim: CGFloat = UIDevice.isIPad ? UIScreen.main.bounds.width / 6 : UIScreen.main.bounds.width / 5
    
    var body: some View {
        ZStack {
            Text(text ?? "")
            Image(systemName: systemImage ?? "")
        }
        .font(UIDevice.isIPad ? .largeTitle : .title2)
        .fontWeight(UIDevice.isIPad ? .heavy : .semibold)
        .frame(width: buttonDim, height: buttonDim)
        .foregroundColor(fgColor)
        .background(bgColor)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(
            color: bgColor.opacity(0.5), radius: 5, x: 5, y: 5
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            
            ButtonView(calcButton: .negative,
                       fgColor: foregroundDigitsColor,
                       bgColor: buttonBackgroundColor)
            
            Spacer()
            
            ButtonView(calcButton: .undo,
                       fgColor: foregroundRightButtonsColor,
                       bgColor: buttonBackgroundColor)
            
            Spacer()
            
            ButtonView(calcButton: .one,
                       fgColor: foregroundDigitsColor,
                       bgColor: buttonBackgroundColor)
            
            Spacer()
            
            ButtonView(calcButton: .percent,
                       fgColor: foregroundTopButtonsColor,
                       bgColor: buttonBackgroundColor)
            
            Spacer()
            
            ButtonView(calcButton: .multiply,
                       fgColor: foregroundTopButtonsColor,
                       bgColor: buttonBackgroundColor)
        }
    }
}
