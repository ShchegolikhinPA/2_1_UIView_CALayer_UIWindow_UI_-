//
//  Profile1ViewController.swift
//  Navigation
//
//  Created by Павел Щеголихин on 02.09.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    let profileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        
        
        view.addSubview(profileHeaderView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.profileHeaderView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: self.view.frame.width, height: self.view.frame.height)
    }
    
}
    
