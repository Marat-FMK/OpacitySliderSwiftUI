//
//  Slider.swift
//  OpacitySliderSwiftUI
//
//  Created by Marat Fakhrizhanov on 07.08.2024.
//

import SwiftUI

struct Slider: UIViewRepresentable {
    
    @Binding var currentValue: Double
     var thumbAlpha: Double
   
    func makeUIView(context: Context) -> UISlider {
    
        let slider = UISlider()
        
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.addTarget(context.coordinator, action: #selector(Coordinator.didValueDone), for: .valueChanged)
//        slider.setValue(Float(currentValue), animated: true)
//        currentValue = Double(slider.value)
       
       
        return slider
    }
    
    func makeCoordinator() -> Coordinator {
            Coordinator(value: $currentValue)
        }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.setValue(Float(currentValue), animated: true)
        uiView.thumbTintColor = UIColor(_colorLiteralRed: 177, green: 55, blue: 177, alpha: Float(thumbAlpha) / 100)
        
        
    }
    
    
}

extension Slider {
    class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func didValueDone(_ sender : UISlider) {
            value = Double(sender.value)
        }
    }
}

#Preview {
    Slider(currentValue:.constant(23), thumbAlpha: 3)
}
