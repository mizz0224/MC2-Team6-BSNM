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
    
    var body: some View {
        VStack(spacing: 0) {
            FeedbackImage()
            FeedbackBottomView(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description)
        }
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
}
