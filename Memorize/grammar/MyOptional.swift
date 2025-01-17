//
//  MyOptional.swift
//  Memorize
//
//  Created by James on 1/15/25.
//

import SwiftUI

struct MyOptional: View {

    let name: String
    let age: Int?

    var body: some View {
        VStack {
            Text(name)
            if let age = age {
                Text(age.description)
            }

//            Button {
//                print("Hited2")
//            } label: {
//                Text("Hitme2!!")
//                    .padding()
//                    .frame(width: 150)
//                    .background(.purple)
//                    .cornerRadius(13)
//            }
//
//            Button("Delete", role: .none){
//                print("deleted!")
//            }

            Text("Hello James")
                .bold()
                .italic()
                .strikethrough()
            Text("Hello James")
                .font(.system(size: 60))
            Text("Hello James")
                .underline(true, color: .orange)
                .foregroundColor(.red)
                .background(.purple)
            Text("Hello James")
                .foregroundColor(.green)
                .font(.system(size: 39, weight: .bold, design: .serif))
        }
    }
}

#Preview {
    MyOptional(name:"James", age: 20)
}
