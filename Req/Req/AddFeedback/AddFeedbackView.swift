//
//  AddFeedbackView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct AddFeedbackView: View {
    @State private var isTouchedAddFeedbackButton: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            FeedbackImage()
            FeedbackBottomView(isTouchedAddFeedbackButton: $isTouchedAddFeedbackButton)
        }
    }
}

struct AddFeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        AddFeedbackView()
    }
}
