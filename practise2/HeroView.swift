import SwiftUI

// 透過 property 決定圖片及文字，同一個 View 可以重複使用。
struct HeroView: View {
    let imageName: String
    let title: String
    let subtitle: String

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            GeometryReader { proxy in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .clipped()
            }
            LinearGradient(colors: [.black.opacity(0.05), .black.opacity(0.85)],
                           startPoint: .top, endPoint: .bottom)
            VStack(alignment: .leading, spacing: 12) {
                Text("忍びの道、その先へ。")
                    .font(.caption).tracking(4)
                Text(title)
                    .font(.system(size: 66, weight: .black, design: .serif))
                    .tracking(10)
                    .accessibilityAddTraits(.isHeader)
                Text(subtitle)
                    .font(.caption.monospaced()).tracking(3)
                Rectangle().fill(SekiroStyle.accent).frame(width: 44, height: 3)
                Text("一柄刀，一個誓言，一段不肯放棄的旅程。")
                    .font(.subheadline).lineSpacing(4)
            }
            .foregroundStyle(.white)
            .padding(24)
            .shadow(color: .black.opacity(0.4), radius: 8, y: 2)
        }
        .frame(height: 390)
        .clipped()
        .accessibilityElement(children: .combine)
    }
}
