//
//  AddFeedbackView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

//TODO: 키보드 올라올때 View도 같이 올라오도록 구현 (현재 어색한 상태)
struct AddFeedbackView: View {
    @ObservedObject var keyboardHeightHelper = KeyboardHeightHelper()
    
    @State private var changeFeedbackBottomView: FeedbackType = .addFeedback
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var pins: [Pin] = []
    @State private var idCount: Int = 0
    @State private var currentPin: Pin = Pin(id: 0, x: 0.0, y: 0.0, title: nil, description: nil)
    
    let reviewerName: String
    let image: UIImage
    
    var body: some View {
        VStack(spacing: 0) {
            FeedbackNavigationBar(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, pins: $pins, idCount: $idCount, currentPin: $currentPin, reviewerName: reviewerName, image: image)
            FeedbackImage(changeFeedbackBottomView: $changeFeedbackBottomView, pins: $pins, idCount: $idCount, currentPin: $currentPin, image: image)
            FeedbackBottomView(keyboardHeightHelper: keyboardHeightHelper, changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, currentPin: $currentPin)
                .frame(height: 224.0)
        }
        .offset(y: -(self.keyboardHeightHelper.keyboardHeight/2))
            .animation(.easeInOut(duration: 0.16))
        .ignoresSafeArea()
        .navigationBarHidden(true)
        
    }
}

enum FeedbackType {
    case addFeedback
    case touchPin
    case writeFeedback
    case beforeAdjustFeedback
    case afterAdjustFeedback
}
