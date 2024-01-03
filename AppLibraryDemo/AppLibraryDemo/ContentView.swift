//
//  ContentView.swift
//  AppLibraryDemo
//
//  Created by 吕俊 on 2024/1/3.
//

import SwiftUI
import AppLibrary

struct ContentView: View {
    var body: some View {
        List {
            /// 引流区块
            Section {
                SettingAppItemCell(meta: .starorder)
                SettingAppItemCell(meta: .fasting)
                SettingAppItemCell(meta: .newworld)
                SettingAppItemCell(meta: .wallpaper)
            }
        }
        .navigationTitle("Setting")
    }
}

#Preview {
    ContentView()
}
