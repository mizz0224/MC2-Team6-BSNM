//
//  Entity.swift
//  Req
//
//  Created by 이재웅 on 2022/06/10.
//

import Foundation

struct Feedback {
    let id : UUID
    let name : String
    let date : Date
    let image : String
    let pins : [Pin]
}

struct Pin : Hashable {
    let id : UUID
    let x : Double
    let y : Double
    let title : String
    let description : String
}
//var pin0 = Pin(id: UUID(), x: 0, y: 0, title: "테스트타이틀1", description: "테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명")
//var pin1 = Pin(id: UUID(), x: 200, y: 200, title: "테스트타이틀2", description: "테스트설명테스트설명테스트설명테스트설명테스트설테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명")
//var pin2 = Pin(id: UUID(), x: 300, y: 300, title: "티셔츠 로고플레이", description: "로고플레이가 맘에 안듬.\n로고플레이가 들어간 티셔츠보다 무늬가 없는 티셔츠가 현재 옷에 더 잘 어울릴것 같음")
//var pin3 = Pin(id: UUID(), x: 350, y: 350, title: "테스트타이틀4", description: "테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명")
//var pin4 = Pin(id: UUID(), x: 390, y: 520, title: "테스트타이틀5", description: "테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명")
//var testpins : [Pin] = [pin0,pin1,pin2,pin3,pin4]
let testData : Feedback = Feedback(id: UUID(), name: "커리", date: Date.now, image: "picture1", pins: testpins)





// =======
//     let name: String?
//     let date: String?
//     let image: String?
//     let pins: [Pin?]
// }

// struct Pin: Hashable {
//     let id: Int
//     let x: Double
//     let y: Double
//     var title: String?
//     var description: String?
// }
// >>>>>>> merge-branch-1,3
