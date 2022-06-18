//
//  MainView.swift
//  Req
//
//  Created by Choi Inho on 2022/06/17.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        HomeView()
            .navigationBarHidden(true)
            .navigationBarTitle("", displayMode: .inline)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
