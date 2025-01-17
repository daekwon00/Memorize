//
//  MyClass.swift
//  Memorize
//
//  Created by James on 1/16/25.
//

import SwiftUI

// 값을 복사헤서 전달
struct Person {
    var name: String
    let age: Int
}

// 공유할 수 있는 link를 전달
class PersonClass {
    var name: String
    let age: Int

    // class 는 초기 init 값이 필요하다
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


struct MyClass: View {

    @State var nickName: String = "None"

    var body: some View {
        VStack {
            Text(nickName)

            Button {
                // 아래로 정의하면 출력이 "James2", 다른 양식을 전달
                //var james = Person(name: "James", age: 55)
                // 아래로 정의하면 출력이 "James3", 공유 link을 전달
                var james = PersonClass(name: "James", age: 55)
                // struct은 값을 전달하지만 class 는 주소를 전달한다.
                var fakeJames = james
                james.name = "James2"
                fakeJames.name = "James3"
                nickName = james.name
            } label: {
                Text("Hit")
            }

        }
    }
}

#Preview {
    MyClass()
}
