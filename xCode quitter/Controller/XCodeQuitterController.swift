
//
//  StatusItemController.swift
//  xCode quitter
//
//  Created by DevPair6 on 03/05/2018.
//  Copyright © 2018 Stupid company. All rights reserved.
//

import Cocoa

class XCodeQuitterController: NSObject {

    // MARK: Properties
    private var statusView: RHStatusItemView?
    private let statusItem = NSStatusBar.system.statusItem(withLength: 24.0)
    
    // MARK: Init
    override init() {
        super.init()
        prepareStatusView()
        statusItem.view = statusView
    }
    
    private func prepareStatusView() {
        statusView = RHStatusItemView(statusBarItem: statusItem)
        statusView?.image = NSImage(named: Constants.iconName)
        statusView?.alternateImage = NSImage(named: Constants.iconName)
        statusView?.action = #selector(XCodeQuitterController.didClickStatusItem)
        statusView?.rightMenu = XCodeQuitterMenu()
        statusView?.target = self
    }
    
    @objc func didClickStatusItem() {
        guard let path = Bundle.main.path(forResource: Constants.Script.name, ofType: Constants.Script.type) else { return }
        let task = Process.launchedProcess(launchPath: Constants.Script.launchPath, arguments: [path])
        task.waitUntilExit()
    }
}

// MARK: - Constants
extension XCodeQuitterController {
    struct Constants {
        struct Script {
            static let name = "xCodeQuitterScript"
            static let launchPath = "/bin/bash"
            static let type = "command"
        }
        static let iconName = NSImage.Name(rawValue: "icon")
    }
}
