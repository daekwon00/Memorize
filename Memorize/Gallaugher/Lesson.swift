//
//  Lesson.swift
//  Memorize
//
//  Created by James on 1/17/25.
//

import SwiftUI

struct Lesson: View {
    @State var message = "I am A Programmmer"
    var body: some View {

        VStack {
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)

            Spacer()

            HStack {
                Button("Awesome") {
                    message = "Awesome!"
                }

                Button("Great") {
                    message = "Great!"
                }

            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
        .font(.title2)
        .tint(.orange)
    }
}

#Preview {
    Lesson()
}
