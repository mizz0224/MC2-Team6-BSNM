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
        VStack(alignment: .leading ,spacing: 0) {
            Spacer()
                .frame(height: 24.0)
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

//화면 터치시 키보드 숨김
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
//출처 : https://seons-dev.tistory.com/entry/TextField
