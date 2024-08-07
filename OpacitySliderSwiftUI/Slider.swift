//
//  Slider.swift
//  OpacitySliderSwiftUI
//
//  Created by Marat Fakhrizhanov on 07.08.2024.
//

import SwiftUI

struct Slider: UIViewRepresentable {
    @Binding var sliderValue: Double
   
    func makeUIView(context: Context) -> UISlider {
    
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.setValue(50, animated: true)
       
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
    
    }
    
    
    
    
    
    
}

#Preview {
    Slider(sliderValue: .constant(43))
}
