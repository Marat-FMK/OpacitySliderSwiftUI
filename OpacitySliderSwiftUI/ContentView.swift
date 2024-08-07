//
//  ContentView.swift
//  OpacitySliderSwiftUI
//
//  Created by Marat Fakhrizhanov on 07.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    private var targetValue: Int = Int.random(in: 1...100)
    @State private var currentValue: Double = 50
    
    var body: some View {
        VStack (spacing: 29){
            Text("Move the slide to the value: \(targetValue)")
                .font(.system(size: 27))
            HStack {
                Text("0")
                Spacer() // slider place
                Text("100")
            }
            Button(action: checkResult) {
                Text(" Check my result")
                    .foregroundStyle(.mint)
                    .font(.system(size: 27))
            }
            Button(action: restart) {
                Text("Restart")
                    .foregroundStyle(.red)
                    .font(.system(size: 23))
            }
        }
        .padding()
    }
    
    private func computeScore() -> Int {
        let differrence = abs(targetValue - lround(currentValue))
        return 100 - differrence
    }
    
    private func checkResult() {
        
    }
    
    private func restart() {
        
    }
}

#Preview {
    ContentView()
}
