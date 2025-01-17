//
//  MyClosure.swift
//  Memorize
//
//  Created by James on 1/14/25.
//

import SwiftUI

struct MyClosure: View {

    @State var result: String = "Not yet"

    var body: some View {
        VStack {

            Button {
                result = calculateNumber(10, 20, calculate: { first, second in
                    return first * second
                })
            } label: {
                Text("Calcurate")
            }
            Text(result)
            Spacer()
            Text("🏀")
        }

    }

    func calculateNumber(_ first: Int, _ second: Int, calculate: (Int, Int) -> Int) -> String {
        return String(calculate(first, second))
    }
}


#Preview {
    MyClosure()
}
