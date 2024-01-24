//
//  ContentView.swift
//  Wallpaper
//
//  Created by Nate de Jager on 2024-01-22.
//

import SwiftUI

struct ContentView: View {

    @State private var startTime = Date.now

    var body: some View {
        TimelineView(.animation) { timeline in
            let elapsedTime = startTime.distance(to: Date.now)

            VStack {
                Text("all the umbrellas in london")
                    .multilineTextAlignment(.center)
                    .font(Font.system(.title))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.white)
            }
            .frame(width: 350, height: 350)
            .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(.grainGradient(time: elapsedTime)))

            VStack {
                Text("all my little words")
                    .multilineTextAlignment(.center)
                    .font(Font.system(.title))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.secondary)
            }
            .frame(width: 350, height: 350)
            .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(.leather(lightColor: .blue, time: elapsedTime)))
        }
    }
}

#Preview {
    ContentView()
}
