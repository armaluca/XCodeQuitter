//
//  AppDelegate.swift
//  xCode quitter
//
//  Created by DevPair6 on 02/05/2018.
//  Copyright © 2018 Stupid company. All rights reserved.
//

import Cocoa
import AppKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItemController: XCodeQuitterController!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItemController = XCodeQuitterController()
    }
}
