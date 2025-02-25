//
//  ContentView.swift
//  mamba1
//
//  Created by v_v1150n on 2025/2/25.
//

//import SwiftUI
//
//// 方向枚舉
//enum Direction {
//    case up, down, left, right
//}
//
//struct ContentView: View {
//    // 遊戲變數
//    @State private var snake = [CGPoint(x: 100, y: 100)] // 貪吃蛇身體座標
//    @State private var food = CGPoint(x: 200, y: 200) // 食物座標
//    @State private var direction: Direction = .right // 初始方向
//    @State private var isGameOver = false // 遊戲結束狀態
//    @State private var score = 0 // 分數
//    @State private var timer: Timer? // 計時器
//
//    let gridSize: CGFloat = 20 // 貪吃蛇移動的步長
//
//    var body: some View {
//        VStack {
//            // 顯示分數
//            Text("Score: \(score)")
//                .font(.title)
//                .padding()
//
//            // 遊戲畫面
//            ZStack {
//                // 遊戲背景
//                Rectangle()
//                    .fill(Color.black)
//                    .frame(width: 300, height: 400)
//
//                // 食物
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: gridSize, height: gridSize)
//                    .position(food)
//
//                // 貪吃蛇
//
//                ForEach(snake.indices, id: \.self) { index in
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: gridSize, height: gridSize)
//                        .position(snake[index])
//                }
//
//
//
//                // 遊戲結束畫面
//                if isGameOver {
//                    VStack {
//                        Text("Game Over!")
//                            .font(.largeTitle)
//                            .foregroundColor(.white)
//                            .padding()
//                        Button("Restart") {
//                            restartGame()
//                        }
//                        .font(.title)
//                        .padding()
//                        .background(Color.white)
//                        .cornerRadius(10)
//                    }
//                }
//            }
//            .frame(width: 300, height: 400)
//            .gesture(
//                DragGesture()
//                    .onEnded { value in
//                        changeDirection(value: value)
//                    }
//            )
//        }
//        .onAppear {
//            startGame()
//        }
//    }
//
//    // 啟動遊戲
//    func startGame() {
//        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { _ in
//            moveSnake()
//        }
//    }
//
//    // 移動貪吃蛇
//    func moveSnake() {
//        var newHead = snake.first!
//
//        switch direction {
//        case .up:
//            newHead.y -= gridSize
//        case .down:
//            newHead.y += gridSize
//        case .left:
//            newHead.x -= gridSize
//        case .right:
//            newHead.x += gridSize
//        }
//
//        // 檢查是否撞到邊界或自己
//        if newHead.x < 0 || newHead.x > 300 || newHead.y < 0 || newHead.y > 400 || snake.contains(newHead) {
//            isGameOver = true
//            timer?.invalidate()
//            return
//        }
//
//        // 更新蛇的位置
//        snake.insert(newHead, at: 0)
//
//        // 如果吃到食物
//        if newHead == food {
//            score += 10
//            spawnFood()
//        } else {
//            snake.removeLast() // 沒有吃到食物就移除尾巴
//        }
//    }
//
//    // 產生新的食物
//    func spawnFood() {
//        let cols = Int(300 / gridSize)
//        let rows = Int(400 / gridSize)
//        food = CGPoint(
//            x: CGFloat(Int.random(in: 0..<cols)) * gridSize,
//            y: CGFloat(Int.random(in: 0..<rows)) * gridSize
//        )
//    }
//
//    // 變更方向
//    func changeDirection(value: DragGesture.Value) {
//        let horizontalAmount = value.translation.width
//        let verticalAmount = value.translation.height
//
//        if abs(horizontalAmount) > abs(verticalAmount) {
//            if horizontalAmount > 0 {
//                direction = .right
//            } else {
//                direction = .left
//            }
//        } else {
//            if verticalAmount > 0 {
//                direction = .down
//            } else {
//                direction = .up
//            }
//        }
//    }
//
//    // 遊戲重新開始
//    func restartGame() {
//        snake = [CGPoint(x: 100, y: 100)]
//        food = CGPoint(x: 200, y: 200)
//        direction = .right
//        score = 0
//        isGameOver = false
//        startGame()
//    }
//}
//
//#Preview {
//    ContentView()
//}

