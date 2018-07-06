//
//  DCInputField.swift
//  DCInputs
//
//  Created by Vincent Berihuete on 7/6/18.
//  Copyright 2018 devcore. All rights reserved
//

import UIKit

public class DCInputField: UIStackView {

    let textField = UITextField()
    let label = UILabel()
    let borderView = UIView()
    
    
    //MARK: - configuration
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    init(label: String = "DC Input"){
        super.init(frame: CGRect(x: 0, y: 0, width: 1, height: 40))
        self.label.text = label
        self.textField.placeholder = label
        setupViews()
    }
    
    public required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    /// setup views
    func setupViews(){
        self.axis = .vertical
        self.alignment = .fill
        self.distribution = .fill
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.label.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        self.label.font = UIFont.systemFont(ofSize: 12)
        self.label.isHidden = true
        
        self.textField.delegate = self
        self.textField.backgroundColor = UIColor.lightGray.withAlphaComponent(0.03)
        self.textField.borderStyle = .roundedRect
        
        self.textField.addTarget(self, action: #selector(self.textFieldTyping(_:)), for: .editingChanged)
        
        self.addConstraint(NSLayoutConstraint(item: self.textField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 40))
        
        self.addArrangedSubview(label)
        self.addArrangedSubview(textField)
    }
}

//MARK: - textfield delegate

extension DCInputField: UITextFieldDelegate{
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textField.endEditing(true)
        return true;
    }
    
    @objc public func textFieldTyping(_ sender: UITextField){
        if !label.isHidden && sender.text?.isEmpty == true{
            UIView.animate(withDuration: 0.2){
                self.label.isHidden = true
            }
        }else if label.isHidden && sender.text?.isEmpty == false{
            UIView.animate(withDuration: 0.2){
                self.label.isHidden = false
            }
        }
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text?.isEmpty == true{
            UIView.animate(withDuration: 0.2){
                self.label.isHidden = true
            }
        }
    }
    
    
}
