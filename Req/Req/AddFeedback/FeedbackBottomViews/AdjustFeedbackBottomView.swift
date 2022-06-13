//
//  AdjustFeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct AdjustFeedbackBottomView: View {
    @Binding var title: String
    @Binding var description: String
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 0) {
            Spacer()
                .frame(height: 24.0)
            Text(title)
                .font(.system(size: 24.0, weight: .bold))
                .frame(width: 358.0, height: 24.0, alignment: .center)
            Spacer()
                .frame(height: 20.0)
            DivisionLine()
            Spacer()
                .frame(height: 20.0)
            Text(description)
                .font(.system(size: 14.0))
                .frame(width: 358.0, height: 130.0)
        }
    }
}
