//
//  AddFeedbackView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct AddFeedbackView: View {
    @State private var changeFeedbackBottomView: FeedbackType = .addFeedback
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var pins: [Pin] = []
    @State private var idCount: Int = 0
    @State private var currentPin: Pin = Pin(id: 0, x: 0.0, y: 0.0, title: nil, description: nil)
    
    var body: some View {
        VStack(spacing: 0) {
            FeedbackNavigationBar(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, pins: $pins, idCount: $idCount)
            FeedbackImage(changeFeedbackBottomView: $changeFeedbackBottomView, pins: $pins, idCount: $idCount, currentPin: $currentPin)
            FeedbackBottomView(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, currentPin: $currentPin)
                .frame(height: 224.0)
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
        
    }
}

struct AddFeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        AddFeedbackView()
    }
}

enum FeedbackType {
    case addFeedback
    case touchPin
    case writeFeedback
    case adjustFeedback
}
