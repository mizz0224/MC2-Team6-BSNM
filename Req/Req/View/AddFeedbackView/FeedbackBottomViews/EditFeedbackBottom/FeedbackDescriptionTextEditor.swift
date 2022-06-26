//
//  FeedbackDescriptionTextEditor.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct FeedbackDescriptionTextEditor: View {
    @ObservedObject var keyboardHeightHelper: KeyboardHeightHelper
    
    @State private var placeholderText: String = "어떻게 해야 더 멋진 패션이 될까요? 상세히 설명해주세요."
    
    @Binding var description: String
    
    var body: some View {
        ZStack {
            if description == "" {
                TextEditor(text: $placeholderText)
                    .font(.system(size: 14.0))
                    .foregroundColor(.gray)
                    .disableAutocorrection(true)
                    .frameRatio(width: 358.0, height: 130.0, alignment: .topLeading)
                    .disabled(true)
            }
            TextEditor(text: $description)
                .font(.system(size: 14.0))
                .disableAutocorrection(true)
                .frameRatio(width: 358.0, height: 130.0, alignment: .topLeading)
                .opacity(description == "" ? 0.25 : 1)
        }
        // 출처 : https://sweetdev.tistory.com/728
    }
}
