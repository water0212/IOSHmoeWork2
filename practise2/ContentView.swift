import SwiftUI

struct ContentView: View {
    @State private var appearance = 0
    private var selectedScheme: ColorScheme? {
        appearance == 0 ? nil : (appearance == 1 ? .light : .dark)
    }

    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 28) {
                    HeroView(imageName: "SekiroHero", title: "隻狼", subtitle: "SHADOWS DIE TWICE")
                    VStack(alignment: .leading, spacing: 28) {
                        HStack(spacing: 8) {
                            InfoBadge(symbol: "gamecontroller.fill", text: "動作冒險")
                            InfoBadge(symbol: "building.2.fill", text: "FromSoftware")
                        }
                        VStack(alignment: .leading, spacing: 12) {
                            SectionHeading(number: "01", title: "踏入葦名，成為獨臂之狼")
                            Text("在戰火蔓延的日本戰國末期，一名失去左臂的忍者，為了守護主人而再次拔刀。跟隨狼的腳步，在生與死之間，探索忠誠、復仇與不死的代價。")
                                .font(.body).lineSpacing(7).foregroundStyle(.secondary)
                        }
                        VStack(alignment: .leading, spacing: 14) {
                            SectionHeading(number: "02", title: "抉擇，每一次交鋒")
                            FeatureCard(symbol: "彈反", title: "架開・掌握節奏", subtitle: "猶豫就會敗北", detail: "抓準刀刃相接的瞬間架開攻擊，累積敵人的軀幹負荷，創造忍殺機會。戰鬥不只是等待敵人露出破綻，也要主動進攻，維持壓力。觀察動作、聆聽刀劍聲響，逐漸找到屬於自己的攻防節奏。")
                            FeatureCard(symbol: "義忍手", title: "忍義手・靈活的玩法", subtitle: "這是義忍手...是為了失去左臂的狼，所準備的獨門俐齒", detail: "運用手裏劍、噴火筒與其他忍具，依照敵人的特性選擇應對方式。忍具能幫助你打開局面，但資源有限；在合適的時機使用，了解敵方的弱點．")
                            FeatureCard(symbol: "回生", title: "回生・再一次的機會", subtitle: "你為了救我，死而重生了多少次...?", detail: "倒下不一定就是終點。把握僅有一次的重生機會，重新思考出手的時機。在敵人震驚的目光中起身，擺好架勢，再次攻向敵人吧！")
                        }
                        VStack(alignment: .leading, spacing: 14) {
                            SectionHeading(number: "03", title: "旅途中相遇的人們")
                            DetailRow(images:"狼",symbol: "person.fill", title: "狼｜守護誓言的忍者", detail: "故事的主角，失去了左手的忍者。沉默寡言的他，以手中的刀與直面仇敵，踏上了未知的道路。")
                            DetailRow(images:"九郎",symbol: "person.crop.circle", title: "九郎｜御子的心願", detail: "狼所守護的主人。他與不死之力的關係，推動了故事；兩人之間的信任，也在旅程中相互輝映。")
                            DetailRow(images:"佛雕",symbol: "hammer.fill", title: "佛雕師｜荒寺中的身影", detail: "在荒寺中與狼相遇的人物。忍義手讓狼獲得新的戰鬥方式，而這個看似安靜的落腳處，也成為冒險中的重要據點，屬於你的家。")
                        }
                        VStack(alignment: .leading, spacing: 14) {
                            SectionHeading(number: "04", title: "不只拔刀，也要觀察世界")
                            NormalDetailRow(symbol: "mountain.2.fill", title: "立體探索", detail: "利用鉤繩移動到高處，從屋頂與樹梢觀察環境。同一處場景，換個高度與角度，可能就會發現不同的前進路線。")
                            NormalDetailRow(symbol: "eye.fill", title: "潛行與忍殺", detail: "善用草叢、牆角和高低差接近敵人。直接正面迎戰之前，先觀察巡邏路線與敵人分布，跳過不必要的戰鬥。")
                            NormalDetailRow(symbol: "flame.fill", title: "鬼佛與休整", detail: "放下屠刀，立地成佛。在重新出發前整理狀態，提身自己的實力與物品，決定下一次要採取的策略。")
                        }
                        VStack(alignment: .leading, spacing: 14) {
                            SectionHeading(number: "05", title: "第一次踏入葦名的小提醒")
                            NormalDetailRow(symbol: "shield.lefthalf.filled", title: "先學會讀懂對手", detail: "初次遇到敵人，不必急著連續攻擊。先認識你的對手、攻擊間隔與收招空隙都是屬於敵人的自我介紹，熟悉之後再加入架開與反擊。")
                            NormalDetailRow(symbol: "exclamationmark.triangle.fill", title: "死亡並不可怕", detail: "隻狼給了你第二次復活的機會，冷靜看好對方的動作。別做出讓自己後悔的選擇")
                            NormalDetailRow(symbol: "arrow.clockwise", title: "把失敗變成線索", detail: "每次挑戰專注一件事：避開某個招式、掌握一段連擊，或找到安全的貪刀時機。累積小小的進步，強敵的招式與弱點也會慢慢浮出。")
                        }
                        VStack(alignment: .leading, spacing: 12) {
                            SectionHeading(number: "06", title: "值得親自踏上的旅程，了解旅途背後的故事")
                            Text("劍鋒碰撞的清脆聲響、步步逼近的強敵，以及擊破BOSS架勢的動畫演出，構成了隻狼最令人著迷的體驗。")
                                .lineSpacing(7).foregroundStyle(.secondary)
                            // 字串直接寫在 Text 中，SwiftUI 會解析 Markdown 連結。
                            Text("[探索《隻狼》官方網站 ↗](https://www.sekirothegame.com/)")
                                .font(.headline).tint(SekiroStyle.accent).padding(.top, 4)
                        }
                        Divider()
                        Text("SEKIRO / ABOUT THE GAME")
                            .font(.caption2.monospaced()).tracking(2).foregroundStyle(.secondary)
                    }.padding(.horizontal, 24).padding(.bottom, 32)
                }
                .frame(maxWidth: 680)
                .frame(maxWidth: .infinity)
            }
            .background(SekiroStyle.background)
            .navigationTitle("葦名紀行")
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Menu {
                        Picker("外觀", selection: $appearance) {
                            Text("跟隨系統").tag(0)
                            Text("一般模式").tag(1)
                            Text("深色模式").tag(2)
                        }
                    } label: {
                        Image(systemName: "circle.lefthalf.filled")
                            .foregroundStyle(SekiroStyle.accent)
                    }.accessibilityLabel("切換明暗模式")
                }
            }
        }
        .preferredColorScheme(selectedScheme)
    }
}

#Preview("一般模式") {
    ContentView().preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    ContentView().preferredColorScheme(.dark)
}
