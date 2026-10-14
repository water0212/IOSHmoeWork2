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
                            SectionHeading(number: "02", title: "每一次交鋒，都是抉擇")
                            FeatureCard(symbol: "shield.lefthalf.filled", title: "架開・掌握節奏", subtitle: "DEFLECTION", detail: "抓準刀刃相接的瞬間架開攻擊，累積敵人的軀幹負荷，創造忍殺機會。")
                            FeatureCard(symbol: "gearshape.fill", title: "忍義手・靈活應戰", subtitle: "PROSTHETIC TOOLS", detail: "運用手裏劍、噴火筒與其他忍具，依照敵人的特性選擇應對方式。")
                            FeatureCard(symbol: "arrow.uturn.backward", title: "回生・再次挑戰", subtitle: "RESURRECTION", detail: "倒下不一定就是終點。把握有限的回生機會，重新思考出手的時機。")
                        }
                        VStack(alignment: .leading, spacing: 12) {
                            SectionHeading(number: "03", title: "值得親自踏上的旅程")
                            Text("刀劍交鋒的清脆聲響、步步逼近的強敵，以及終於突破難關的瞬間，構成了隻狼最令人著迷的體驗。")
                                .lineSpacing(7).foregroundStyle(.secondary)
                            // 字串直接寫在 Text 中，SwiftUI 會解析 Markdown 連結。
                            Text("[探索《隻狼》官方網站 ↗](https://www.sekirothegame.com/)")
                                .font(.headline).tint(SekiroStyle.accent).padding(.top, 4)
                        }
                        Divider()
                        Text("SEKIRO / ABOUT THE GAME")
                            .font(.caption2.monospaced()).tracking(2).foregroundStyle(.secondary)
                        Text("SwiftUI 課堂練習・非官方介紹頁
遊戲名稱與宣傳圖片之權利歸原權利人所有。")
                            .font(.caption).foregroundStyle(.secondary).lineSpacing(4)
                    }.padding(.horizontal, 24).padding(.bottom, 32)
                }
                .frame(maxWidth: 680)
                .frame(maxWidth: .infinity)
            }
            .background(SekiroStyle.background)
            .navigationTitle("葦名紀行")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
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
