//
//  WelcomeViewController.swift
//  AnonymousPost
//
//  Created by 村尾慶伸 on 2020/04/30.
//  Copyright © 2020 村尾慶伸. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {  
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }


}
