//
//  FeatureAsyncImage.swift
//  SwiftUI3
//
//  Created by 유재호 on 2022/05/10.
//

import SwiftUI

struct FeatureAsyncImage: View {
    
    private let url = URL(string: "https://source.unsplash.com/random")
    
    var body: some View {
        // iOS 15.0+ AsyncImage 소개
        // URL 만 있으면, 비동기적으로 알아서 이미지를 다운로드 받아 보여주는 구조체
        // placeholder 또한 간편하게 만들 수 있음
        VStack {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFill() // safeArea 직전까지 차오른다
                    .ignoresSafeArea() // 이렇게 하면 safeArea 뚫고 나간다.
            } placeholder: {
                ProgressView("이미지 로딩 중")
                    // .font(.largeTitle) // 글자만 커지고 동그라미 자체는 안 커짐
                    .scaleEffect(2) // 스케일을 2배로 키우면 글자랑 같이 커진다.
            }
        }
    }
}

struct FeatureAsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        FeatureAsyncImage()
    }
}
