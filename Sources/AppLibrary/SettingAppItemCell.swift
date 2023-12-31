//
//  SettingAppItemCell.swift
//  NewWorld
//
//  Created by 吕俊 on 2023/9/18.
//

import SwiftUI

public struct SettingAppItemCell: View {
    
    @Environment(\.openURL) var openURL
    
    public var meta: AppMetaData

    public init(meta: AppMetaData) {
        self.meta = meta
    }
    
    public var body: some View {
        HStack(spacing: 15) {
            meta.icon()
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(8.0)
                .shadow(color: Color(white: 0.0, opacity: 0.2), radius: 2)
            VStack(alignment: .leading) {
                Text(meta.title())
                    .bold()
                Text(meta.subtitle())
                    .font(.footnote)
                    .foregroundStyle(Color.gray)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .contentShape(Rectangle())
        .onTapGesture {
            openURL(URL(string: meta.storeURL())!)
        }
    }
}

#Preview {
    List {
        Section {
            SettingAppItemCell(meta: .starorder)
            SettingAppItemCell(meta: .fasting)
            SettingAppItemCell(meta: .newworld)
        }
    }
}
