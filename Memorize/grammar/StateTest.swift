//
//  State.swift
//  Memorize
//
//  Created by James on 1/15/25.
//

import SwiftUI

struct StateTest: View {

    @State var menu: String? = "오늘 뭐먹지?"
//    let menus: [String] = ["불고기", "탕수육", "스시", "쌀국수"]
    let menus: [Menu] = [.bulgogi, .tangsuyook, .sushi, .pho]

    enum Menu: String {
        case bulgogi = "불고기"
        case tangsuyook = "탕수육"
        case sushi = "스시"
        case pho = "쌀국수"
    }

    var body: some View {
        VStack {
            if menu == "불고기" || menu == "스시"{
                Text("너무 맛있는 \(menu!)")
            } else {
                Text(menu!)
            }

            Button {
                menu = menus.randomElement()?.rawValue
            }label:{
                Text("눌러요!")
            }

        }
    }
}

#Preview {
    StateTest()
}
