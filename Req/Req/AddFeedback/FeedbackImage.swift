//
//  FeedbackImage.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct FeedbackImage: View {
    @State private var idCount: Int = 0
    
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var pins: [Pin]
    
    let image: Image = Image("TestImage")
    
    var body: some View {
        ZStack {
            image
                .resizable()
                .frame(width: 390.0, height: 520.0)
                .overlay(
                    tapBackground { location in
                        appendPinLocation(location: location)
                        plusId()
                        changeFeedbackBottomView = .writeFeedback
                    }
                        .disabled(allowToTouchImage(changeFeedbackBottomView))
                )
                .onTapGesture {
                    hideKeyboard()
                } // image
            
            
            if !pins.isEmpty {
                ForEach(pins, id: \.id) { pin in
                    PinImage(x: pin.x, y: pin.y)
                }
            }
            
        } // ZStack
        .frame(width: 390.0, height: 520.0)
    }
}


// FeedbackImage의 touch point Coordinates를 얻기 위한 background View
struct tapBackground: UIViewRepresentable {
    
    var tappedCallback: ((CGPoint) -> Void)
    
    func makeUIView(context: UIViewRepresentableContext<tapBackground>) -> UIView {
        let view = UIView(frame: .zero)
        let gesture = UITapGestureRecognizer(target: context.coordinator,
                                             action: #selector(Coordinator.tapped))
        
        view.addGestureRecognizer(gesture)
        
        return view
    }
    
    class Coordinator: NSObject {
        var tappedCallback: ((CGPoint) -> Void)
        
        init(tappedCallback: @escaping ((CGPoint) -> Void)) {
            self.tappedCallback = tappedCallback
        }
        
        @objc func tapped(gesture: UITapGestureRecognizer) {
            let point = gesture.location(in: gesture.view)
            self.tappedCallback(point)
        }
    }
    
    func makeCoordinator() -> tapBackground.Coordinator {
        
        return Coordinator(tappedCallback:self.tappedCallback)
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<tapBackground>) { }
    
}
//출처 : https://stackoverflow.com/questions/56513942/how-to-detect-a-tap-gesture-location-in-swiftui


extension FeedbackImage {
    
    // FeedbackView의 FeedbackType에 따라 FeedbackImage의 터치가능 상태를 변경하는 함수
    func allowToTouchImage(_ feedbackType: FeedbackType) -> Bool {
        switch feedbackType {
        case .touchPin:
            return false
        default:
            return true
        }
    }
    
    // Pin마다 id값을 구분하기 위한 함수
    func plusId() {
        idCount += 1
    }
    
    // 터치한 location 데이터를 Pin에 입력한 후 pins 배열에 넣기 위한 함수
    func appendPinLocation(location: CGPoint) {
        pins.append(Pin(id: idCount, x: location.x, y: location.y, title: nil, description: nil))
    }
}
