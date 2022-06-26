//
//  AddFeedbackNavigationXButton.swift
//  Req
//
//  Created by 이재웅 on 2022/06/14.
//

import SwiftUI

struct AddFeedbackNavigationXButton: View {
    @Binding var showCameraView: Bool
    
    var body: some View {
        Button {
            self.showCameraView.toggle()
//            popToRootView()
        } label: {
            Image(systemName: "xmark")
                .resizable()
                .frameRatio(width: 14.0, height: 14.0, alignment: .center)
                .foregroundColor(.black)
        }
    }
}