//
//import SwiftUI
//
//// 方向枚舉
//enum Direction {
//    case up, down, left, right
//}
//
//struct ContentView: View {
//    // 遊戲變數
//    @State private var snake = [CGPoint(x: 100, y: 100)] // 貪吃蛇身體座標
//    @State private var food = CGPoint(x: 200, y: 200) // 食物座標
//    @State private var direction: Direction = .right // 初始方向
//    @State private var isGameOver = false // 遊戲結束狀態
//    @State private var score = 0 // 分數
//    @State private var timer: Timer? // 計時器
//
//    let gridSize: CGFloat = 20 // 貪吃蛇移動的步長
//
//    var body: some View {
//        VStack {
//            // 顯示分數
//            Text("Score: \(score)")
//                .font(.title)
//                .padding()
//
//            // 遊戲畫面
//            ZStack {
//                // 遊戲背景
//                Rectangle()
//                    .fill(Color.black)
//                    .frame(width: 300, height: 400)
//
//                // 食物
////                Circle()
////                    .fill(Color.red)
////                    .frame(width: gridSize, height: gridSize)
////                    .position(food)
//                Image(systemName: "applelogo")
//                                 .resizable()
//                                 .scaledToFit()
//                                 .frame(width: gridSize, height: gridSize)
//                                 .foregroundColor(.red)
//                                 .position(food)
//
//                // 貪吃蛇
////                ForEach(snake.indices, id: \.self) { index in
////                    Rectangle()
////                        .fill(Color.green)
////                        .frame(width: gridSize, height: gridSize)
////                        .position(snake[index])
////                        .animation(.easeInOut(duration: 0.15), value: snake) // 加入動畫讓移動更滑順
////                }
//                ForEach(snake.indices, id: \.self) { index in
//                                    if index == 0 {
//                                        // **蛇的頭**
//                                        Circle()
//                                            .fill(Color.green)
//                                            .frame(width: gridSize, height: gridSize)
//                                            .overlay(Circle().stroke(Color.white, lineWidth: 1)) // 白色外框
//                                            .shadow(radius: 3) // 增加陰影
//                                            .position(snake[index])
//                                    } else {
//                                        // **蛇的身體**
//                                        RoundedRectangle(cornerRadius: 5)
//                                            .fill(Color.green.opacity(0.8))
//                                            .frame(width: gridSize, height: gridSize)
//                                            .position(snake[index])
//                                    }
//                                }
//
//                // 遊戲結束畫面
//                if isGameOver {
//                    VStack {
//                        Text("Game Over!")
//                            .font(.largeTitle)
//                            .foregroundColor(.white)
//                            .padding()
//                        Button("Restart") {
//                            restartGame()
//                        }
//                        .font(.title)
//                        .padding()
//                        .background(Color.white)
//                        .cornerRadius(10)
//                    }
//                }
//            }
//            .frame(width: 300, height: 400)
//            .gesture(
//                DragGesture()
//                    .onEnded { value in
//                        changeDirection(value: value)
//                    }
//            )
//        }
//        .onAppear {
//            startGame()
//        }
//    }
//
//    // 啟動遊戲
//    func startGame() {
//        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { _ in
//            moveSnake()
//        }
//    }
//
//    // 移動貪吃蛇
//    func moveSnake() {
//        var newHead = snake.first!
//
//        switch direction {
//        case .up:
//            newHead.y -= gridSize
//        case .down:
//            newHead.y += gridSize
//        case .left:
//            newHead.x -= gridSize
//        case .right:
//            newHead.x += gridSize
//        }
//
//        // 檢查是否撞到邊界或自己
//        if newHead.x < 0 || newHead.x > 300 || newHead.y < 0 || newHead.y > 400 || snake.contains(newHead) {
//            isGameOver = true
//            timer?.invalidate()
//            SoundManager.shared.playSound(named: "gameover") // 播放遊戲結束音效
//            return
//        }
//
//        // 更新蛇的位置
//        withAnimation(.easeInOut(duration: 0.10)) { // 讓移動更滑順
//            snake.insert(newHead, at: 0)
//        }
//
//        // 如果吃到食物
//        if newHead == food {
//            SoundManager.shared.playSound(named: "eat") // 播放吃食物音效
//            score += 10
//            spawnFood()
//        } else {
//            snake.removeLast() // 沒有吃到食物就移除尾巴
//        }
//    }
//
//    // 產生新的食物
//    func spawnFood() {
//        let cols = Int(300 / gridSize)
//        let rows = Int(400 / gridSize)
//        food = CGPoint(
//            x: CGFloat(Int.random(in: 0..<cols)) * gridSize,
//            y: CGFloat(Int.random(in: 0..<rows)) * gridSize
//        )
//    }
//
//    // 變更方向
//    func changeDirection(value: DragGesture.Value) {
//        let horizontalAmount = value.translation.width
//        let verticalAmount = value.translation.height
//
//        if abs(horizontalAmount) > abs(verticalAmount) {
//            if horizontalAmount > 0 {
//                direction = .right
//            } else {
//                direction = .left
//            }
//        } else {
//            if verticalAmount > 0 {
//                direction = .down
//            } else {
//                direction = .up
//            }
//        }
//    }
//
//    // 遊戲重新開始
//    func restartGame() {
//        snake = [CGPoint(x: 100, y: 100)]
//        food = CGPoint(x: 200, y: 200)
//        direction = .right
//        score = 0
//        isGameOver = false
//        startGame()
//    }
//}
//
//#Preview {
//    ContentView()
//}
//
//import SwiftUI
//
//// 方向枚舉
//enum Direction {
//    case up, down, left, right
//}
//
//struct ContentView: View {
//    @AppStorage("lastScore") private var lastScore: Int = 0 // 儲存上一位挑戰者的分數
//    @Environment(\.presentationMode) var presentationMode // 讓遊戲結束時返回主頁
//
//    // 遊戲變數
//    @State private var snake = [CGPoint(x: 100, y: 100)]
//    @State private var food = CGPoint(x: 200, y: 200)
//    @State private var direction: Direction = .right
//    @State private var isGameOver = false
//    @State private var score = 0
//    @State private var timer: Timer?
//
//    let gridSize: CGFloat = 20
//
//    var body: some View {
//        VStack {
//            Text("Score: \(score)")
//                .font(.title)
//                .padding()
//
//            ZStack {
//                Rectangle()
//                    .fill(Color.black)
//                    .frame(width: 300, height: 400)
//
//                // 食物
//                Image(systemName: "applelogo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: gridSize, height: gridSize)
//                    .foregroundColor(.red)
//                    .position(food)
//
//                // 貪吃蛇
//                ForEach(snake.indices, id: \.self) { index in
//                    if index == 0 {
//                        Circle()
//                            .fill(Color.green)
//                            .frame(width: gridSize, height: gridSize)
//                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
//                            .shadow(radius: 3)
//                            .position(snake[index])
//                    } else {
//                        RoundedRectangle(cornerRadius: 5)
//                            .fill(Color.green.opacity(0.8))
//                            .frame(width: gridSize, height: gridSize)
//                            .position(snake[index])
//                    }
//                }
//
//                // 遊戲結束畫面
//                if isGameOver {
//                    VStack {
//                        Text("Game Over!")
//                            .font(.largeTitle)
//                            .foregroundColor(.white)
//                            .padding()
//
//                        Text("Your score: \(score)")
//                            .font(.title)
//                            .foregroundColor(.yellow)
//
//                        Button("Back to Home") {
//                            lastScore = score // 儲存分數
//                            presentationMode.wrappedValue.dismiss() // 返回主頁
//                        }
//                        .font(.title)
//                        .padding()
//                        .background(Color.white)
//                        .cornerRadius(10)
//                    }
//                }
//            }
//            .frame(width: 300, height: 400)
//            .gesture(
//                DragGesture()
//                    .onEnded { value in
//                        changeDirection(value: value)
//                    }
//            )
//        }
//        .onAppear {
//            startGame()
//        }
//    }
//
//    // 啟動遊戲
//    func startGame() {
//        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { _ in
//            moveSnake()
//        }
//    }
//
//    // 移動貪吃蛇
//    func moveSnake() {
//        var newHead = snake.first!
//
//        switch direction {
//        case .up:
//            newHead.y -= gridSize
//        case .down:
//            newHead.y += gridSize
//        case .left:
//            newHead.x -= gridSize
//        case .right:
//            newHead.x += gridSize
//        }
//
//        if newHead.x < 0 || newHead.x > 300 || newHead.y < 0 || newHead.y > 400 || snake.contains(newHead) {
//            isGameOver = true
//            timer?.invalidate()
//            SoundManager.shared.playSound(named: "gameover")
//            return
//        }
//
//        withAnimation(.easeInOut(duration: 0.10)) {
//            snake.insert(newHead, at: 0)
//        }
//
//        if newHead == food {
//            SoundManager.shared.playSound(named: "eat")
//            score += 10
//            spawnFood()
//        } else {
//            snake.removeLast()
//        }
//    }
//
//    // 產生新的食物
//    func spawnFood() {
//        let cols = Int(300 / gridSize)
//        let rows = Int(400 / gridSize)
//        food = CGPoint(
//            x: CGFloat(Int.random(in: 0..<cols)) * gridSize,
//            y: CGFloat(Int.random(in: 0..<rows)) * gridSize
//        )
//    }
//
//    // 變更方向
//    func changeDirection(value: DragGesture.Value) {
//        let horizontalAmount = value.translation.width
//        let verticalAmount = value.translation.height
//
//        if abs(horizontalAmount) > abs(verticalAmount) {
//            if horizontalAmount > 0 {
//                direction = .right
//            } else {
//                direction = .left
//            }
//        } else {
//            if verticalAmount > 0 {
//                direction = .down
//            } else {
//                direction = .up
//            }
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
//
//
//import SwiftUI
//
//// 方向枚舉
//enum Direction {
//    case up, down, left, right
//}
//
//struct ContentView: View {
//    @AppStorage("lastScore") private var lastScore: Int = 0 // 儲存上一位挑戰者的分數
//    @Environment(\.presentationMode) var presentationMode // 讓遊戲結束時返回主頁
//    
//    // 遊戲變數
//    @State private var snake = [CGPoint(x: 80, y: 80)]
//    @State private var food = CGPoint(x: 160, y: 160)
//    @State private var direction: Direction = .right
//    @State private var isGameOver = false
//    @State private var score = 0
//    @State private var timer: Timer?
//    
//    let gridSize: CGFloat = 10  // **縮小步長，讓蛇更精細**
//    
//    var body: some View {
//        ZStack {
//            // **背景圖片（Nokia 手機）**
//            Image("snake_background")
//                .resizable()
//                .scaledToFill()  // **確保填滿整個畫面**
//                .ignoresSafeArea() // **確保不受安全區域影響**
//                .scaleEffect(1.2)  // **放大 1.2 倍**
//                .offset(x: 1.5) // **向右偏移 30 像素，根據需求調整**
//            VStack {
//                Spacer()
//                
//                // **遊戲畫面**
//                
//                ZStack {
//                    Rectangle()
//                            .fill(Color.black.opacity(0.7))
//                            .frame(width: 340, height: 250)
//                            .opacity(0.85)
//                            .gesture(
//                                DragGesture()
//                                    .onEnded { value in
//                                        changeDirection(value: value)
//                                    }
//                            )
//                    
//                    // **食物**
//                    Image(systemName: "circle.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: gridSize, height: gridSize)
//                        .foregroundColor(.red)
//                        .position(food)
//                    
//                    // **貪吃蛇**
//                    ForEach(snake.indices, id: \.self) { index in
//                        Rectangle()
//                            .fill(index == 0 ? Color.green : Color.green.opacity(0.8))
//                            .frame(width: gridSize, height: gridSize)
//                            .position(snake[index])
//                    }
//                    
//                    // **遊戲結束畫面**
//                    
//                    if isGameOver {
//                        VStack {
//                            Text("Game Over!")
//                                .font(.largeTitle)
//                                .foregroundColor(.white)
//                                .padding()
//                            
//                            Text("Your score: \(score)")
//                                .font(.title)
//                                .foregroundColor(.green)
//                            
//                            Button("Back to Home") {
//                                lastScore = score // 儲存分數
//                                presentationMode.wrappedValue.dismiss() // 返回主頁
//                            }
//                            .font(.title)
//                            .padding()
//                            .background(Color.white)
//                            .cornerRadius(10)
//                        }
//                        .frame(width: 250, height: 220)
//                        .background(Color.black.opacity(0.9)) // 讓 Game Over 畫面更清楚
//                        .cornerRadius(10)
//                    }
//                }
//                .frame(width: 340, height: 250) // 遊戲區域大小 **符合白色區域**
//                .offset(y: -543) // **精確對齊 Nokia 3310 的螢幕**
//            }
//        }
//                  
//        .onAppear {
//            startGame()
//        }
//    }
//    
//    // **遊戲邏輯**
//    func startGame() {
//        timer = Timer.scheduledTimer(withTimeInterval: 0.12, repeats: true) { _ in
//            moveSnake()
//        }
//    }
//    func moveSnake() {
//        var newHead = snake.first!
//        
//        switch direction {
//        case .up:
//            newHead.y -= gridSize
//        case .down:
//            newHead.y += gridSize
//        case .left:
//            newHead.x -= gridSize
//        case .right:
//            newHead.x += gridSize
//        }
//        
//        // **修正邊界範圍**
//        if newHead.x < 5 || newHead.x > 335 || newHead.y < 5 || newHead.y > 235 {
//            isGameOver = true
//            timer?.invalidate()
//            SoundManager.shared.playSound(named: "gameover") // **修正音效**
//            return
//        }
//        
//        // **修正碰撞檢查：將 CGPoint 轉為 Int 來比較**
//        if snake.contains(where: { Int($0.x) == Int(newHead.x) && Int($0.y) == Int(newHead.y) }) {
//            isGameOver = true
//            timer?.invalidate()
//            SoundManager.shared.playSound(named: "gameover")
//            return
//        }
//        
//        // **讓蛇移動**
//        withAnimation(.easeInOut(duration: 0.10)) {
//            snake.insert(newHead, at: 0)
//        }
//        
//        // **檢查是否吃到食物**
//        if Int(newHead.x) == Int(food.x) && Int(newHead.y) == Int(food.y) {
//            SoundManager.shared.playSound(named: "eat")
//            score += 10
//            spawnFood()
//        } else {
//            snake.removeLast()
//        }
//    }
//    
//    func spawnFood() {
//        let cols = Int(330 / gridSize)
//        let rows = Int(240 / gridSize)
//        food = CGPoint(
//            x: CGFloat(Int.random(in: 1..<cols)) * gridSize,
//            y: CGFloat(Int.random(in: 1..<rows)) * gridSize
//        )
//    }
//    
//    func changeDirection(value: DragGesture.Value) {
//        let horizontalAmount = value.translation.width
//        let verticalAmount = value.translation.height
//        
//        if abs(horizontalAmount) > abs(verticalAmount) {
//            // **水平方向拖曳**
//            if horizontalAmount > 20, direction != .left {
//                direction = .right
//            } else if horizontalAmount < -20, direction != .right {
//                direction = .left
//            }
//        } else {
//            // **垂直方向拖曳**
//            if verticalAmount > 20, direction != .up {
//                direction = .down
//            } else if verticalAmount < -20, direction != .down {
//                direction = .up
//            }
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}


