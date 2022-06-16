//
//  DateModel.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct DateModel: View {
    let releaseDate = Date()
    
    static let kDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy년 M월"
        return formatter
    }()
    
    var body: some View {
        VStack {
            
         Text("\(releaseDate, formatter: Self.kDateFormat)")
        }
    }
}

struct DateModel_Previews: PreviewProvider {
    static var previews: some View {
        DateModel()
    }
}
