//
//  UITextField.swift
//  Car Cards
//
//  Created by Adnan Bhatti on 27/10/2020.
//  Copyright © 2020 Shahid saeed. All rights reserved.
//

import Foundation
import UIKit

extension UITextField{
    
    func inputPhoneNumber(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        addPaddingToTextField(leftPoints: 50, rightPoints: 45)
    }
    func HostingAddTourTextFields(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        addPaddingToTextField(leftPoints: 10, rightPoints: 45)
    }
    func inputDeparturePoints(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
        addPaddingToTextField(leftPoints: 5, rightPoints: 0)
    }
    func inputChangePassword(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
        addPaddingToTextField(leftPoints: 5, rightPoints: 0)
    }
    func inputSearchh(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        addPaddingToTextField(leftPoints: 0, rightPoints: 5)
    }
    func inputPassword(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        addPaddingToTextField(leftPoints: 20, rightPoints: 45)
    }
    func inputPasword(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        addPaddingToTextField(leftPoints: 20, rightPoints: 45)
    }
    func inputFullName(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        addPaddingToTextField(leftPoints: 20, rightPoints: 45)
    }
    func inputEmailAddress(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        addPaddingToTextField(leftPoints: 20, rightPoints: 45)
    }
    func inputConfirmPassword(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        addPaddingToTextField(leftPoints: 20, rightPoints: 45)
    }
    func setupPrimaryTexFieldd(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        addPaddingToTextField(leftPoints: 25, rightPoints: 0)
    }
    func setupProfile(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        addPaddingToTextField(leftPoints: 10, rightPoints: 0)
    }
    func setupAddCity(placeholderText: String) {
         // self.layer.borderWidth = 1
          //self.layer.borderColor = UIColor.white.cgColor
          
          self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
          
          addPaddingToTextField(leftPoints: 20, rightPoints: 20)
      }
    func TypeMessage(placeholderText: String) {
       // self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.white.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        addPaddingToTextField(leftPoints: 5, rightPoints: 0)
    }
    
   
    func setupPrimaryTexFieldBlack(placeholderText: String) {
//        self.layer.borderWidth = 1
//        self.layer.borderColor = UIColor.black.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText,attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
        addPaddingToTextField(leftPoints: 0, rightPoints: 0)
    }
    
    
    func addPaddingToTextField(leftPoints: Int, rightPoints: Int)
    {
        let paddingView : UIView = UIView()
        paddingView.frame = CGRect(x:0, y:0, width:leftPoints , height: Int(self.frame.size.height))
        paddingView.backgroundColor = .clear
        self.leftView = paddingView
        self.rightView = paddingView
        self.leftViewMode = .always
        self.tintColor = UIColor.white
        self.returnKeyType = .next
        
        let rightPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: rightPoints, height: Int(self.frame.size.height)))
        rightPaddingView.backgroundColor = .clear
        self.rightView = rightPaddingView
        self.rightViewMode = .always
    }
    


func setInputViewDatePicker(target: Any, selector: Selector) {
        // Create a UIDatePicker object and assign to inputView
        let screenWidth = UIScreen.main.bounds.width
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 216))//1
        datePicker.datePickerMode = .date //2
        self.inputView = datePicker //3
        
        // Create a toolbar and assign it to inputAccessoryView
        let toolBar = UIToolbar(frame: CGRect(x: 0.0, y: 0.0, width: screenWidth, height: 44.0)) //4
        let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil) //5
        let cancel = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(tapCancel)) // 6
        let barButton = UIBarButtonItem(title: "Done", style: .plain, target: target, action: selector) //7
        toolBar.setItems([cancel, flexible, barButton], animated: false) //8
        self.inputAccessoryView = toolBar //9
    }
    
    @objc func tapCancel() {
        self.resignFirstResponder()
    }
    
}

