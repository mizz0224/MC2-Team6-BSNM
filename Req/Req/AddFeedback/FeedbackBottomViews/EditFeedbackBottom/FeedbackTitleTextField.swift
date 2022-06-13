//
//  FeedbackTitleTextField.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct FeedbackTitleTextField: View {
    @Binding var title: String
    let titlePlaceHolder: String = "무엇에 대한 피드백인가요?"
    
    var body: some View {
        TextField("무엇에 대한 피드백인가요?", text: $title)
            .textFieldStyle(.plain)
            .disableAutocorrection(true)
            .font(.system(size: 24.0, weight: .bold))
            .frame(width: 358.0, height: 24.0, alignment: .center)
            
    }
}
