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
    @State private var currentPin: Pin = Pin(id: UUID(), x: 0.0, y: 0.0, title: nil, description: nil)
    
    @Binding var reviewerName: String
    @Binding var image: UIImage?
    @Binding var showCameraView: Bool
    
    
    var body: some View {
        ZStack {
            VStack {
                    Spacer().frame(height: 99.0)
                VStack {
                    FeedbackImage(changeFeedbackBottomView: $changeFeedbackBottomView, pins: $pins, idCount: $idCount, currentPin: $currentPin, image: image ?? UIImage())
                    FeedbackBottomView(keyboardHeightHelper: keyboardHeightHelper, changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, currentPin: $currentPin)
                } // FeedbackImage, BottomView를 묶은 VStack
                .frame(height: 224.0)
            } // 네비게이션바 Spacer를 포함한 VStack
            .offset(y: -(self.keyboardHeightHelper.keyboardHeight))
            
            VStack {
                FeedbackNavigationBar(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, pins: $pins, idCount: $idCount, currentPin: $currentPin, showCameraView: $showCameraView, reviewerName: reviewerName, image: image!)
                Spacer()
            } // 네비게이션 바를 고정시키는 VStack
        } // 전체 VStack
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
