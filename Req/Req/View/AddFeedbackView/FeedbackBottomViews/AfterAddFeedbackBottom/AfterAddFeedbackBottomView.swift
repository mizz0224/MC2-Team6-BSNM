//
//  AfterAddFeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct AfterAddFeedbackBottomView: View {
    let space: CGFloat = 27.0
    
    var body: some View {
        VStack {
            Spacer()
                .frameRatio(height: space)
            AfterAddFeedbackText()
            Spacer()
                .frameRatio(height: space)
            DivisionLine()
            Spacer()
                .frameRatio(height: 150.0)
        }
    }
}

struct AfterAddFeedbackBottomView_Previews: PreviewProvider {
    static var previews: some View {
        AfterAddFeedbackBottomView()
    }
}
