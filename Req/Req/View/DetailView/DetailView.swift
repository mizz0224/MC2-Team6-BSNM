//
//  DetailView.swift
//  Req
//
//  Created by heojaenyeong on 2022/06/10.
//
//ToDO :  홈뷰로이동, 피드백 삭제, 로티조정
//Do : 상세페이지 :  뷰 구현(Image,Name,Date), 핀 이미지 그리기 구현, 이미지 선택시 선택된핀 선택 해제 및 상세뷰로 돌아가기 구현 / 상세 피드백 : 핀 선택시 해당된 핀내용 그리기 구현, 선택된 핀 터치시 상세페이지 뷰 그리기 구현, 다른핀 선택시 기존에 그렸던핀 선택해제 및 하단 내용 변경 구현 , 핀선택 부분 리팩토링, 뷰 디테일 수정,
//struct Feedback {
//    let id : UUID
//    let name : String
//    let date : Date
//    let image : String
//    let pins : [Pin]
//}
//
//struct Pin : Hashable {
//    let id : UUID
//    let x : Double
//    let y : Double
//    let title : String
//    let description : String
//}
import SwiftUI
struct DetailView: View {


    let MenuFont: Font = Font.system(size: 20) //메뉴 폰트 사이즈
    let totalFrameHeight: CGFloat = 796
    let getFeedback: Feedback//받아온 피드백 데이터
    let detailViewBgColor: Color = Color(red: 251 / 255, green: 251 / 255, blue: 255 / 255)//상세페이지 배경 색깔 : reqWhite : fdfdff
    @Binding var isDark: Bool//다크모드를 제어할 변수
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
                .frameRatio(height: 100)//상단 공백
            
            TopMenuView(idToDelete: getFeedback.id, feedback: getFeedback)//뒤로가기, 삭제 버튼 있는 뷰
            ImageView(getFeedback: getFeedback)//이미지 뷰, 하단 설명뷰는 이미지 뷰에서 구현
        }
            .frameRatio(height: totalFrameHeight)
            .onAppear() {
                isDark = false//상세 페이지가 등장 할때 다크모드 해제
            }
            .ignoresSafeArea()
            .background(detailViewBgColor)//VStack
    }//body
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
