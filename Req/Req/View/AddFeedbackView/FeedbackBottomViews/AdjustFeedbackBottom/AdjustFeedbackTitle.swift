//
//  AdjustFeedbackTitle.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct AdjustFeedbackTitle: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 24.0, weight: .bold))
            .frame(width: 358.0, height: 24.0, alignment: .leading)
    }
}
