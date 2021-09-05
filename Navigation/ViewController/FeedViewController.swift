//
//  FeedViewController.swift
//  Navigation
//
//  Created by Павел Щеголихин on 05.08.2021.
//

import UIKit

class FeedViewController: UIViewController {

    struct Post {
        var title: String
    }
    var post = Post(title: "Post")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
        button.setTitle("Post", for: .normal)
        button.backgroundColor = .systemPink
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button)

    }
    
    @objc func tap(){
        let postVC = PostViewController()
        postVC.view.backgroundColor = .blue
        navigationController?.pushViewController(postVC, animated: true)
    }

}
