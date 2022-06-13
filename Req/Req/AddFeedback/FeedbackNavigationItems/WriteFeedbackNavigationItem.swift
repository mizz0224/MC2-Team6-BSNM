//
//  WriteFeedbackNavigationItem.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct WriteFeedbackNavigationItem: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var title: String
    @Binding var description: String
    @Binding var pins: [Pin]
    @Binding var idCount: Int
    
    private var isWritten: Bool {
        if title != "" && description != "" { return true }
        else { return false }
    }
    
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 16.0)
            
            Button {
                cancelWrtieFeedback()
            } label: {
                Text("취소")
                    .font(.system(size: 18.0, weight: .semibold))
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            switch changeFeedbackBottomView {
            case .writeFeedback:
                Button {
                    completeWrtingFeedback()
                } label: {
                    Text("확인")
                        .font(.system(size: 18.0, weight: .semibold))
                        .foregroundColor(isWritten ? .black : .gray)
                }
                .disabled(!isWritten)
            default:
                EmptyView()
            }
            
            
            Spacer()
                .frame(width: 16.0)
            
        } // HStack
        .frame(width: 390.0, height: 51.0)
    }
}

extension WriteFeedbackNavigationItem {
    
    // 피드백 작성 취소버튼
    func cancelWrtieFeedback() {
        changeFeedbackBottomView = .addFeedback
        
        // 추가버튼 누른 직후 다시 취소할 경우 동작 안하도록 구현
        if idCount != 0 {
            // Pin에 부여한 id에 맞게 취소할 시 배열에서 삭제하기 위함
            let nowId = idCount - 1
            pins.remove(at: nowId)
            idCount = nowId
        }
    }
    
    // 피드백 작성 확인버튼
    func completeWrtingFeedback() {
        let nowId = idCount - 1
        pins[nowId].title = title
        pins[nowId].description = description
        
        title = ""
        description = ""
        
        changeFeedbackBottomView = .addFeedback
    }
}
