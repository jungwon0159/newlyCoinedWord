//
//  SearchViewController.swift
//  newlyCoinedWord
//
//  Created by 이중원 on 2022/07/08.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var inputButton: UIButton!
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var backgroundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    func designTextField(textField: UITextField) {
        textField.placeholder = "내용을 작성해주세요"
        textField.font = .systemFont(ofSize: 15)
        textField.textColor = UIColor.black
    }
    
    func designButton(button: UIButton, _ backgroundColor: UIColor) {
        button.backgroundColor = UIColor.clear
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = 7
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 3
    }
    
    func designImageView(imageView: UIImageView) {
        imageView.image = UIImage(named: "background")
    }
    
    func designLabel(label: UILabel) {
        label.textColor = UIColor.black
        label.font = .systemFont(ofSize: 30)
    }


}
