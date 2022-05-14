//
//  SwiftUI3App.swift
//  SwiftUI3
//
//  Created by 유재호 on 2022/05/10.
//

import SwiftUI

@main
struct SwiftUI3App: App {
    
    var body: some Scene {
        WindowGroup {
            let _ = print("예스") // View 프로토콜 준수해야 하는 곳에서, print문 같은 expressions(표현식) 삽입하는 법
            FeatureAsyncImage()
        }
    }
}
