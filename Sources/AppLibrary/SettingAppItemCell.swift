//
//  SettingAppItemCell.swift
//  NewWorld
//
//  Created by 吕俊 on 2023/9/18.
//

import SwiftUI

enum SettingAppItemCellType {
    case starorder
    case fasting
    case newworld
}

extension SettingAppItemCellType {
    func icon() -> Image {
        switch self {
        case .starorder:
            return Image("sos_icon", bundle: .module)
        case .fasting:
            return Image("fasting_icon", bundle: .module)
        case .newworld:
            return Image("newworld_icon", bundle: .module)
        }
    }

    func title() -> String {
        switch self {
        case .starorder:
            return "Star Order"
        case .fasting:
            return "Fasting"
        case .newworld:
            return "New World"
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
        }
    }
}

struct SettingAppItemCell: View {
    var type: SettingAppItemCellType

    var body: some View {
        HStack(spacing: 15) {
            type.icon()
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(8.0)
                .shadow(color: Color(white: 0.0, opacity: 0.2), radius: 2)
            VStack(alignment: .leading) {
                Text(type.title())
                    .bold()
                Text(type.subtitle())
                    .font(.footnote)
                    .foregroundStyle(Color.gray)
            }
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    SettingAppItemCell(type: .newworld)
}
