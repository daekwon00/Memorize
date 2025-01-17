//
//  MyStruct.swift
//  Memorize
//
//  Created by James on 1/15/25.
//

import SwiftUI

struct UserInfo {
    let name: String
    let age: Int?
    let email: String?
    let job: String?
    let hasPet: Bool?

    func sayMyName(with name: String) {
        print(name)
    }
}

struct MyStruct: View {

    let userInfo: UserInfo

    var body: some View {
        VStack {
            Text(userInfo.name)
            Text(userInfo.age?.description ?? "100")
            Text(userInfo.email?.description ?? "hi@naver.com")
            Text(userInfo.job?.description ?? "no")
            Text(userInfo.hasPet!.description)

            Button {
                userInfo.sayMyName(with: userInfo.name)
            } label: {
                Text("Button")
            }
        }
    }



}

#Preview {
    let olivia = UserInfo(name: "Olivia",
                          age: 30,
                          email: "aaa@gmail.com",
                          job: "singer",
                          hasPet: false)

    MyStruct(userInfo:olivia)
}
