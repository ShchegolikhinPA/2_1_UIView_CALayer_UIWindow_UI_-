//
//  PostViewController.swift
//  Navigation
//
//  Created by Павел Щеголихин on 08.08.2021.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let postPVC = FeedViewController()
        self.title = postPVC.post.title
        
        let button = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(tap))
        self.navigationItem.rightBarButtonItem  = button
        
    }
    
    @objc func tap(){
        let infoVC = InfoViewController()
        //infoVC.view.backgroundColor = .red
        self.present(infoVC, animated: true, completion: nil)
    }
}
