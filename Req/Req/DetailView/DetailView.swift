//ToDO : 데이터 전달, 홈뷰로이동, 피드백 삭제, 삭제 확인alert 뷰만 구현
//Do : 상세페이지 뷰만 구현, 뷰 분리(그림, 하단 설명 페이지 분리), 핀그리기(그리기만), 핀선택시 보이는뷰(상세_피드백)구현하기
//struct Pin{
//    var id : UUID
//    var x : Int
//    var y : Int
//    var title : String
//    var description : String
//}
//struct Feedback{
//    var id : UUID
//    var name : String
//    var date : Date
//    var image : String
//    var pins : [Pin]
//}
import SwiftUI
struct DetailView: View {
    @State private var showingAlert = false
    let MenuFont : Font = Font.system(size:20)
    
    let getFeedback : Feedback
    
//    let imageName : String = getFeedback.image ?? ""
//    let feedbackDate : Date = getFeedback.date ?? Date()
//    let feedbackUserName : String = getFeedback.name ?? ""
//    let id : UUID = getFeedback.id ?? UUID()
    
    var body: some View {
        VStack(spacing:0) {
            Spacer().frame(height:48)
            TopMenuView()
            
            ImageView(pins: getFeedback.pins, imageName: getFeedback.image)//ImageView(개별 뷰로 구현)
                
            DetailViewDescription(feedbackDate: getFeedback.date, feedbackUserName: getFeedback.name)
                
            //DetailViewFeedback(pinTitle: "티셔츠 로고플레이", pinDescription: "로고플티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬레이가 맘티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬티셔33츠보다 무늬더 잘 어울릴것 같음.")
            //Spacer()
        }.frame(height:796)//VStack
    }//body
    
    func gotoHome()->Void {
        //go to homeview
    }
    func deleteFeedback(getUuid : UUID)->Void {
        //delete feedback
        //go to homeview
    }
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView(getFeedback: testData)
        }
    }
    
}
