//ToDO :  홈뷰로이동, 피드백 삭제
//Do : 상세페이지 :  뷰 구현(Image,Name,Date), 핀 이미지 그리기 구현, 이미지 선택시 선택된핀 선택 해제 및 상세뷰로 돌아가기 구현 / 상세 피드백 : 핀 선택시 해당된 핀내용 그리기 구현, 선택된 핀 터치시 상세페이지 뷰 그리기 구현, 다른핀 선택시 기존에 그렸던핀 선택해제 및 하단 내용 변경 구현
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
    let MenuFont : Font = Font.system(size:20)
    let getFeedback : Feedback
    var body: some View {
        VStack(spacing:0) {
            //Spacer().frame(height:48)
            TopMenuView(idToDelete: getFeedback.id)
            
            ImageView(getFeedback : getFeedback)//ImageView(개별 뷰로 구현)
                
        }.frame(height:796)//VStack
    }//body
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView(getFeedback: testData)
        }
    }
    
}