import SwiftUI

// 方向枚舉
enum Direction {
    case up, down, left, right
}

struct ContentView: View {
    @AppStorage("lastScore") private var lastScore: Int = 0 // 儲存上一位挑戰者的分數
    @Environment(\.presentationMode) var presentationMode // 讓遊戲結束時返回主頁
    
    // 遊戲變數
    @State private var snake = [CGPoint(x: 80, y: 80)]
    @State private var food = CGPoint(x: 160, y: 160)
    @State private var direction: Direction = .right
    @State private var isGameOver = false
    @State private var score = 0
    @State private var timer: Timer?
    
    let gridSize: CGFloat = 10  // **縮小步長，讓蛇更精細**
    
    var body: some View {
        ZStack {
            // **背景圖片（Nokia 手機）**
            Image("snake_background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .scaleEffect(1.2)
                .offset(x: 1.5)
            
            VStack {
                Spacer()
                
                // **遊戲畫面**
                ZStack {
                    Rectangle()
                        .fill(Color.black.opacity(0.7))
                        .frame(width: 340, height: 250)
                        .opacity(0.85)
                        .gesture(
                            DragGesture()
                                .onEnded { value in
                                    changeDirection(value: value)
                                }
                        )
                    
                    // **食物**
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: gridSize, height: gridSize)
                        .foregroundColor(.red)
                        .position(food)
                    
                    // **貪吃蛇**
                    ForEach(snake.indices, id: \.self) { index in
                        Rectangle()
                            .fill(index == 0 ? Color.green : Color.green.opacity(0.8))
                            .frame(width: gridSize, height: gridSize)
                            .position(snake[index])
                    }
                    
                    // **遊戲結束畫面**
                    if isGameOver {
                        VStack {
                            Text("Game Over!")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding()
                            
                            Text("Your score: \(score)")
                                .font(.title)
                                .foregroundColor(.green)

                            // **重新開始按鈕**
                            
                            // **返回主畫面按鈕**
                            Button("Back to Home") {
                                lastScore = score
                                presentationMode.wrappedValue.dismiss()
                            }
                            .font(.title)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                            
                            Button("Restart") {
                                    restartGame()
                                }
                                .font(.title)
                                .padding()
                                .frame(width: 180, height: 50)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .shadow(radius: 4)
                        }
                        .frame(width: 250, height: 270)
                        .background(Color.black.opacity(0.9))
                        .cornerRadius(10)
                    }
                }
                .frame(width: 340, height: 250)
                .offset(y: -543)
            }
        }
        .onAppear {
            startGame()
        }
    }

