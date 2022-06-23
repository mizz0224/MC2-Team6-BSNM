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
            popToRootView()
        } label: {
            Image(systemName: "xmark")
                .resizable()
                .frameRatio(width: 14.0, height: 14.0, alignment: .center)
                .foregroundColor(.black)
        }
    }
}

extension AddFeedbackNavigationXButton {
    
    func popToRootView() {
        showCameraView = false
    }
    //출처 : https://sweetdev.tistory.com/695
    
}
