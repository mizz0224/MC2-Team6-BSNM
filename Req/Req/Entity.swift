//
//  Entity.swift
//  Req
//
//  Created by 이재웅 on 2022/06/10.
//

import Foundation

struct Feedback {
    let name: String?
    let date: String?
    let image: String?
    let pins: [Pin?]
}

struct Pin: Hashable {
    let id: Int
    let x: Double
    let y: Double
    var title: String?
    var description: String?
}
