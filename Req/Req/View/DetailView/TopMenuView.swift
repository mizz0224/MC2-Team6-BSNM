//
//  ContentView.swift
//
//
//  Created by heojaenyeong on 2022/06/12.
//

import SwiftUI

struct TopMenuView : View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var userData: UserDataManager
    
    @State private var showingAlert : Bool = false //alert 띄워주기 위한 변수
    @State var navigateNext = false
    let MenuFont : Font = Font.system(size:20).bold() //메뉴(뒤로가기,삭제) 버튼 폰트
    let idToDelete : UUID //삭제될 피드백의 아이디(UUID)
    let TopMenuIconColor : Color = Color(red: 13/255, green: 13/255, blue: 14/255)//상단메뉴 아이콘 색깔 : reqBlack : 0d0de
    let TopMenuBgColor : Color = Color(red: 251/255, green: 251/255, blue: 255/255)//상단메뉴 배경 색깔 : reqWhite : fdfdff
    let feedback: Feedback
    
    var body : some View {
        
        VStack(alignment: .center, spacing: 0){
            HStack(spacing:0) {
                Button(action: { gotoHome() }) {//홈으로 이동
                    Image(systemName: "chevron.backward")
                        .font(MenuFont)
                        .frame(height: 24)
                        .foregroundColor(TopMenuIconColor)
                        .padding(EdgeInsets(top: 10, leading: 16, bottom: 18, trailing: 0))
                }//뒤로가기 버튼
                Spacer()//좌우 구분을 위한 공백
                Button(action: { self.showingAlert.toggle() }) {
                    Image(systemName : "trash.fill")
                        .font(MenuFont)
                        .frame(height: 24)
                        .foregroundColor(TopMenuIconColor)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 18, trailing: 16))
                        .alert(isPresented: $showingAlert) {
                            Alert(
                                title: Text("확인"),
                                message: Text("정말 삭제하시겠습니까?"),
                                primaryButton: .destructive(Text("예"), action: {
                                    deleteFeedback(targetUUID: idToDelete)
                                    
                                }),
                                secondaryButton: .cancel(Text("아니오")))
                            //예, 아니오 버튼
                        }//alert
                }//삭제 버튼
            }//Hstack
        }.frame(height: 52).background(TopMenuBgColor)// Vstack
    }//TopMenuView
    
    
    func gotoHome()->Void {
        self.presentationMode.wrappedValue.dismiss()
    }
    func deleteFeedback(targetUUID : UUID)->Void {
        userData.deleteFeedback(feedbackID: feedback.id)
        self.presentationMode.wrappedValue.dismiss()
    }
    
}
struct DestinationVC: View {
    var body: some View {
        Text("Hello!")
    }
}


