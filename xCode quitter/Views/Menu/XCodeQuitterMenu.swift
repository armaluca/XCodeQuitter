//
//  MainMenu.swift
//  xCode quitter
//
//  Created by DevPair6 on 03/05/2018.
//  Copyright © 2018 Stupid company. All rights reserved.
//

import Cocoa

class XCodeQuitterMenu: NSMenu {
    init() {
        super.init(title: Constants.title)
        let menuItem = NSMenuItem(title: Constants.Items.Quit.name, action: #selector(didSelectQuitItem), keyEquivalent: "")
        menuItem.target = self
        menuItem.isEnabled = true
        addItem(menuItem)
    }
    
    required init(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didSelectQuitItem() {
        NSApplication.shared.terminate(nil)
    }
}

extension XCodeQuitterMenu {
    struct Constants {
        static let title = "xCode Quitter"
        struct Items {
            struct Quit {
                static let name = "Quit"
            }
        }
    }
}
