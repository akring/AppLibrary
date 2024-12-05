//
//  AppMetaData.swift
//
//
//  Created by 吕俊 on 2023/9/19.
//

import SwiftUI

public enum AppMetaData {
    case starorder
    case fasting
    case newworld
    case wallpaper
}

public extension AppMetaData {
    func icon() -> Image {
        switch self {
        case .starorder:
            return Image("sos_icon", bundle: .module)
        case .fasting:
            return Image("fasting_icon", bundle: .module)
        case .newworld:
            return Image("newworld_icon", bundle: .module)
        case .wallpaper:
            return Image("wallpaper_icon", bundle: .module)
        }
    }

    func title() -> String {
        switch self {
        case .starorder:
            return "Star Order"
        case .fasting:
            return "Fasting"
        case .newworld:
            return "新词"
        case .wallpaper:
            return "简明壁纸"
        }
    }

    func subtitle() -> String {
        switch self {
        case .starorder:
            return "Best GitHub star manager."
        case .fasting:
            return "Live a healty life."
        case .newworld:
            return "Your personal vocabulary book."
        case .wallpaper:
            return "Neat AICG wallpaper for you."
        }
    }

    func storeURL() -> String {
        switch self {
        case .starorder:
            return "https://apps.apple.com/us/app/star-order-github-star-%E7%AE%A1%E7%90%86%E5%B7%A5%E5%85%B7/id1073829178"
        case .fasting:
            return "https://apps.apple.com/us/app/fasting-diet-and-healthy/id1672477216"
        case .newworld:
            return "https://apps.apple.com/us/app/%E6%96%B0%E8%AF%8D/id6457202781"
        case .wallpaper:
            return "https://apps.apple.com/us/app/%E7%AE%80%E6%98%8E%E5%A3%81%E7%BA%B8/id1204724975"
        }
    }
}
