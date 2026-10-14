import SwiftUI
import UIKit

// 動態色會隨一般 / Dark Mode 自動切換。
enum SekiroStyle {
    static let accent = Color(uiColor: UIColor { traits in
        traits.userInterfaceStyle == .dark
            ? UIColor(red: 0.94, green: 0.43, blue: 0.33, alpha: 1)
            : UIColor(red: 0.62, green: 0.18, blue: 0.14, alpha: 1)
    })
    static let background = Color(uiColor: UIColor { traits in
        traits.userInterfaceStyle == .dark
            ? UIColor(red: 0.07, green: 0.07, blue: 0.07, alpha: 1)
            : UIColor(red: 0.96, green: 0.94, blue: 0.90, alpha: 1)
    })
    static let surface = Color(uiColor: UIColor { traits in
        traits.userInterfaceStyle == .dark
            ? UIColor(red: 0.12, green: 0.12, blue: 0.12, alpha: 1)
            : UIColor(red: 1, green: 0.99, blue: 0.97, alpha: 1)
    })
}
