//
//  SwiftUIView.swift
//  StateAndDataFlow
//
//  Created by Ilya Sokolov on 26.10.2022.
//

import SwiftUI

struct TextCountView: View {
    @Binding var countCharacter: Int
    @Binding var colorText : Color
       
    var body: some View {
        Text(countCharacter.formatted())
            .foregroundColor(colorText)
    }
}

struct TextCountView_Previews: PreviewProvider {
    static var previews: some View {
        TextCountView(countCharacter: .constant(1), colorText: .constant(.red))
    }
}
