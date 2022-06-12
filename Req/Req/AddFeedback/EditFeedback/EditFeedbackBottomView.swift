//
//  EditFeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct EditFeedbackBottomView: View {
    @Binding var title: String
    @Binding var description: String
    
    var body: some View {
        VStack(spacing: 0) {
            FeedbackTitleTextField(title: $title)
            Spacer()
                .frame(height: 20.0)
            DivisionLine()
            Spacer()
                .frame(height: 20.0)
            FeedbackDescriptionTextEditor(description: $description)
                .frame(maxHeight: 130.0)
        }
    }
}
