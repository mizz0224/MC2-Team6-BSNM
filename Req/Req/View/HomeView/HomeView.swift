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
    @State var isDark : Bool = true//다크모드를 제어할 변수
    var body: some View {
        NavigationView {
            VStack {
                //Spacer().frame(height:48)
                TopMenu(searchText: $searchText, isSearching: $isSearching, showResults: $showResults, loadSearch: $loadSearch, showCameraView: $showCameraView)
                ScrollView {
                    VStack(alignment: .leading) {
                        Slogan()
                            .padding(.init(top: 20, leading: 30, bottom: 16, trailing: 0))
                        PostView(searchText: $searchText, loadSearch: $loadSearch, isDark: $isDark)
                    }
                }.background(.white)
            }
            .preferredColorScheme(isDark ? .dark : .light)//다크모드를 제어하는 변수가 true면 다크모드 false 이면 라이트모드 적용
                .onAppear(perform: {
                    isDark = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    loadSearch = true
                } })
        .navigationBarHidden(true)
        }
        .onAppear {
            userData.requestFeedbackArray()
        }
        .ignoresSafeArea()
        
    }

}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
