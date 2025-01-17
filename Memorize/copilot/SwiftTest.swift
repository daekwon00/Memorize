//
//  SwiftUIViewCopilot.swift
//  Memorize
//
//  Created by James on 1/16/25.
//

import SwiftUI

enum Drink {
    case coffee(hasMilk: Bool)
    case juice
    case soft(color: Color)

    var name: String {
        switch self {
        case .coffee(hasMilk: let hasMilk):
            if hasMilk {
                return "Latte"
            } else {
                return "Americano"
            }
            case .juice:
                return "Orange Juice"
        case .soft(color: let drinkColor):
            switch drinkColor {
            case .orange:
                return "환타"
            case .black:
                return "콜라"
            default:
                return "음료"
            }
        }
    }
}


// 함수
func returnJames() -> String {
    return "James3"
}


// 함수는 이름이 있고 in/out이 있다.
// 메소드는 <-- enum, struct, class 안에서 되는 함수

struct SwiftTest: View {

    let myDrinks: Drink = .soft(color: .orange)

    var body: some View {
        VStack {
            Text(myDrinks.name)
        }
    }

    func returnJames() -> String {
        return "James2"
    }
}

#Preview {
    SwiftTest()
}
