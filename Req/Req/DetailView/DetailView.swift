//ToDO :  홈뷰로이동, 피드백 삭제, 핀 선택시 하단 내용변경, 사진 선택시 핀선택해제
//Do : 상세페이지 뷰만 구현, 뷰 분리(그림, 하단 설명 페이지 분리), 핀그리기(그리기만), 핀선택시 보이는뷰(상세_피드백)구현하기, 데이터 전달,삭제 확인alert 뷰만 구현
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
            Spacer().frame(height:48)
            TopMenuView(idToDelete: getFeedback.id)
            
            ImageView(pins: getFeedback.pins, imageName: getFeedback.image)//ImageView(개별 뷰로 구현)
                
            DetailViewDescription(feedbackDate: getFeedback.date, feedbackUserName: getFeedback.name)
                
        }.frame(height:796)//VStack
    }//body
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView(getFeedback: testData)
        }
    }
    
}
