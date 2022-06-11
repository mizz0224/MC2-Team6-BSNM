//
//  AfterAddFeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct AfterAddFeedbackBottomView: View {
    let space: CGFloat = 28.0
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: space)
            AfterAddFeedbackText()
            Spacer()
                .frame(height: space)
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
