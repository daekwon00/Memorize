//
//  Variable.swift
//  Memorize
//
//  Created by James on 1/14/25.
//

import SwiftUI

struct Variable2: View {

    let farmAnimals = ["🐮", "🐔", "🐑", "🐶", "🐱",]

    var body: some View {
        VStack{

            ForEach(farmAnimals,
                    id: \.self) { animal in
                Text(animal)
            }

//            ForEach(0..<5) { number in
//                Text(farmAnimals[number])
//            }

            // 아래는 실패
            //            for animal in farmAnimals {
//                print("Hello, \(animal)!")
//            }
        }
    }
}

#Preview {
    Variable2()
}
