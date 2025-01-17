//
//  MyFunction.swift
//  Memorize
//
//  Created by James on 1/14/25.
//

import SwiftUI

struct MyFunction: View {

    @State var myMind: String = "nothing"
    @State var isChangeMind: Bool = false

    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {

            Text(myMind)

            Button {
                isChangeMind.toggle()

                if isChangeMind {
                    myMind = "always open"
                } else {
                    myMind = "but closed"
                }
            } label: {
                Text("Change my mind")
            }
        }
    }
}

#Preview {
    MyFunction()
}
