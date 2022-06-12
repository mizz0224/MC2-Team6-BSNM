//
//  FeedbackDescriptionTextEditor.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct FeedbackDescriptionTextEditor: View {
    @Binding var description: String
    @State private var placeholderText: String = "어떻게 해야 더 멋진 패션이 될까요? 상세히 설명해주세요."
    
    var body: some View {
        ZStack {
            if self.description.isEmpty {
                TextEditor(text: $placeholderText)
                    .font(.system(size: 14.0))
                    .foregroundColor(.gray)
                    .disabled(true)
            }
            TextEditor(text: $description)
                .font(.system(size: 14.0))
        }
    }
}
