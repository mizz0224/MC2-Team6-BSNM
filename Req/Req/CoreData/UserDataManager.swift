//
//  UserDataManager.swift
//  Req
//
//  Created by 이재웅 on 2022/06/18.
//

import Foundation

class UserDataManager: ObservableObject {
    let dataFilePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("Feedback.plist")

    var nowFeedback: Feedback?
    @Published var FeedbackArray:[Feedback] = [Feedback]()
    
    init() {
        // CoreData 및 UserDefaults 파일경로확인
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        // UserDefault에 저장될 Feedback 데이터 생성
        requestFeedbackArray()
    }
    
    
    // 데이터 Create
    func addFeedbackArray(addedFeedback: Feedback) {
        FeedbackArray.append(addedFeedback)
        let encoder = PropertyListEncoder()
        
        do {
            let data = try encoder.encode(FeedbackArray)
            try data.write(to: dataFilePath!)
        } catch {
            print("\(error)")
        }
    }
    
    // 데이터 Read
    func requestFeedbackArray() {
        if let data = try? Data(contentsOf: dataFilePath!) {
            let decoder = PropertyListDecoder()
            do {
                self.FeedbackArray = try decoder.decode([Feedback].self, from: data)
            } catch {
                print("\(error)")
            }
        }
    }
    
    // 데이터 삭제
    func deleteFeedback(feedbackID:UUID) {
        var count = 0
        
        for feedback in FeedbackArray {
            if feedback.id == feedbackID {
                FeedbackArray.remove(at: count)
                let encoder = PropertyListEncoder()
                do {
                    let data = try encoder.encode(FeedbackArray)
                    try data.write(to: dataFilePath!)
                } catch {
                    print("\(error)")
                }
                
                return
            }
            
            count += 1
        }
    }
    
    // 데이터 ID값으로 찾기
    func findFeedback(feedbackID:UUID) -> Feedback {
        for feedback in FeedbackArray {
            if feedback.id == feedbackID {
                nowFeedback = feedback
            } else {
                nowFeedback = FeedbackArray[0]
            }
        }
        return nowFeedback ?? FeedbackArray[0]
    }
        
}
