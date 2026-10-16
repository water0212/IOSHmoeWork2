# 隻狼 About 頁面 — SwiftUI 初版

## 放進 Xcode
1. 建立 iOS App 專案，Interface 選 SwiftUI、Language 選 Swift。Deployment Target 設定 iOS 17 或以上。
2. 使用本資料夾的 ContentView.swift 取代專案原本的同名檔案。
3. 將 HeroView.swift、Components.swift、SekiroStyle.swift 拖進專案，確認加入 App target。
4. 將 Assets.xcassets/SekiroHero.imageset 拖進專案現有的 Assets.xcassets。不要取代整個 Assets，保留 AppIcon 與 AccentColor。
5. 保留 Xcode 建立的 App 入口，確保 WindowGroup 中是 ContentView()，執行即可。

右上角的半黑半白圓形圖示可以選擇一般模式、深色模式或跟隨系統。頁面可以垂直捲動，底部文字連結會開啟官方網站。

## 作業要求對照
| 要求 | 實作 |
| --- | --- |
| VStack | 主頁與各段文字 |
| HStack | 標籤、玩法卡片 |
| ZStack | 主視覺圖片、漸層、文字疊加 |
| Text | 標題、介紹、Markdown 連結 |
| Image：asset | HeroView 的 Image(imageName)，使用 SekiroHero |
| Image：SF Symbol | gamecontroller.fill、shield.lefthalf.filled 等 |
| ScrollView | ContentView 的垂直 ScrollView |
| 多個 modifier | font、padding、background、overlay、frame、foregroundStyle 等 |
| 多檔案 View | ContentView、HeroView、Components |
| property 客製 View | FeatureCard 的 symbol/title/subtitle/detail，以及 HeroView 的三個 property |
| 一般與 Dark Mode | SekiroStyle 動態色、右上角選單、兩個 Preview |
| Text Markdown 連結 | 「探索《隻狼》官方網站」 |

## 用 C# 的角度理解
FeatureCard 的 let title: String 類似唯讀欄位；FeatureCard(symbol: ..., title: ..., subtitle: ..., detail: ...) 類似建立物件時傳入參數。Swift 會替這類 struct 自動產生 memberwise initializer，不用自己再寫建構子。@State 是 SwiftUI 管理的狀態，改變 appearance 後會更新畫面。

## 圖片與參考
宣傳圖片：https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/814380/library_hero.jpg
遊戲官網：https://www.sekirothegame.com/
SwiftUI：https://developer.apple.com/documentation/swiftui
本作品為非官方課堂練習。宣傳圖與遊戲名稱之權利歸原權利人所有，未取得再散布或商業授權。

## 驗證範圍
已檢查原始碼分檔、資產命名及作業項目對照。目前環境沒有 Xcode/iOS Simulator，尚未實際編譯或執行；請依上述步驟在 Xcode 執行。此包為 SwiftUI 原始碼與 Assets，不含 .xcodeproj。
