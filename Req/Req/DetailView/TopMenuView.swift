//
//  ContentView.swift
//
//
//  Created by heojaenyeong on 2022/06/12.
//

import SwiftUI

struct TopMenuView : View {
    @State private var showingAlert = false //alert 띄워주기 위한 변수
    let MenuFont : Font = Font.system(size:20).bold() //메뉴(뒤로가기,삭제) 버튼 폰트
    let idToDelete : UUID //삭제될 피드백의 아이디(UUID)
    
    var body : some View {
        
        VStack(alignment: .center, spacing: 0){
            HStack(spacing:0) {
                Button(action:{gotoHome()}) {//홈으로 이동
                    Image(systemName : "chevron.backward")
                        .font(MenuFont)
                        .frame(height: 24)
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(top :10, leading : 16, bottom :18, trailing : 0))
                }//뒤로가기 버튼
                Spacer()//좌우 구분을 위한 공백
                Button(action:{self.showingAlert.toggle()}) {
                    Image(systemName : "trash.fill")
                        .font(MenuFont)
                        .frame(height: 24)
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(top : 10, leading : 0, bottom : 18, trailing : 16))
                        .alert(isPresented: $showingAlert) {
                            Alert(
                                title: Text("확인"),
                                message: Text("정말 삭제하시겠습니까?"),
                                primaryButton: .destructive(Text("예"), action: {deleteFeedback(targetUUID: idToDelete)}),//예 선택시 삭제기능동작
                                secondaryButton: .cancel(Text("아니오")))//아니오 선택시 취소
                        }//alert
                }//삭제 버튼
            }//Hstack
        }.frame(height: 52)// Vstack
    }//TopMenuView
    
    
    func gotoHome()->Void {
        //go to home
        print("go to home")

    }
    func deleteFeedback(targetUUID : UUID)->Void {
        //delete feedback
        //go to homeview
        print("delete feedback")
        print("go to home")
    }
    struct TopMenuView_Previews : PreviewProvider {
        static var previews : some View {
            TopMenuView(idToDelete: UUID())
        }
    }
    
}


