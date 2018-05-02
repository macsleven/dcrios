//
//  SendViewController.swift
//  Decred Wallet
//  Copyright © 2018 The Decred developers.
//  see LICENSE for details.

import UIKit

class SendViewController: UIViewController {
    
    @IBOutlet weak var accountDropdown: DropMenuButton!
    @IBOutlet weak var totalAmountSending: UILabel!
    @IBOutlet weak var estimateFee: UILabel!
    @IBOutlet weak var estimateSize: UILabel!
    @IBOutlet weak var walletAddress: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accountDropdown.initMenu(["Item A", "Item B", "Item C"], actions: [({ () -> (Void) in
            print("Estou fazendo a ação A")
        }), ({ () -> (Void) in
            print("Estou fazendo a ação B")
        }), ({ () -> (Void) in
            print("Estou fazendo a ação C")
        })])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNavigationBarItem()
         self.navigationItem.title = "Send"
    }
  
    @IBAction func accountDropdown(_ sender: Any) {
    }
}
