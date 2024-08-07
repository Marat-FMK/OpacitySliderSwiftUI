//
//  ContentView.swift
//  OpacitySliderSwiftUI
//
//  Created by Marat Fakhrizhanov on 07.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isFocuse = true
    @State private var targetValue: Int = 1
     var thumbAlpha: Double = 1
    @State private var currentValue: Double = 1
    @State private var isPresented = false
   
    
    var body: some View {
        VStack (spacing: 29){
           Text(" >> \(currentValue)")
            
            Text("Move the slide to the value: \(targetValue)")
                .font(.system(size: 27))
            HStack {
                Text("0")
                
                Slider(currentValue : $currentValue, thumbAlpha: Double(computeScore()))
                   
            
                    .alert("Your score", isPresented: $isPresented, actions: {} ) {
                        Text("Result = \(computeScore())")
                    }
                    
                
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
    
//    private func opacityValue(currentValue: Double) -> Float {
//            
//        thumbAlpha = Float(computeScore() / 100)
//        return thumbAlpha
//    }
    
    private func checkResult() {
        isPresented = true
    }
    
    private func restart() {
       
            currentValue = 0
            targetValue = Int.random(in: 1...100)
    }
}

#Preview {
    ContentView()
}
