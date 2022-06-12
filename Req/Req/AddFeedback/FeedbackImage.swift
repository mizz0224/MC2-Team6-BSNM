//
//  FeedbackImage.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct FeedbackImage: View {
    let image: Image = Image("TestImage")
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            image
                .resizable()
                .frame(width: 390.0, height: 520.0)
                .overlay(
                    tapBackground { location in
                        print("(x: \(location.x), y: \(location.y))")
                    }
                )
        }
        .frame(width: 390.0, height: 520.0)
    }
}

struct FeedbackImage_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackImage()
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
        
        @objc func tapped(gesture:UITapGestureRecognizer) {
            let point = gesture.location(in: gesture.view)
            self.tappedCallback(point)
        }
    }

    func makeCoordinator() -> tapBackground.Coordinator {
        
        return Coordinator(tappedCallback:self.tappedCallback)
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<tapBackground>) { }

}