    // **遊戲邏輯**
    func startGame() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.12, repeats: true) { _ in
            moveSnake()
        }
    }

    func restartGame() {
        snake = [CGPoint(x: 80, y: 80)] // **重置蛇的位置**
        food = CGPoint(x: 160, y: 160)  // **重新放置食物**
        direction = .right              // **預設方向**
        score = 0                        // **分數歸零**
        isGameOver = false               // **關閉 Game Over 畫面**
        
        startGame()  // **重新啟動遊戲計時器**
    }

    func moveSnake() {
        var newHead = snake.first!
        
        switch direction {
        case .up:
            newHead.y -= gridSize
        case .down:
            newHead.y += gridSize
        case .left:
            newHead.x -= gridSize
        case .right:
            newHead.x += gridSize
        }
        
        // **修正邊界範圍**
        if newHead.x < 5 || newHead.x > 335 || newHead.y < 5 || newHead.y > 235 {
            isGameOver = true
            timer?.invalidate()
            SoundManager.shared.playSound(named: "gameover")
            return
        }
        
        // **修正碰撞檢查：將 CGPoint 轉為 Int 來比較**
        if snake.contains(where: { Int($0.x) == Int(newHead.x) && Int($0.y) == Int(newHead.y) }) {
            isGameOver = true
            timer?.invalidate()
            SoundManager.shared.playSound(named: "gameover")
            return
        }
        
        // **讓蛇移動**
        withAnimation(.easeInOut(duration: 0.10)) {
            snake.insert(newHead, at: 0)
        }
        
        // **檢查是否吃到食物**
        if Int(newHead.x) == Int(food.x) && Int(newHead.y) == Int(food.y) {
            SoundManager.shared.playSound(named: "eat")
            score += 10
            spawnFood()
        } else {
            snake.removeLast()
        }
    }
    
    func spawnFood() {
        let cols = Int(330 / gridSize)
        let rows = Int(240 / gridSize)
        food = CGPoint(
            x: CGFloat(Int.random(in: 1..<cols)) * gridSize,
            y: CGFloat(Int.random(in: 1..<rows)) * gridSize
        )
    }

    func changeDirection(value: DragGesture.Value) {
        let horizontalAmount = value.translation.width
        let verticalAmount = value.translation.height
        
        if abs(horizontalAmount) > abs(verticalAmount) {
            // **水平方向拖曳**
            if horizontalAmount > 20, direction != .left {
                direction = .right
            } else if horizontalAmount < -20, direction != .right {
                direction = .left
            }
        } else {
            // **垂直方向拖曳**
            if verticalAmount > 20, direction != .up {
                direction = .down
            } else if verticalAmount < -20, direction != .down {
                direction = .up
            }
        }
    }
}

#Preview {
    ContentView()
}

