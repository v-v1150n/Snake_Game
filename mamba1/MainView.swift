//
//  MainView.swift
//  mamba1
//
//  Created by v_v1150n on 2025/2/25.
//

//import Foundation
import SwiftUI

struct MainView: View {
    @AppStorage("lastScore") private var lastScore: Int = 0 // 儲存上一位挑戰者的分數

    var body: some View {
        NavigationStack {
            ZStack {
                // 設定背景圖片
                Image("snake_background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                VStack(spacing: 20) { // 調整 spacing，讓元素間距更自然
                    // 顯示上一位挑戰者的分數
                    VStack {
                        Text("Snake")
                            .font(.custom("HelveticaNeue-Bold", size: 48))
                            .foregroundColor(.white)
                            .padding(.top, 250)
                    }
                    VStack(content: {
                        Text("Previous Challenger's Score")
                            .font(.custom("HelveticaNeue-Bold", size: 18))
                            .foregroundColor(.white)
                            .padding(.top)

                        Text("\(lastScore)")
                            .font(.custom("HelveticaNeue-Bold", size: 30))

                            .foregroundColor(.white)
                    }
                           )
                    Spacer() // 讓按鈕保持在底部區域

                    // 進入遊戲按鈕
                    NavigationLink(destination: ContentView()) {
                        Text("START")
//                            .font(.title2)
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 180, height: 60)
                            .background(
                                        Capsule() // **使用圓角膠囊**
                                            .fill(Color.blue) // **背景顏色**
                                            .shadow(radius: 6) // **陰影**
                                    )
                            .shadow(radius: 10)
                    }
                    .padding(.bottom, 400)
                }
                .frame(maxHeight: .infinity, alignment: .center) // 讓 VStack 內容居中
            }
        }
    }
}

#Preview {
    MainView()
}
