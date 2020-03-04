//
//  MoreMenuItem.swift
//  Decred Wallet
//
//  Created by Suleiman Abubakar on 03/12/2019.
//  Copyright © 2019 Decred. All rights reserved.
//

import UIKit

enum MoreMenuItem: String, CaseIterable {
    case settings = "Settings"
    case security = "Security"
    case help = "Help"
    case about = "About"
    case debug = "Debug"
    
    // Each menu item's VC is wrapped in a navigation controller to enable the display of a navigation bar on each page,
    // and to allow each page perform VC navigations using `self.navigationController?.pushViewController`.
    var viewController: UIViewController {
        switch self {
        case .settings:
            return SettingsController.instantiate(from: .Settings)
            
        case .security:
            return SecurityToolsViewController.instantiate(from: .SecurityTools)
            
        case .help:
            return HelpTableViewController.instantiate(from: .Help)
            
        case .about:
            return AboutTableViewController.instantiate(from: .About)
            
        case.debug:
            return DebugTableViewController.instantiate(from: .Debug)
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .settings:
            return UIImage(named: "settings")
            
        case .security:
            return UIImage(named: "security_tools")
            
        case .help:
            return UIImage(named: "help")
            
        case .about:
            return UIImage(named: "info")
            
        case .debug:
            return UIImage(named: "debug")
        }
    }
    
    var displayTitle: String {
        return NSLocalizedString(self.rawValue.lowercased(), comment: "")
    }
}
