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
  case orbitring
  case orbitread
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
    case .orbitring:
      return Image("orbitring_icon", bundle: .module)
    case .orbitread:
      return Image("orbitread_icon", bundle: .module)
    }
  }

  private func isChinese() -> Bool {
    guard let languageCode = Locale.current.languageCode else {
      return false
    }
    return languageCode.hasPrefix("zh")
  }

  func title() -> String {
    let isZh = isChinese()
    switch self {
    case .starorder:
      return "Star Order"
    case .fasting:
      return "Fasting"
    case .newworld:
      return isZh ? "新词" : "NewWord"
    case .wallpaper:
      return "简明壁纸"
    case .orbitring:
      return "OrbitRing"
    case .orbitread:
      return "OrbitRead"
    }
  }

  func subtitle() -> String {
    let isZh = isChinese()
    switch self {
    case .starorder:
      return isZh ? "最佳 GitHub 星标管理工具。" : "Best GitHub star manager."
    case .fasting:
      return isZh ? "使用间歇性禁食，保持健康生活。" : "Live a healty life."
    case .newworld:
      return isZh ? "支持 30 + 语言的 AI 单词学习助手。" : "Your personal vocabulary book."
    case .wallpaper:
      return isZh ? "为您精选的 AI 生成壁纸。" : "Neat AICG wallpaper for you."
    case .orbitring:
      return isZh ? "像 FPS 游戏一样切换 Mac 应用。" : "Powerful macOS ring launcher."
    case .orbitread:
      return isZh ? "带 AI 总结的稍后阅读助手。" : "A smarter \"Read-It-Later\" assistant, powered by AI."
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
    case .orbitring:
      return "https://apps.apple.com/us/app/orbitring-launcher/id6740730747"
    case .orbitread:
      return "https://apps.apple.com/us/app/orbitring-launcher/id6740730747"
    }
  }
}
