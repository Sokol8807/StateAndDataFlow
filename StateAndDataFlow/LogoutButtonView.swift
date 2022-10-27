//
//  LogoutButtonView.swift
//  StateAndDataFlow
//
//  Created by Ilya Sokolov on 27.10.2022.
//

import SwiftUI

struct LogoutButtonView: View {
    
    let color: Color
    let buttonAction: () -> ()
    
    var body: some View {
        Button(action: { buttonAction()}) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .modifier(ButtonModify(buttonColor: color))
        }
    }


struct LogoutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutButtonView(color: .blue) { }
    }
}

struct ButtonModify: ViewModifier {
    let buttonColor: Color
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(buttonColor)
            .cornerRadius(20)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4)
                
            }
    }
}
