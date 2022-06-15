//
//  PhotoModel.swift
//  Req
//
//  Created by 조성산 on 2022/06/15.
//

import Foundation

struct Photo: Identifiable {
    let id: Int
    let photoName: String
}

let photoGallery : [Photo] = [
    
    .init(id: 1, photoName: "samplePhoto1"),
    .init(id: 5, photoName: "samplePhoto5"),
    .init(id: 9, photoName: "samplePhoto9")
]
