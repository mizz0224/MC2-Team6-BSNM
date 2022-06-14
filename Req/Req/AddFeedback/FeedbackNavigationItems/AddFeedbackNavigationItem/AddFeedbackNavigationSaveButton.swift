//
//  AddFeedbackNavigationSaveButton.swift
//  Req
//
//  Created by 이재웅 on 2022/06/14.
//

import SwiftUI

struct AddFeedbackNavigationSaveButton: View {
    @Binding var pins: [Pin]
    
    let reviewerName: String
    let image: UIImage
    
    var body: some View {
        Button {
            saveInformation()
        } label: {
            Text("저장하기")
                .font(.system(size: 18.0, weight: .semibold))
                .foregroundColor(.black)
        }
    }
}

extension AddFeedbackNavigationSaveButton {
    
    func saveInformation() {
        let date = Date()
        
        var dateFormatter: DateFormatter = {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "YYYY년 MM월 dd일 HH시 mm분"
            
            return dateFormatter
        }()
        
        print("----현재 데이터----")
        print("현재 시간 : \(dateFormatter.string(from: date))")
        print("작성자 : \(reviewerName)")
        print("이미지 : \(image)")
        print("핀 개수 : \(pins.count)")
    }
    
}
