//
//  FeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct FeedbackBottomView: View {
    @State var isTouchedAddFeedbackButton: Bool = false
    
    var body: some View {
            BeforeAddFeedbackBottomView(isTouchedAddFeedbackButton: $isTouchedAddFeedbackButton)
    }
}

struct FeedbackBottomView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackBottomView()
    }
}
