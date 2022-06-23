//
//  EditFeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct EditFeedbackBottomView: View {
    @ObservedObject var keyboardHeightHelper: KeyboardHeightHelper
    
    @Binding var title: String
    @Binding var description: String
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 0) {
            Spacer()
                .frameRatio(height: 24.0)
            FeedbackTitleTextField(keyboardHeightHelper: keyboardHeightHelper, title: $title)
            Spacer()
                .frameRatio(height: 20.0)
            DivisionLine()
            Spacer()
                .frameRatio(height: 20.0)
            FeedbackDescriptionTextEditor(keyboardHeightHelper: keyboardHeightHelper, description: $description)
                .frame(maxHeight: 130.0)
        }
    }
}

//화면 터치시 키보드 숨김
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
//출처 : https://seons-dev.tistory.com/entry/TextField
