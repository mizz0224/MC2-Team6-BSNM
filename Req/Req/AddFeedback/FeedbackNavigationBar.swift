//
//  FeedbackNavigationBar.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct FeedbackNavigationBar: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
                .frame(height: 48.0)
            
            HStack {
                Spacer()
                    .frame(width: 16.0)
                Button {
                    poptoRootView()
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 14.0, height: 14.0, alignment: .center)
                        .foregroundColor(.black)
                }
                Spacer()

            } // HStack
            .frame(width: 390.0, height: 51.0)
            
        } // VStack
    }
}

struct FeedbackNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackNavigationBar()
    }
}

extension FeedbackNavigationBar {
    
    func poptoRootView() {
        self.presentationMode.wrappedValue.dismiss()
    }
    //출처 : https://sweetdev.tistory.com/695
    
}
