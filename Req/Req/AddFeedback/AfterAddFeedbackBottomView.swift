//
//  AfterAddFeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct AfterAddFeedbackBottomView: View {
    var body: some View {
        VStack {
            AfterAddFeedbackText()
            Spacer()
                .frame(height: 28.0)
            DivisionLine()
            Spacer()
                .frame(height: 134.0)
        }
    }
}

struct AfterAddFeedbackBottomView_Previews: PreviewProvider {
    static var previews: some View {
        AfterAddFeedbackBottomView()
    }
}
