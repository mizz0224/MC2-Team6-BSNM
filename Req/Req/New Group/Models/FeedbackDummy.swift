//
//  FeedbackDummy.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
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
var pin0 = Pin(id: UUID(), x: 0, y: 0, title: "테스트타이틀1", description: "테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명")
var pin1 = Pin(id: UUID(), x: 200, y: 200, title: "테스트타이틀2", description: "테스트설명테스트설명테스트설명테스트설명테스트설테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명")
var pin2 = Pin(id: UUID(), x: 300, y: 300, title: "티셔츠 로고플레이", description: "로고플레이가 맘에 안듬.\n로고플레이가 들어간 티셔츠보다 무늬가 없는 티셔츠가 현재 옷에 더 잘 어울릴것 같음")
var pin3 = Pin(id: UUID(), x: 350, y: 350, title: "테스트타이틀4", description: "테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명")
var pin4 = Pin(id: UUID(), x: 390, y: 520, title: "테스트타이틀5", description: "테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명테스트설명")
var testpins : [Pin] = [pin0,pin1,pin2,pin3,pin4]
let testData : Feedback = Feedback(id: UUID(), name: "커리", date: Date.now, image: "picture1", pins: testpins)



let testData1 : Feedback = Feedback(id: UUID(), name: "커리", date: Date.now, image: "picture1", pins: testpins)
let testData2 : Feedback = Feedback(id: UUID(), name: "커리", date: Date.now, image: "picture1", pins: testpins)
let testData3 : Feedback = Feedback(id: UUID(), name: "커리", date: Date.now, image: "picture1", pins: testpins)
let testData4 : Feedback = Feedback(id: UUID(), name: "커리", date: Date.now, image: "picture1", pins: testpins)

var testDataSet1 : [Feedback] = [Feedback](repeating: testData1, count: 4)
var testDataSet2 : [Feedback] = [Feedback](repeating: testData2, count: 9)
var testDataSet3 : [Feedback] = [Feedback](repeating: testData3, count: 1)
var testDataSet4 : [Feedback] = [Feedback](repeating: testData4, count: 8)

var testDataSet : [Feedback] = testDataSet1 + testDataSet2 + testDataSet3 + testDataSet4
