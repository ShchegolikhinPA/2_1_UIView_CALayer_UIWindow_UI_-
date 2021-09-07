//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Павел Щеголихин on 02.09.2021.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let avatar = UIImageView()
    let label = UILabel()
    let textFild = UITextField()
    let button = UIButton()
    let newTextFild = UITextField()
    
    var text = String()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(avatar)
        avatar.frame = CGRect(x: 16, y: 16, width: 100, height: 100)
        let av = UIImage(named: "kot.png")
        avatar.image = av
        avatar.layer.cornerRadius = avatar.frame.size.height/2
        avatar.clipsToBounds = true
        avatar.layer.borderWidth = 3
        avatar.layer.borderColor = UIColor.white.cgColor
        
        self.addSubview(label)
        label.frame = CGRect(x: self.avatar.frame.maxX + 16, y: 27 , width: 300, height: 18)
        label.text = "Hipster Cat"
        
        self.addSubview(button)
        button.backgroundColor = .blue
        button.frame = CGRect(x: 16, y: self.avatar.frame.maxY + 32, width: UIScreen.main.bounds.width - 32, height: 50)
        button.setTitle("Set status", for: .normal)
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.7
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        self.addSubview(textFild)
        textFild.frame = CGRect(x: self.avatar.frame.maxX + 16, y: self.button.frame.minY - 92, width: 300, height: 20)
        textFild.minimumFontSize = 14
        // textFild.text = "Waiting for something..."
        textFild.textColor = .gray
        textFild.placeholder = "Waiting for something..."
        
        self.addSubview(newTextFild)
        newTextFild.backgroundColor = .white
        newTextFild.frame = CGRect(x: self.avatar.frame.maxX + 16, y: self.button.frame.minY - 56, width: UIScreen.main.bounds.width - 32 - 16 - avatar.frame.height, height: 40)
        newTextFild.minimumFontSize = 15
        newTextFild.layer.cornerRadius = 12
        newTextFild.layer.borderWidth = 1
        newTextFild.layer.borderColor = UIColor.blue.cgColor
        
        let spacerView = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        newTextFild.leftViewMode = UITextField.ViewMode.always
        newTextFild.leftView = spacerView
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    func buttonPressed() {
        if let newText = newTextFild.text {
            text = newText
            textFild.text = text
        }
    }
}

