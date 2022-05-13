//
//  FeatureTint.swift
//  SwiftUI3
//
//  Created by 유재호 on 2022/05/10.
//

import SwiftUI

struct FeatureTint: View {
    
    var body: some View {
        VStack(spacing: 10) {
            // Text - Markdown 지원
            Text("Hello")
            Text("**안녕하세요**") // ** 볼드 해도 되지만, 명시하려면 .bold() 가 나은 듯!
            Text("~반갑습니다~") // 취소선, 하지만 .strikethrough(true, color: .red)
            Text("*Hi*") // 기울임 .italic()
            Text("저에 대해 더 알고 싶다면 ... [링크](https://www.naver.com/)")
            
            // Button 역할, BorderShape
            Button {
                print("링크 눌림")
            } label: {
                Text("[링크](https://www.naver.com/)") // 마크다운 ** 볼드 해도 되지만, 명시하려면 .bold() 가 나은 듯!
            }
            .foregroundColor(.green)
            .buttonStyle(.bordered)
            .tint(.green)
            
            // 위에 있는 거 똑같이 Link 로 만들기
            Button {
                print("링크 눌림")
            } label: {
                Link("링크", destination: URL(string: "https://www.naver.com/")!)
            }
            .buttonStyle(.bordered)
            .tint(.green)
            
            Button {
                print("야호 눌림")
            } label: {
                Text("야호")
            }
            .buttonStyle(.borderedProminent)
            
            Button {
                print("우예 눌림")
            } label: {
                Text("우예")
            }
            .buttonStyle(.bordered)
            
            Button(role: .destructive) {
                print("destructive 눌림")
            } label: {
                Text("destructive")
            }
            .buttonStyle(.bordered) // 어차피 감춰짐
            .buttonBorderShape(.capsule) // iOS 15.0+
        }
        .font(.title)
//        .tint(.purple) // 상위 View 에 수정자 적용해서, 전체 tint 가능
    }
}

struct FeatureTint_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTint()
    }
}
