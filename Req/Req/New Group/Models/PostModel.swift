//
//  PostModel.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import Foundation

struct PostModel: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let date: Date?
}
