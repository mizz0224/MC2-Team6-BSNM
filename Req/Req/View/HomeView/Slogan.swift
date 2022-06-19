//
//  Slogan.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct Slogan: View {
    var body: some View {
        Text("Take a Picture \nAnd Get Feedback")
            .foregroundColor(.ReqBlack)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(.title)

    }
}

struct Slogan_Previews: PreviewProvider {
    static var previews: some View {
        Slogan()
    }
}
