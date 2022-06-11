//
//  BeforeAddFeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct BeforeAddFeedbackBottomView: View {
    var body: some View {
        VStack {
            BeforeAddFeedbackText()
            Spacer()
                .frame(height: 30.0)
            AddFeedbackButton()
        }
    }
}

struct BeforeAddFeedbackBottomView_Previews: PreviewProvider {
    static var previews: some View {
        BeforeAddFeedbackBottomView()
    }
}
