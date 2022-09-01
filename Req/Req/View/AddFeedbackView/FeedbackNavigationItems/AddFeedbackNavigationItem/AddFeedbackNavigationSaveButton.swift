//
//  AddFeedbackNavigationSaveButton.swift
//  Req
//
//  Created by 이재웅 on 2022/06/14.
//

import SwiftUI
import CoreML
import NaturalLanguage
struct AddFeedbackNavigationSaveButton: View {
    @EnvironmentObject var userData: UserDataManager
    
    @State private var saveAlertShow: Bool = false
    @State private var dataAlertShow: Bool = false
    
    @Binding var pins: [Pin]
    @Binding var showCameraView: Bool
    
    let reviewerName: String
    let image: UIImage
    
    var body: some View {
        Button {
            saveAlertShow = true
            saveInformation(getDate())
        } label: {
            Text("저장하기")
                .font(.system(size: 18.0, weight: .semibold))
                .foregroundColor(.black)
        } // Button
        .alert("피드백을 저장하시겠습니까?", isPresented: $saveAlertShow) {
            Button("취소", role: .cancel) { saveAlertShow = false }
            Button("저장하기", role: .none) {
                print("현재 시간 : \(getDate())\n작성자 : \(reviewerName)\n이미지 : \(image)\n핀 개수 : \(pins.count)")
                saveData()
                
                saveAlertShow = false
                showCameraView = false
            }
        } // 저장 Alert
    }
}

extension AddFeedbackNavigationSaveButton {
    
    func saveInformation(_ date: String) {
        print("----현재 데이터----")
        print("현재 시간 : \(date)")
        print("작성자 : \(reviewerName)")
        print("이미지 : \(image)")
        print("핀 개수 : \(pins.count)")
    }
    
    func getDate() -> String {
        let date = Date()
        
        let dateFormatter: DateFormatter = {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "YYYY년 MM월 dd일 HH시 mm분"
            
            return dateFormatter
        }()
        
        return "\(dateFormatter.string(from: date))"
    }
    
    func saveData() {
        var avgPinFeedbackPoint: Double = 0.0
        for pin in pins {
            avgPinFeedbackPoint += evalute(pinDescription: pin.description!)
        }
        avgPinFeedbackPoint = avgPinFeedbackPoint / Double(pins.count)
        let Feedback = Feedback(id: UUID() ,name: reviewerName, date: Date(), image: image.jpegData(compressionQuality: 1) ?? Data(), pins: pins,feedbackPointAvg: avgPinFeedbackPoint)
        
        userData.addFeedbackArray(addedFeedback: Feedback)
    }
    func evalute(pinDescription:String) -> Double{
        var totalPoint: Double = 0.0
        do{
            let model = try fashionFeedbackEvalute(configuration: MLModelConfiguration()).model
            let nlModel = try NLModel(mlModel: model)
            let pointSet = nlModel.predictedLabelHypotheses(for: pinDescription, maximumCount: 5)
            for i in 1..<6{
                totalPoint = totalPoint + Double(i) * (pointSet[String(i)] ?? 1.0)
            }
            return totalPoint
        } catch {
            return 5.0
        }
        
    }
}
