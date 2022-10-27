//
//  ButtonVIew.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import SwiftUI

struct ButtonVIew: View {
   @ObservedObject var timer: TimeCounter
    let color: Color
    
    var body: some View {
        Button(action: { timer.startTimer()}) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }

        .modifier(ButtonModify(buttonColor: color))
    }
}

struct ButtonVIew_Previews: PreviewProvider {
    static var previews: some View {
        ButtonVIew(timer: TimeCounter(), color: .red)
    }
}
