//
//  HomeView.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var userData: UserDataManager
    
    var getDataSet: [Feedback] {
        userData.requestFeedbackArray()
        
        return userData.FeedbackArray
    }
    @State var searchText = ""
    @State var isSearching = false
    @State var showResults = false
    @State var loadSearch = false
    @State private var showCameraView: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                TopMenu(searchText: $searchText, isSearching: $isSearching, showResults: $showResults, loadSearch: $loadSearch, showCameraView: $showCameraView)
                ScrollView {
                    VStack(alignment: .leading) {
                        Slogan()
                            .padding(.init(top: 20, leading: 40, bottom: 16, trailing: 0))
                        PostView(searchText: $searchText, loadSearch: $loadSearch)
                    }
                }.background(.white)
            }
                .preferredColorScheme(.dark)
                .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    loadSearch = true
                } })
        .navigationBarHidden(true)
        }
        
    }

}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
