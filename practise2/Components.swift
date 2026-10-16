import SwiftUI

struct SectionHeading: View {
    let number: String
    let title: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("CHAPTER / " + number)
                .font(.caption2.monospaced()).tracking(2).foregroundStyle(SekiroStyle.accent)
            Text(title).font(.title3.bold()).accessibilityAddTraits(.isHeader)
        }
    }
}

struct InfoBadge: View {
    let symbol: String
    let text: String
    var body: some View {
        HStack(spacing: 5) {
            Image(systemName: symbol)
            Text(text)
        }
        .font(.caption.weight(.medium))
        .foregroundStyle(SekiroStyle.accent)
        .padding(.horizontal, 10).padding(.vertical, 8)
        .background(SekiroStyle.accent.opacity(0.1), in: Capsule())
    }
}

// imageHeight 可在建立卡片時客製化，圖片不會超出圓角框。
struct FeatureCard: View {
    let symbol: String
    let title: String
    let subtitle: String
    let detail: String
    var imageHeight: CGFloat = 190

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(symbol)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: imageHeight)
                .background(Color.black.opacity(0.08))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .accessibilityLabel(title + "示意圖")
            VStack(alignment: .leading, spacing: 8) {
                Text(subtitle)
                    .font(.system(size: 10, weight: .semibold, design: .monospaced))
                    .tracking(1.5).foregroundStyle(.secondary)
                Text(title).font(.headline)
                Text(detail).font(.subheadline).lineSpacing(5).foregroundStyle(.secondary)
            }
        }
        .padding(18)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(SekiroStyle.surface, in: RoundedRectangle(cornerRadius: 18))
        .overlay {
            RoundedRectangle(cornerRadius: 18)
                .strokeBorder(SekiroStyle.accent.opacity(0.13))
        }
    }
}

struct DetailRow: View {
    var images: String = ""
    let symbol: String
    let title: String
    let detail: String
    let imageHeight: CGFloat = 130
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Image(images)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: imageHeight)
                .background(Color.black.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            HStack(alignment: .top, spacing: 12) {
                Image(systemName: symbol)
                    .font(.title3)
                    .foregroundStyle(SekiroStyle.accent)
                    .frame(width: 28)
                    .accessibilityHidden(true)
                VStack(alignment: .leading, spacing: 6) {
                    Text(title).font(.headline)
                    Text(detail).font(.subheadline)
                        .foregroundStyle(.secondary).lineSpacing(5)
                }
            }
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(SekiroStyle.surface, in: RoundedRectangle(cornerRadius: 14))
    }
}
struct NormalDetailRow: View {
    var images: String = ""
    let symbol: String
    let title: String
    let detail: String
    let imageHeight: CGFloat = 130
    var body: some View {
            HStack(alignment: .top, spacing: 12) {
                Image(systemName: symbol)
                    .font(.title3)
                    .foregroundStyle(SekiroStyle.accent)
                    .frame(width: 28)
                    .accessibilityHidden(true)
                VStack(alignment: .leading, spacing: 6) {
                    Text(title).font(.headline)
                    Text(detail).font(.subheadline)
                        .foregroundStyle(.secondary).lineSpacing(5)
            }
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(SekiroStyle.surface, in: RoundedRectangle(cornerRadius: 14))
    }
}
