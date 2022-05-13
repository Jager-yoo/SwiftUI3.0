//
//  FeatureSwipeActions.swift
//  SwiftUI3
//
//  Created by 유재호 on 2022/05/10.
//

import SwiftUI

struct FeatureSwipeActions: View {
    
    @State private var numbers = Array(1...30)
    
    var body: some View {
        List(numbers, id: \.self) { number in
            HStack {
                Image(systemName: "flame")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("This row is \(number)")
            }
            // 리스트 내부에 설치
            // 디폴트는 우측(trailing)
            .swipeActions {
                // role(역할)을 destructive 로 하면 기본적으로 red 틴트 적용됨
                Button(role: .destructive) {
                    print("삭제됨!")
                } label: {
                    Image(systemName: "trash")
                }
                
                Button {
                    // 액션
                } label: {
                    Image(systemName: "leaf")
                }
                .tint(.green)
            }
            // edge 를 leading 으로 변경 가능
            // FullSwipe 는 기본적으로 켜져있고, 파라미터 통해 끌 수 있음
            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                Button(role: .destructive) {
                    print("삭제됨")
                } label: {
                    Image(systemName: "trash")
                }

                Button {
                    print("어쩌구")
                } label: {
                    Image(systemName: "pin")
                }
                .tint(.yellow)
            }
            // 리스트에 적용하는 게 아니라, 내부에 수정자 적용하는 점 주의!
            .listRowSeparatorTint(.mint) // iOS 15.0+
            // .listRowSeparator(.hidden) // iOS 15.0+
        }
        .listStyle(.insetGrouped)
    }
}

struct FeatureSwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        FeatureSwipeActions()
    }
}
