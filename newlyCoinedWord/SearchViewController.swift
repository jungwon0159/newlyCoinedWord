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
        
        designTextField(textField: inputTextField)
        designButton(button: inputButton, UIColor.black)
        
        for button in buttonCollection {
            designButton(button: button, UIColor.clear)
        }
        
        designImageView(imageView: backgroundImageView, imageName: "background")
        designLabel(label: backgroundLabel)
        
    }
    
    func designTextField(textField: UITextField) {
        textField.placeholder = "내용을 입력해주세요"
        textField.font = .systemFont(ofSize: 15)
        textField.textColor = UIColor.black
    }
    
    func designButton(button: UIButton, _ backgroundColor: UIColor) {
        button.backgroundColor = UIColor.clear
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = 7
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1
    }
    
    func designImageView(imageView: UIImageView, imageName: String) {
        imageView.image = UIImage(named: imageName)
        
    }
    
    func designLabel(label: UILabel) {
        label.textColor = UIColor.black
        label.font = .systemFont(ofSize: 30)
    }


    @IBAction func tapGestureAction(_ sender: Any) {
        view.endEditing(true)
    }
}
